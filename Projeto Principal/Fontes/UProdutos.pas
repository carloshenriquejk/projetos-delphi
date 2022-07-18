unit UProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFProdutos = class(TForm)
    P1: TPanel;
    Label1: TLabel;
    edLocalizar: TEdit;
    P2: TPanel;
    btIncluir: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    G1: TDBGrid;
    DSProdutos: TDataSource;
    lkFpgto: TDBLookupComboBox;
    dsFpgto: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edLocalizarChange(Sender: TObject);
    procedure G1DblClick(Sender: TObject);
    procedure G1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

uses UDM, UCadProduto;

{$R *.dfm}

procedure TFProdutos.FormCreate(Sender: TObject);
begin
  dm.csdProdutos.Close;
  dm.csdProdutos.Open
end;

procedure TFProdutos.btIncluirClick(Sender: TObject);
begin
  self.Visible := False;
  dm.csdProdutos.Append; //adicionar
  dm.csdProdutosQUANTIDADE.AsInteger := 0;
  dm.csdProdutosVALOR.AsFloat := 0;
  dm.csdProdutosTIPO.AsString := 'T';
  dm.createFormulario(TFCadProduto, FCadProduto);
  self.Visible := True;
end;

procedure TFProdutos.btAlterarClick(Sender: TObject);
begin
 if not dm.csdProdutos.IsEmpty then
  begin
    self.Visible := False;
    dm.csdProdutos.Edit; //editar
    dm.createFormulario(TFCadProduto, FCadProduto);
    self.Visible := True;
  end;
end;

procedure TFProdutos.btExcluirClick(Sender: TObject);
begin
if not dm.csdProdutos.IsEmpty then
  begin
     if MessageDlg('deseja excluir esse produto ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
       begin
          dm.csdProdutos.Delete;
          dm.csdProdutos.ApplyUpdates(0);
          ShowMessage('produto exclu�do com sucesso');
       end;
     end;
end;

procedure TFProdutos.edLocalizarChange(Sender: TObject);
begin
    if edLocalizar.Text <>'' then
    dm.csdProdutos.Locate('NOME', edLocalizar.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TFProdutos.G1DblClick(Sender: TObject);
begin
  btAlterar.Click;
end;

procedure TFProdutos.G1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      Close;
end;

end.