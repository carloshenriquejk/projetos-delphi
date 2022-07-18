unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Responsaveis1: TMenuItem;
    procedure Responsaveis1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  unitCadResponsavel;

{$R *.dfm}

procedure TForm1.Responsaveis1Click(Sender: TObject);
begin
     Application.CreateForm(TfrmCadResponsaveis, frmCadResponsaveis);
     frmCadResponsaveis.ShowModal;
end;

end.
