unit UCadFPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  TFcadFPgto = class(TForm)
    P1: TPanel;
    P2: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    Label1: TLabel;
    dsFpgamento: TDataSource;
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
  FcadFPgto: TFcadFPgto;

implementation

uses UDM;

{$R *.dfm}

procedure TFcadFPgto.btCancelarClick(Sender: TObject);
begin
   dm.cdsFpgpo.Cancel;
   Close;
end;

procedure TFcadFPgto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      btCancelar.Click;
end;

procedure TFcadFPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.cdsFpgpo.State in [dsInsert, dsEdit] then
     dm.cdsFpgpo.Cancel;
end;

procedure TFcadFPgto.btSalvarClick(Sender: TObject);
begin
 if
   edDescricao.Text ='' then
    begin
      ShowMessage('INFORME  A DECRIÇÃO ');
      edDescricao.SetFocus;
      exit;
    end;

    if dm.cdsFpgpo.State = dsInsert then

    begin
        dm.QryGenIdFpgto.Close;
        dm.QryGenIdFpgto.Open;
        dm.cdsFpgpoID_PGTO.AsInteger := dm.QryGenIdFpgtoGEN_ID.AsInteger;
    end;

    dm.cdsFpgpo.Post;
    dm.cdsFpgpo.ApplyUpdates(0);
    ShowMessage('informações armazenadas com sucesso');
    Close;
end;

end.
