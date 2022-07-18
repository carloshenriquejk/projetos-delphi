program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Uloguin in 'forms\Uloguin.pas' {FormLoguin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLoguin, FormLoguin);
  Application.Run;
end.
