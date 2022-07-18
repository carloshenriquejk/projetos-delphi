program Buttons;

uses
  Vcl.Forms,
  UButtons in 'UButtons.pas' {Form1},
  UDM in 'UDM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
