program Curso;

uses
  Forms,
  UPrincipal in '..\..\..\..\Program Files (x86)\Borland\Delphi7\Projects\UPrincipal.pas' {Form1},
  UConsilta in '..\..\..\..\Program Files (x86)\Borland\Delphi7\Projects\UConsilta.pas' {FConsulta},
  UDM in 'UDM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFConsulta, FConsulta);
  Application.Run;
end.
