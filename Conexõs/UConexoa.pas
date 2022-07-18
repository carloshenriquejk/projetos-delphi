unit UConexoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, BDConexao, Menus;

type
  TBtnSend = class(TForm)
    BtnSomar: TBitBtn;
    Valor1: TEdit;
    Valor2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ValResult: TEdit;
    MainMenu: TMainMenu;
    DataModule11: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    Fechar1: TMenuItem;
    Configuraes1: TMenuItem;
    Usuario1: TMenuItem;
    Sair1: TMenuItem;
    PopupMenu: TPopupMenu;
    este1: TMenuItem;
    este2: TMenuItem;
    este3: TMenuItem;
    PMLabel: TPopupMenu;
    Negrito1: TMenuItem;
    Normal1: TMenuItem;
    procedure BtnSomarClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BtnSend: TBtnSend;

implementation

{$R *.dfm}

{ TBtnSend }



{ TBtnSend }



procedure TBtnSend.BtnSomarClick(Sender: TObject);
begin
 ValResult.Text := IntToStr(DataModule1.Somar(StrToInt(valor1.Text), StrToInt(Valor2.Text)));
end;

procedure TBtnSend.Sair1Click(Sender: TObject);
begin
Application.Terminate
end;

procedure TBtnSend.Negrito1Click(Sender: TObject);
begin
Valor1.Font.Style     := [fsBold];
Valor2.Font.Style     := [fsBold];
ValResult.Font.Style  := [fsBold];
end;

procedure TBtnSend.Normal1Click(Sender: TObject);
begin
  Valor1.Font.Style   := [];
Valor2.Font.Style     := [];
ValResult.Font.Style  := [];
end;

end.
