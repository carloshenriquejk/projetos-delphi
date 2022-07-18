unit UCadPaises;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  TFCadPaises = class(TForm)
    P1: TPanel;
    P2: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    Label1: TLabel;
    dsPais: TDataSource;
    edDescricao: TDBEdit;
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
  FCadPaises: TFCadPaises;

implementation

uses UDM;

{$R *.dfm}

procedure TFCadPaises.btCancelarClick(Sender: TObject);
begin
   dm.cdsPais.Cancel;
   Close;
end;

procedure TFCadPaises.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      btCancelar.Click;
end;

procedure TFCadPaises.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.cdsPais.State in [dsInsert, dsEdit] then
     dm.cdsPais.Cancel;
end;

procedure TFCadPaises.btSalvarClick(Sender: TObject);
begin
 if
   edDescricao.Text ='' then
    begin
      ShowMessage('INFORME  A DECRIÇÃO ');
      edDescricao.SetFocus;
      exit;
    end;

    if dm.cdsPais.State = dsInsert then

    begin
        dm.QryGenIdPais.Close;
        dm.QryGenIdPais.Open;
        dm.cdsPaisID_PAISES.AsInteger := dm.QryGenIdPaisGEN_ID.AsInteger;
    end;

    dm.cdsPais.Post;
    dm.cdsPais.ApplyUpdates(0);
    ShowMessage('informações armazenadas com sucesso');
    Close;
end;

end.
