unit UFormasPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFFormasPgto = class(TForm)
    P1: TPanel;
    Label1: TLabel;
    edLocalizar: TEdit;
    P2: TPanel;
    btIncluir: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    dsFPgto: TDataSource;
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
  FFormasPgto: TFFormasPgto;

implementation

uses UDM, UCadFPgto;

{$R *.dfm}

procedure TFFormasPgto.FormCreate(Sender: TObject);
begin
  dm.cdsFpgpo.Close;
  dm.cdsFpgpo.Open;
end;

procedure TFFormasPgto.edLocalizarChange(Sender: TObject);
begin
    if edLocalizar.Text <>'' then

     dm.cdsFpgpo.Locate('DESCRICAO', edLocalizar.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TFFormasPgto.btIncluirClick(Sender: TObject);
begin
  self.Visible := False;
  dm.cdsFpgpo.Append;
  dm.createFormulario(TFcadFPgto, FcadFPgto);
  self.Visible := True;
end;

procedure TFFormasPgto.btAlterarClick(Sender: TObject);
begin
 if not dm.cdsFpgpo.IsEmpty then
  begin
    self.Visible := False;
    dm.cdsFpgpo.Edit; //editar
    dm.createFormulario(TFcadFPgto, FcadFPgto);
    self.Visible := True;
  end;
end;

procedure TFFormasPgto.btExcluirClick(Sender: TObject);
begin
 if not dm.cdsFpgpo.IsEmpty then
  begin
     if MessageDlg('deseja excluir esse usuar�o ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
       begin
          dm.cdsFpgpo.Delete;
          dm.cdsFpgpo.ApplyUpdates(0);
          ShowMessage('forma de pagamento exclu�do com sucesso');
       end;
     end;
end;

end.
