unit UPaises;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFPaises = class(TForm)
    P1: TPanel;
    Label1: TLabel;
    edLocalizar: TEdit;
    P2: TPanel;
    btIncluir: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    dsPais: TDataSource;
    G1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure edLocalizarChange(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPaises: TFPaises;

implementation

uses UDM, UCadPaises;

{$R *.dfm}

procedure TFPaises.FormCreate(Sender: TObject);
begin
  dm.cdsPais.Close;
  dm.cdsPais.Open;
end;

procedure TFPaises.edLocalizarChange(Sender: TObject);
begin
    if edLocalizar.Text <>'' then
    dm.cdsPais.Locate('NOME', edLocalizar.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TFPaises.btIncluirClick(Sender: TObject);
begin
  self.Visible := False;
  dm.cdsPais.Append;
  dm.createFormulario(TFCadPaises, FPaises);
  self.Visible := True;
end;

procedure TFPaises.btAlterarClick(Sender: TObject);
begin
 if not dm.cdsPais.IsEmpty then
  begin
    self.Visible := False;
    dm.cdsPais.Edit; //editar
    dm.createFormulario(TFCadPaises, FCadPaises);
    self.Visible := True;
  end;
end;

procedure TFPaises.btExcluirClick(Sender: TObject);
begin
 if not dm.cdsPais.IsEmpty then
  begin
     if MessageDlg('deseja excluir esse usuarío ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
       begin
          dm.cdsPais.Delete;
          dm.cdsPais.ApplyUpdates(0);
          ShowMessage('pais excluído com sucesso');
       end;
     end;
end;

end.
