unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, FireDAC.Stan.StorageBin;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    conexao: TFDConnection;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    FDTable1: TFDTable;
    FDTable1id: TFDAutoIncField;
    FDTable1tipo: TStringField;
    FDTable1dataHora: TDateTimeField;
    FDTable1responsavel: TStringField;
    FDTable1observacoes: TMemoField;
    FDMemTable1id: TFDAutoIncField;
    FDMemTable1tipo: TStringField;
    FDMemTable1dataHora: TDateTimeField;
    FDMemTable1responsavel: TStringField;
    FDMemTable1observacoes: TMemoField;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDTable1.Filtered := false;
  FDTable1.Filter   := 'dataHora =' +QuotedStr(UpperCase(Edit1.text));
  FDTable1.Filtered := true;

  FDTable1.First;

  while not FDTable1.Eof do
  begin
     FDTable1.Append;

     FDTable1tipo.Value        := FDTable1tipo.Value;
     FDTable1dataHora.Value    := FDTable1dataHora.Value;
     FDTable1responsavel.Value := FDTable1responsavel.Value;
     FDTable1observacoes.Value := FDTable1observacoes.Value;
     FDTable1.Post;

     FDTable1.Next;
  end;
end;

end.
