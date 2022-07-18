unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
  Tdm = class(TDataModule)
    BD: TFDConnection;
    tbResponsaveis: TFDTable;
    dsResponsaveis: TDataSource;
    tbResponsaveisid: TFDAutoIncField;
    tbResponsaveisnome: TStringField;
    tbResponsaveisrg: TStringField;
    tbResponsaveiscpf: TStringField;
    tbResponsaveiscelular: TStringField;
    tbResponsaveisoperadora: TStringField;
    tbResponsaveisparentesco: TStringField;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
