unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    Menu: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Funcionarios1: TMenuItem;
    Produtos1: TMenuItem;
    Consulta1: TMenuItem;
    Vendas1: TMenuItem;
    Relatorios1: TMenuItem;
    Vendas2: TMenuItem;
    Compras1: TMenuItem;
    Estoque1: TMenuItem;
    Financeiro1: TMenuItem;
    Caixa1: TMenuItem;
    Despeses1: TMenuItem;
    Despesas1: TMenuItem;
    Configures1: TMenuItem;
    Usuario1: TMenuItem;
    FormasdePagamento1: TMenuItem;
    meiosdeTransporte1: TMenuItem;
    paises1: TMenuItem;
    Sair1: TMenuItem;
    Venda1: TMenuItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Sair1Click(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure meiosdeTransporte1Click(Sender: TObject);
    procedure paises1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
  private                                  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UDM, UUsuarios, UProdutos, UFormasPgto,
  UMeiosTransporte, UPaises, UPessoas, UMovimentos;

{$R *.dfm}

procedure TFPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      Application.Terminate
end;

procedure TFPrincipal.Sair1Click(Sender: TObject);
begin
Application.Terminate
end;

procedure TFPrincipal.Usuario1Click(Sender: TObject);
begin
  dm.createFormulario(TFUsuarios, FUsuarios);
end;

procedure TFPrincipal.Produtos1Click(Sender: TObject);
begin
     dm.createFormulario(TFProdutos, FProdutos);
end;

procedure TFPrincipal.FormasdePagamento1Click(Sender: TObject);
begin
     dm.createFormulario(TFFormasPgto, FFormasPgto);
end;

procedure TFPrincipal.meiosdeTransporte1Click(Sender: TObject);
begin
       dm.createFormulario(TFMeiosTrasporte, FMeiosTrasporte);
end;

procedure TFPrincipal.paises1Click(Sender: TObject);
begin
    dm.createFormulario(TFPaises, FPaises);
end;

procedure TFPrincipal.Clientes1Click(Sender: TObject);
begin
    dm.csdPessoas.Close;
    //O  paremetros ddo tipo- cliente j� vai estar carregado
    dm.csdPessoas.Params.ParamByName('TIPO').AsString := 'C';
    dm.csdPessoas.Params.ParamByName('NOME').AsString:='#';
    dm.csdPessoas.Open;
    DM.createFormulario(TFPessoas, FPessoas);
end;

procedure TFPrincipal.Funcionarios1Click(Sender: TObject);
begin
    dm.csdPessoas.Close;
    //O  paremetros ddo tipo- cliente j� vai estar carregado
    dm.csdPessoas.Params.ParamByName('TIPO').AsString := 'F';
    dm.csdPessoas.Params.ParamByName('NOME').AsString:='#';
    dm.csdPessoas.Open;
    dm.createFormulario(TFPessoas, FPessoas);
end;


procedure TFPrincipal.Vendas1Click(Sender: TObject);
begin
  dm.cdsConsMovimento.Close;
  //o parametro alocado na posi��o 2 est� localizado o tipo
  dm.cdsConsMovimento.Params[2].AsString := 'C';
  dm.createFormulario(TFMovimentos, FMovimentos);
end;

procedure TFPrincipal.Venda1Click(Sender: TObject);
begin
  dm.cdsConsMovimento.Close;
  dm.cdsConsMovimento.Params[2].AsString := 'V';
  dm.createFormulario(TFMovimentos, FMovimentos);
end;

end.