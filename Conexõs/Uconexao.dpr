program Uconexao;

uses
  Forms,
  UConexoa in 'UConexoa.pas' {BtnSend},
  BDConexao in 'BDConexao.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TBtnSend, BtnSend);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
