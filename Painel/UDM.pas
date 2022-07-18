unit UDM;

interface

uses
  SysUtils, Classes, xmldom, DdeMan, Provider, Xmlxform;

type
  TDataModule1 = class(TDataModule)
    caption: TXMLTransformProvider;
    autocomplete: TDdeClientConv;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
