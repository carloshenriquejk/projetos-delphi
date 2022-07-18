unit UCadMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, StdCtrls, ComCtrls, Grids, DBGrids, Buttons,
  ExtCtrls;

type
  TFCadMovimento = class(TForm)
    P1: TPanel;
    P3: TPanel;
    P2: TPanel;
    btCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    DBGrid1: TDBGrid;
    btExcluir: TBitBtn;
    btAlterar: TBitBtn;
    btAdicionar: TBitBtn;
    eddata: TDateTimePicker;
    Label1: TLabel;
    lbPessoa: TLabel;
    btTabela: TBitBtn;
    dsPessoas: TDataSource;
    lkPessoa: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbTotal: TDBText;
    dsFpgto: TDataSource;
    dsTransporte: TDataSource;
    dsCitens: TDataSource;
    lkFpgto: TDBLookupComboBox;
    lkTransporte: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btTabelaClick(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadMovimento: TFCadMovimento;

implementation

uses UDM, UPessoas, UItem, StrUtils;

{$R *.dfm}

procedure TFCadMovimento.FormCreate(Sender: TObject);
begin

  dm.csdPessoas.Close;

  if   dm.cdsConsMovimento.Params[2].AsString= 'C' then
    begin
      Self.Caption := 'COMPRA';
      lbPessoa.Caption := 'Fornecedor';
      dm.csdPessoas.Params.ParamByName('TIPO').AsString := 'F';
    end
     else
    begin
      Self.Caption := 'VENDA';
      lbPessoa.Caption := 'Cliente';
      dm.csdPessoas.Params.ParamByName('TIPO').AsString := 'C';
    end;
      dm.csdPessoas.Params.ParamByName('NOME').AsString:='%';
      dm.csdPessoas.Open;

    if not dm.cdsFpgpo.Active then
    begin
    dm.cdsFpgpo.Close;
    dm.cdsFpgpo.Open;
    end;

    if not dm.cdsTransporte.Active then
    begin
    dm.cdsTransporte.Close;
    dm.cdsTransporte.Open;
    end;


end;

procedure TFCadMovimento.btTabelaClick(Sender: TObject);
begin
 dm.createFormulario(TFPessoas, FPessoas);
end;

procedure TFCadMovimento.btAdicionarClick(Sender: TObject);
begin
  if lkPessoa.Text ='' then
  begin
  ShowMessage('INFRME O FORNECEDOR');
  lkPessoa.SetFocus;
  Exit;
 end;
  dm.CItens.Append;
  dm.createFormulario(TFTitem,FTitem);
end;

procedure TFCadMovimento.btnSalvarClick(Sender: TObject);
begin

  if lkFpgto.Text = '' then
    begin
      ShowMessage('INFORME A FORMA DE PAGAMENTO');
      lkFpgto.SetFocus;
    end;

  if lkPessoa.Text = '' then
    begin
      ShowMessage('INFORME A PESSOA DO MOVIMENTO');
      lkPessoa.SetFocus;
    end;

  if lkTransporte.Text = '' then
    begin
      ShowMessage('INFORME O MEIO DE TRANSPORTE');
      lkTransporte.SetFocus;
    end;

  if dm.cdsMovimento.State = dsInsert then
   begin
    dm.QryGenIdCMovimento.Close;
    dm.QryGenIdCMovimento.Open;
    dm.cdsMovimentoID_MOVIMENTO.AsInteger := dm.QryGenIdCMovimentoGEN_ID.AsInteger;
   end;

   dm.cdsMovimentoTIPO.AsString             :=IfThen(Self.Caption ='COMPRA', 'C', 'V');
   dm.cdsMovimentoDATA.AsDateTime           := eddata.Date;
   dm.cdsMovimentoTOTAL.AsFloat             := dm.CItensSoma.Value;
  // dm.cdsMovimentoID_PGTO.AsInteger         := dm.cdsFpgpoID_PGTO.AsInteger;
 //  dm.cdsMovimentoID_TRANSPORTE.AsInteger   := dm.cdsTransporteID_TRASPORTE.AsInteger;
   dm.cdsMovimento.Post;
   dm.cdsMovimento.ApplyUpdates(0);

   dm.CItens.First;
   while not dm.CItens.Eof do
     begin
      dm.cdsItens.Close;
      dm.cdsItens.Params[0].AsInteger :=  dm.CItensID_ITENS.AsInteger;
      dm.cdsItens.Open;
      if dm.cdsItens.IsEmpty then
      begin
        dm.cdsItens.Append;
        dm.QryGenIdItem.Close;
        dm.QryGenIdItem.Open;
        dm.cdsItensID_ITENS.AsInteger := dm.QryGenIdItemGEN_ID.AsInteger;
      end
      else
        dm.cdsItens.Edit;

        dm.cdsItensID_MOVIMENTO.AsInteger := dm.cdsMovimentoID_MOVIMENTO.AsInteger;
        dm.cdsItensID_PRODUTO.AsInteger   := dm.cdsItensID_PRODUTO.AsInteger;
        dm.cdsItensQUANTIDADE.AsInteger   := dm.cdsItensQUANTIDADE.AsInteger;
        dm.cdsItensVALOR.AsFloat          := dm.cdsItensVALOR.AsFloat;
        dm.cdsItensTOTAL.AsFloat          := dm.cdsItensTOTAL.AsFloat;

        dm.cdsItens.Post;
        dm.cdsItens.ApplyUpdates(0);
        dm.CItens.Next;
     end;
     ShowMessage('infoemações armazenadas com sucesso');
     Close;
end;

end.
