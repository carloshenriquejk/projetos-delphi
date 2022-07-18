unit UCadMeiosTransportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  TFCadMeiosTransporte = class(TForm)
    P1: TPanel;
    P2: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    Label1: TLabel;
    dsTransporte: TDataSource;
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
  FCadMeiosTransporte: TFCadMeiosTransporte;

implementation

uses UDM;

{$R *.dfm}

procedure TFCadMeiosTransporte.btCancelarClick(Sender: TObject);
begin
   dm.cdsTransporte.Cancel;
   Close;
end;

procedure TFCadMeiosTransporte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      btCancelar.Click;
end;

procedure TFCadMeiosTransporte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.cdsTransporte.State in [dsInsert, dsEdit] then
     dm.cdsTransporte.Cancel;
end;

procedure TFCadMeiosTransporte.btSalvarClick(Sender: TObject);
begin
 if
   edDescricao.Text ='' then
    begin
      ShowMessage('INFORME  A DECRI��O ');
      edDescricao.SetFocus;
      exit;
    end;

    if dm.cdsTransporte.State = dsInsert then

    begin
        dm.QryGenIdTransporte.Close;
        dm.QryGenIdTransporte.Open;
        dm.cdsTransporteID_TRASPORTE.AsInteger := dm.QryGenIdTransporteGEN_ID.AsInteger;
    end;

    dm.cdsTransporte.Post;
    dm.cdsTransporte.ApplyUpdates(0);
    ShowMessage('informa��es armazenadas com sucesso');
    Close;
end;

end.
