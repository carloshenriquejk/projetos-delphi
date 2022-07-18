unit UMovimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFMovimentos = class(TForm)
    P1: TPanel;
    P2: TPanel;
    btIncluir: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    G1: TDBGrid;
    DSConsMovimentos: TDataSource;
    edData1: TDateTimePicker;
    edData2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    btBuscar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure G1DblClick(Sender: TObject);
    procedure G1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMovimentos: TFMovimentos;

implementation

uses UDM, UCadMovimento;

{$R *.dfm}

procedure TFMovimentos.FormCreate(Sender: TObject);
begin
  edData1.Date := Now;
  edData2.Date := Now;
  btBuscar.Click;
end;

procedure TFMovimentos.G1DblClick(Sender: TObject);
begin
  btAlterar.Click;
end;

procedure TFMovimentos.G1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      Close;
end;

procedure TFMovimentos.btBuscarClick(Sender: TObject);
begin
   dm.cdsMovimento.Close;
  { dm.cdsMovimento.Params[0].AsDate := edData1.Date;
   dm.cdsMovimento.Params[1].AsDate := edData2.Date;    }
   dm.cdsMovimento.Open;
end;

procedure TFMovimentos.btIncluirClick(Sender: TObject);
begin
  self.Visible := False;

  dm.cdsMovimento.Close;
    //abrir o formulario sem nehum valor pq está procurando o -1
  dm.cdsMovimento.Params[0].AsInteger := -1;
  dm.cdsMovimento.Open;
   //vai carregar todos
  dm.cdsMovimento.Append;
  dm.CItens.EmptyDataSet;

  dm.createFormulario(TFCadMovimento, FCadMovimento);
  self.Visible := True;
end;

procedure TFMovimentos.btAlterarClick(Sender: TObject);
begin
 {if not dm.csdProdutos.IsEmpty then
  begin
    self.Visible := False;
    dm.csdProdutos.Edit; //editar
    dm.createFormulario(TFCadProduto, FCadProduto);
    self.Visible := True;
  end;}
end;

procedure TFMovimentos.btExcluirClick(Sender: TObject);
begin
 {if not dm.csdProdutos.IsEmpty then
  begin
     if MessageDlg('deseja excluir esse produto ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
       begin
          dm.csdProdutos.Delete;
          dm.csdProdutos.ApplyUpdates(0);
          ShowMessage('produto excluído com sucesso');
       end;
     end;   }
end;





end.
