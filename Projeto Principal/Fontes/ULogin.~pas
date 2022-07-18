unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB;

type
  TFLogin = class(TForm)
    P1: TPanel;
    P2: TPanel;
    BTConfirmar: TBitBtn;
    BTCancelar: TBitBtn;
    lkUsuario: TDBLookupComboBox;
    Label1: TLabel;
    edSenha: TEdit;
    Label2: TLabel;
    dsUsuarios: TDataSource;
    procedure BTCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BTConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

uses UDM;

{$R *.dfm}

procedure TFLogin.BTCancelarClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then
      Application.Terminate;

  if KEY=VK_RETURN then
  Perform(WM_NEXTDLGCTL, 0,0); 

end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
   //fechar e carregar os usuarios no bd
   dm.csdUsuarios.Close;
   dm.csdUsuarios.Open;
end;

procedure TFLogin.BTConfirmarClick(Sender: TObject);
begin
 if
   lkUsuario.Text ='' then
    begin
      ShowMessage('usuario vazio');
      lkUsuario.SetFocus;
      exit;
    end;

 // SE A SENHA Q O USUÁRIO DIGITOU FOR IGUAL A DO BD FECHE A TELA DE LOGIN
    if edSenha.Text =dm.csdUsuariosSENHA.AsString then
    //TEXTO DIGITADO    // PASSANDO SENHA DO BD PARA STRING
    begin
    dm.vLogin := True;
    //ENVIANDO A VARIAVEL vLOGIN
    close;
    end
    else
    ShowMessage('SENHA INVALIDA');

end;

end.
