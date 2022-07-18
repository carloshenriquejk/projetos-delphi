unit Uloguin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Layouts, FMX.ExtCtrls, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Objects, FMX.Edit;

type
  TFormLoguin = class(TForm)
    TabPrincipal: TTabControl;
    TabCadastro: TTabItem;
    TabLoguin: TTabItem;
    LayTop: TLayout;
    btnLoguin: TSpeedButton;
    btnCadastro: TSpeedButton;
    À: TGridPanelLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout4: TLayout;
    Layout6: TLayout;
    Layout8: TLayout;
    Layout10: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Rectangle1: TRectangle;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Line1: TLine;
    Line2: TLine;
    procedure btnLoguinClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLoguin: TFormLoguin;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure TFormLoguin.btnCadastroClick(Sender: TObject);
begin
TabPrincipal.ActiveTab := TabCadastro;
end;

procedure TFormLoguin.btnLoguinClick(Sender: TObject);
begin
TabPrincipal.ActiveTab := TabLoguin;
end;
procedure TFormLoguin.FormCreate(Sender: TObject);
begin
 TabPrincipal.ActiveTab := TabLoguin;
end;

end.
