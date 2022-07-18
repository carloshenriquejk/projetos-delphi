unit UUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, ExtCtrls, DB, StdCtrls, Buttons;

type
  TFUsuarios = class(TForm)
    P1: TPanel;
    P2: TPanel;
    G1: TDBGrid;
    edLocalizar: TEdit;
    Label1: TLabel;
    btIncluir: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    dsPessoas: TDataSource;
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btIncluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure G1DblClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;

implementation

uses UDM, UCadUsuario;

{$R *.dfm}

procedure TFUsuarios.Sair1Click(Sender: TObject);
begin
   Application.Terminate
end;

procedure TFUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      close;
end;

procedure TFUsuarios.btIncluirClick(Sender: TObject);
begin
//SELF SE DIRECIONA A PAGINA ATUAL
  self.Visible := False;
  dm.csdUsuarios.Append; //acresentar
  dm.csdUsuariosMASTER.AsString :='S';  // esta passando o valor de master para verdadeiro
  dm.createFormulario(TFcadUsuario, FcadUsuario);
  self.Visible := True;
end;

procedure TFUsuarios.btAlterarClick(Sender: TObject);
begin
 if not dm.csdUsuarios.IsEmpty then
  begin
    self.Visible := False;
    dm.csdUsuarios.Edit; //editar
    dm.createFormulario(TFcadUsuario, FcadUsuario);
    self.Visible := True;
  end;
end;

procedure TFUsuarios.G1DblClick(Sender: TObject);
begin
   btAlterar.Click;
end;

procedure TFUsuarios.btExcluirClick(Sender: TObject);
 begin
 if not dm.csdUsuarios.IsEmpty then
  begin
     if MessageDlg('deseja excluir esse usuarío ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
       begin
          dm.csdUsuarios.Delete;
          dm.csdUsuarios.ApplyUpdates(0);
          ShowMessage('usuário excluído com sucesso');
       end;
     end;
  end;
 procedure TFUsuarios.edLocalizarChange(Sender: TObject);
begin
  if edLocalizar.Text <>'' then
    dm.csdUsuarios.Locate('LOGIN', edLocalizar.Text, [loPartialKey, loCaseInsensitive]);

end;

end.
