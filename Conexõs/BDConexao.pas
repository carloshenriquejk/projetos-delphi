unit BDConexao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr;

type
  TDataModule1 = class(TDataModule)
    SQLQuery1: TSQLQuery;
     function Somar(Valor1, Valor2 : Integer) : Integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

function TDataModule1.Somar(Valor1, Valor2: Integer): Integer;
begin
Result := Valor1 + Valor2 ;

end;
{$R *.dfm}

end.
