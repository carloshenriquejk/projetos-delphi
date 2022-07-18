unit UButtons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    BD: TFDConnection;
    tfCadastro: TFDTable;
    tfCadastroid: TIntegerField;
    tfCadastronome: TStringField;
    tfCadastrologin: TStringField;
    tfCadastrosenha: TStringField;
    dsCadastro: TDataSource;
    gridUsuarios: TDBGrid;
    btnOpen: TButton;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    btProximo: TButton;
    btPrimeiro: TButton;
    btAnterior: TButton;
    btUltimo: TButton;
    btInserir: TButton;
    btDeletar: TButton;
    btSalvar: TButton;
    btCancelar: TButton;
    procedure btnOpenClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tfCadastroAfterScroll(DataSet: TDataSet);
    procedure btInserirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btAnteriorClick(Sender: TObject);
begin
tfCadastro.Next;
end;

procedure TForm1.btCancelarClick(Sender: TObject);
begin
  btInserir.Enabled := True;
  btDeletar.Enabled := True;

  btSalvar.Enabled  :=false;
  btCancelar.Enabled  :=false;

  tfCadastro.Cancel;
end;

procedure TForm1.btDeletarClick(Sender: TObject);
begin
 if Application.MessageBox('Deseja Realmente Deletar o Registro','Atenção', MB_ICONQUESTION+MB_YESNO) = mrYes then
 begin
 tfCadastro.Delete;
 end;
end;

procedure TForm1.btInserirClick(Sender: TObject);
begin
     btInserir.Enabled := False;
     btDeletar.Enabled := False;

     btSalvar.Enabled  :=True;
     btCancelar.Enabled:=True;

     tfCadastro.Append;
end;

procedure TForm1.btnOpenClick(Sender: TObject);
begin
tfCadastro.open;
end;

procedure TForm1.btPrimeiroClick(Sender: TObject);
begin
tfCadastro.last;
end;

procedure TForm1.btProximoClick(Sender: TObject);
begin
tfCadastro.Prior;
end;

procedure TForm1.btSalvarClick(Sender: TObject);
begin
 btInserir.Enabled := True;
 btDeletar.Enabled := True;

 btSalvar.Enabled  :=false;
 btCancelar.Enabled  :=false;

 tfCadastro.Post;
end;

procedure TForm1.btUltimoClick(Sender: TObject);
begin
tfCadastro.First;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
tfCadastro.Close;
end;

procedure TForm1.tfCadastroAfterScroll(DataSet: TDataSet);
begin
 if tfCadastro.Bof = true then
  begin
    btProximo.Enabled := false;
    btPrimeiro.Enabled  := false;
  end
  else
  begin
    btProximo.Enabled := true;
    btPrimeiro.Enabled  := true;
  end;

  if tfCadastro.Eof = true then
     begin
      btUltimo.Enabled  := false;
      btAnterior.Enabled := false;
     end
  else
    begin
      btUltimo.Enabled := true;
      btAnterior.Enabled  := true;
    end;
 end;

end.
