unit unitCadResponsavel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TfrmCadResponsaveis = class(TForm)
    tdNome: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    tdCpf: TDBEdit;
    Label1: TLabel;
    tdId: TDBEdit;
    Label3: TLabel;
    tdRg: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    tdoperadora: TDBEdit;
    tdCelular: TDBEdit;
    Label7: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    edLocalizar: TEdit;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure edLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadResponsaveis: TfrmCadResponsaveis;

implementation

uses
  UnitDM;

{$R *.dfm}

procedure TfrmCadResponsaveis.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 if (Button = nbInsert) then
 begin
   dm.tbResponsaveisparentesco.Value := 'Pai';
   tdNome.SetFocus;
 end;
end;

procedure TfrmCadResponsaveis.edLocalizarChange(Sender: TObject);
begin
  dm.tbResponsaveis.Locate('nome',edLocalizar.Text,[loPartialKey])
end;

end.
