program EscolaModelo;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {Form1},
  unitCadResponsavel in 'responsaveis\unitCadResponsavel.pas' {frmCadResponsaveis},
  UnitDM in 'dm\UnitDM.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
