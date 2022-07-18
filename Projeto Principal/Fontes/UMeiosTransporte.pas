unit UMeiosTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFMeiosTrasporte = class(TForm)
    P1: TPanel;
    Label1: TLabel;
    edLocalizar: TEdit;
    P2: TPanel;
    btIncluir: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    dsTrasporte: TDataSource;
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
  FMeiosTrasporte: TFMeiosTrasporte;

implementation

uses UDM, UCadMeiosTransportes;

{$R *.dfm}

procedure TFMeiosTrasporte.FormCreate(Sender: TObject);
begin
  dm.cdsTransporte.Close;
  dm.cdsTransporte.Open;
end;

procedure TFMeiosTrasporte.edLocalizarChange(Sender: TObject);
begin
    if edLocalizar.Text <>'' then
    dm.cdsTransporte.Locate('MEIO', edLocalizar.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TFMeiosTrasporte.btIncluirClick(Sender: TObject);
begin
  self.Visible := False;
  dm.cdsTransporte.Append;
  dm.createFormulario(TFCadMeiosTransporte, FCadMeiosTransporte);
  self.Visible := True;
end;

procedure TFMeiosTrasporte.btAlterarClick(Sender: TObject);
begin
 if not dm.cdsTransporte.IsEmpty then
  begin
    self.Visible := False;
    dm.cdsTransporte.Edit; //editar
    dm.createFormulario(TFCadMeiosTransporte, FCadMeiosTransporte);
    self.Visible := True;
  end;
end;

procedure TFMeiosTrasporte.btExcluirClick(Sender: TObject);
begin
 if not dm.cdsTransporte.IsEmpty then
  begin
     if MessageDlg('deseja excluir esse usuarío ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
       begin
          dm.cdsTransporte.Delete;
          dm.cdsTransporte.ApplyUpdates(0);
          ShowMessage('meio de transporte excluído com sucesso');
       end;
     end;
end;

end.
