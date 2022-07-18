unit UItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr;

type
  TFTitem = class(TForm)
    P2: TPanel;
    btSalvar: TBitBtn;
    btCancalar: TBitBtn;
    P1: TPanel;
    Label1: TLabel;
    edCodigo: TEdit;
    Label2: TLabel;
    edDescricao: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edQuamtidade: TEdit;
    Label6: TLabel;
    edTotal: TEdit;
    Label7: TLabel;
    btTabela: TBitBtn;
    edValor: TEdit;
    qryCodigo: TSQLQuery;
    qryCodigoID_PRODUTO: TIntegerField;
    qryCodigoNOME: TStringField;
    qryCodigoQUANTIDADE: TIntegerField;
    qryCodigoID_PESSOA: TIntegerField;
    qryCodigoVALOR: TFMTBCDField;
    qryCodigoTIPO: TStringField;
    procedure edCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edQuamtidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edQuamtidadeChange(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancalarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btTabelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTitem: TFTitem;

implementation

uses UDM, UProdutos;

{$R *.dfm}

procedure TFTitem.edCodigoKeyPress(Sender: TObject; var Key: Char);

begin
  if not (Key in ['0'..'9',#8,#13]) then
    key := #0;
  if Key =#13 then
     begin
       qryCodigo.Close;
       qryCodigo.Params[0].AsInteger := StrToInt(edCodigo.Text);
  if dm.cdsConsMovimento.Params[2].AsString= 'C' then
        qryCodigo.Params[1].AsInteger := dm.csdPessoasID_PESSOA.AsInteger
  else
        qryCodigo.Params[1].AsInteger := -1;
       qryCodigo.Open;
     if not qryCodigo.IsEmpty then
      begin
        edDescricao.Text  := qryCodigoNOME.AsString;
        edValor.Text      := FloatToStrF(qryCodigoVALOR.AsFloat,ffNumber, 7,2);
       end;
   end;
end;


procedure TFTitem.edQuamtidadeKeyPress(Sender: TObject; var Key: Char);
  begin
     if not (Key in ['0'..'9',#8,#13]) then
      key := #0;
    end;

 procedure TFTitem.edQuamtidadeChange(Sender: TObject);
 begin

  if edQuamtidade.Text <>''  then
   //somar o total 0 valor vezes a quantidade
      edTotal.Text := FloatToStrF(StrToFloat(edValor.Text)*StrToInt(edQuamtidade.Text),ffNumber,7,2);
  end;

procedure TFTitem.btSalvarClick(Sender: TObject);
begin

  if edCodigo.Text ='' then
     begin
       ShowMessage('CODIGO DO PRODUTO N�O INFORMADO');
       edCodigo.SetFocus;
       Exit;
     end;

  if edDescricao.Text ='' then
     begin
       ShowMessage('CODIGO DO PRODUTO N�O INFORMADO');
       edDescricao.SetFocus;
       Exit;
     end;

  if edTotal.Text ='0,00' then
     begin
       ShowMessage('DESCRI��O DO PRODUTO N�O INFORMADO');
       edTotal.SetFocus;
       Exit;
     end;

   if edValor.Text ='0' then
     begin
       ShowMessage('VALOR DO PRODUTO N�O INFORMADO');
       edValor.SetFocus;
       Exit;
     end;

   if edQuamtidade.Text ='0' then
     begin
       ShowMessage('QUANTIDADE DO PRODUTO N�O INFORMADO');
       edQuamtidade.SetFocus;
       Exit;
     end;

   if dm.CItens.State= dsInsert then
     begin
       dm.QryGenIdItem.Close;
       dm.QryGenIdItem.Open;
       dm.CItensID_ITENS.AsInteger := dm.QryGenIdItemGEN_ID.AsInteger;
     end;

       dm.CItensID_PRODUTO.AsInteger  := StrToInt(edCodigo.Text);
       dm.CItensQUANTIDADE.AsInteger  := StrToInt(edQuamtidade.Text);
       dm.CItensVALOR.AsFloat         := StrToFloat(edValor.Text);
       dm.CItensTOTAL.AsFloat         := StrToFloat(edTotal.Text);
       dm.CItensDESCRICAO.AsString    := edDescricao.Text;
       dm.CItens.Post;
       Close;
end;

procedure TFTitem.btCancalarClick(Sender: TObject);
begin
  dm.CItens.Cancel;
  Close;
end;

procedure TFTitem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dm.CItens.State in [dsInsert, dsEdit] then
  dm.CItens.Cancel;
end;

procedure TFTitem.btTabelaClick(Sender: TObject);
begin
  dm.createFormulario(TFProdutos, FProdutos);
  edCodigo.Text := dm.csdProdutosID_PRODUTO.AsString;
  edCodigo.SetFocus;
end;

end.
