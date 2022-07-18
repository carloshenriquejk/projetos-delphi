program Project1;

uses
  Vcl.Forms,
  Umain in 'Umain.pas' {Main},
  UPrincipal in 'UPrincipal.pas' {Udm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TUdm, Udm);
  Application.Run;
end.
