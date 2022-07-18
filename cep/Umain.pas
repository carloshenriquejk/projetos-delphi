unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TMain = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Codigo: TMaskEdit;
    Label2: TLabel;
    Nome: TMaskEdit;
    LAbels: TLabel;
    UF: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBNavigator1: TDBNavigator;
    Memo1: TMemo;
    ScrollBox1: TScrollBox;
    Memo2: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}



end.
