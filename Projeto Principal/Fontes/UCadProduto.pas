unit UCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls;

type
  TFCadProduto = class(TForm)
    P1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edNome: TDBEdit;
    P2: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    dsProdutos: TDataSource;
    cbTipo: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edValor: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbFornecedor: TLabel;
    lkfornecedor: TDBLookupComboBox;
    dsPessoas: TDataSource;
    edQtd: TDBEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadProduto: TFCadProduto;

implementation

uses UDM;

{$R *.dfm}

procedure TFCadProduto.btSalvarClick(Sender: TObject);
begin

   if edNome.Text ='' then
     begin
      ShowMessage('INFORME O NOME DO PRODUTO!');
      edNome.SetFocus;
      exit;
     end;

    if edQtd.Text ='' then
    begin
      ShowMessage('INFORME A QUANTIDADE EM ESTOQUE!');
      edQtd.SetFocus;
      exit;
    end;

    if dm.csdProdutosVALOR.AsFloat= 0 then
    begin
      ShowMessage('INFORME O VAOR DO PRODUTO!');
      edValor.SetFocus;
      exit;
    end;
   if cbTipo.ItemIndex <> 1 then
    if lkfornecedor.Text ='' then
    begin
       ShowMessage('informe o fornecedor');
       lkfornecedor.SetFocus;
       Exit;
    end;

    if dm.csdProdutos.State = dsInsert then
    begin
        dm.QryGenIdProduto.Close;
        dm.QryGenIdProduto.Open;
        dm.csdProdutosID_PRODUTO.AsInteger := dm.QryGenIdProdutoGEN_ID.AsInteger;
    end;


    case cbTipo.ItemIndex of
    0: dm.csdProdutosTIPO.AsString := 'C';
    1: dm.csdProdutosTIPO.AsString := 'V';
    2: dm.csdProdutosTIPO.AsString := 'T';
    end;
    // se não so vai modificar sem q gere um novo ID
    dm.csdProdutos.Post;
    dm.csdProdutos.ApplyUpdates(0);
    ShowMessage('informações armazenadas com sucesso');
    Close;
end;

procedure TFCadProduto.cbTipoClick(Sender: TObject);
begin
  if(cbTipo.ItemIndex= 0) or (cbTipo.ItemIndex= 2) then
  begin
       lbFornecedor.Enabled  := True;
       lkfornecedor.Enabled  := True;
       lkfornecedor.Color    := clInfoBk;
   end
   else
   begin
       lbFornecedor.Enabled  := False;
       lkfornecedor.Enabled  := False;
       lkfornecedor.Color := clSilver;
   end;
 end;

procedure TFCadProduto.btCancelarClick(Sender: TObject);
begin
   dm.csdProdutos.Cancel;
   Close
end;

procedure TFCadProduto.FormCreate(Sender: TObject);
begin
   if dm.csdProdutosTIPO.AsString ='C' then
   cbTipo.ItemIndex :=0;

   if dm.csdProdutosTIPO.AsString ='V' then
   cbTipo.ItemIndex :=1;

   if dm.csdProdutosTIPO.AsString ='T' then
   cbTipo.ItemIndex :=2;

   dm.csdPessoas.Close;
   dm.csdPessoas.Params.ParamByName('TIPO').AsString := 'F';
   dm.csdPessoas.Params.ParamByName('NOME').AsString := '%';
   dm.csdPessoas.Open;

   cbTipoClick(Sender);
   end;
procedure TFCadProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then
      btCancelar.Click;
end;

end.
