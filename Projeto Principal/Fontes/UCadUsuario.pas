unit UCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  TFcadUsuario = class(TForm)
    P1: TPanel;
    P2: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    edLogin: TDBEdit;
    ckMaster: TDBCheckBox;
    edSenha: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsUsuarios: TDataSource;
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FcadUsuario: TFcadUsuario;

implementation

uses UDM;

{$R *.dfm}

procedure TFcadUsuario.btCancelarClick(Sender: TObject);
begin
   dm.csdUsuarios.Cancel;
   Close
end;

procedure TFcadUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      btCancelar.Click;
end;

procedure TFcadUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.csdUsuarios.State in [dsInsert, dsEdit] then
     dm.csdUsuarios.Cancel;
end;

procedure TFcadUsuario.btSalvarClick(Sender: TObject);
begin
 if
   edLogin.Text ='' then
    begin
      ShowMessage('INFORME O SEU LOGIN!');
      edLogin.SetFocus;
      exit;
    end;
     if
   edSenha.Text ='' then
    begin
      ShowMessage('INFORME A SUA SENHA!');
      edSenha.SetFocus;
      exit;

    end;
         if
   edLogin.Text ='' then
    begin
      ShowMessage('INFORME A SUA SENHA!');
      edLogin.SetFocus;
      exit;

    end;

    //explicação aula 10 52:30
    if dm.csdUsuarios.State = dsInsert then
     //so vai salvar se estiver inserindo
    begin
        dm.QryGenIdUsuario.Close;
        dm.QryGenIdUsuario.Open;
        dm.csdUsuariosID_USUARIO.AsInteger := dm.QryGenIdUsuarioGEN_ID.AsInteger;
    end;
    // se não so vai modificar sem q gere um novo ID
    dm.csdUsuarios.Post;
    dm.csdUsuarios.ApplyUpdates(0);
    ShowMessage('informações armazenadas com sucesso');
    Close;
end;

end.
