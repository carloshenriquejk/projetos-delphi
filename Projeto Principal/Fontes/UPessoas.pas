unit UPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, ExtCtrls, DB, StdCtrls, Buttons;

type
  TFPessoas = class(TForm)
    P1: TPanel;
    P2: TPanel;
    edLocalizar: TEdit;
    Label1: TLabel;
    btIncluir: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    dsPessoas: TDataSource;
    G1: TDBGrid;
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btIncluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure G1DblClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edLocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPessoas: TFPessoas;

implementation

uses UDM, UCadPessoas;

{$R *.dfm}

procedure TFPessoas.Sair1Click(Sender: TObject);
begin
   Application.Terminate
end;

procedure TFPessoas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      close;
end;

procedure TFPessoas.btIncluirClick(Sender: TObject);

    begin
      //SELF SE DIRECIONA A PAGINA ATUAL
      self.Visible := False;
      dm.csdPessoas.Append; //acresentar
      dm.csdPessoasTIPO.AsString := dm.csdPessoas.Params[0].AsString;  // esta passando o valor de master para verdadeiro
      dm.createFormulario(TFCadPessoas, FCadPessoas);
      self.Visible := True;
    end;

procedure TFPessoas.btAlterarClick(Sender: TObject);
begin
 if not dm.csdPessoas.IsEmpty then
  begin
    self.Visible := False;
    dm.csdPessoas.Edit; //editar
    dm.createFormulario(TFCadPessoas, FCadPessoas);
    self.Visible := True;
  end;
end;

procedure TFPessoas.G1DblClick(Sender: TObject);
begin
   btAlterar.Click;
end;

procedure TFPessoas.btExcluirClick(Sender: TObject);
 begin
 if not dm.csdPessoas.IsEmpty then
  begin
     if MessageDlg('deseja excluir esse usuarío ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
       begin
          dm.csdPessoas.Delete;
          dm.csdPessoas.ApplyUpdates(0);
          ShowMessage('cadastro excluído com sucesso');
       end;
     end;
  end;
 procedure TFPessoas.edLocalizarKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   begin
   dm.csdPessoas.Close;
   // o segundo parameto está sendo carregado aqui
   dm.csdPessoas.Params.ParamByName('NOME').AsString:=edLocalizar.Text+'%';
   dm.csdPessoas.Open;                                       //para pegar text como like
   end;
end;

procedure TFPessoas.FormCreate(Sender: TObject);
 begin
 if dm.csdPessoas.Params.ParamByName('TIPO').AsString = 'C' then
  begin
    Self.Caption :='CADASTRO DE CLIENTES';
    dm.csdPessoasDOCUMENTO.EditMask :='999.999.999-99;0;_';
    G1.Columns[2].Title.Caption := 'CPF';
  end
 else
  begin
    Self.Caption :='CADASTRO DE FORNECEDORES';
    dm.csdPessoasDOCUMENTO.EditMask :='99.999.999/9999-99;0;_';
        G1.Columns[2].Title.Caption := 'CNPJ';
  end;

end;

end.
