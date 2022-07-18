unit UCadPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  TFCadPessoas = class(TForm)
    P1: TPanel;
    P2: TPanel;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    edNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsPessoas: TDataSource;
    dsPaises: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    edTelefone: TDBEdit;
    Label5: TLabel;
    lkPais: TDBLookupComboBox;
    Label6: TLabel;
    RgTipo: TDBRadioGroup;
    mkDocumento: TMaskEdit;
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPessoas: TFCadPessoas;

implementation

uses UDM;

{$R *.dfm}

procedure TFCadPessoas.btCancelarClick(Sender: TObject);
begin
   dm.csdPessoas.Cancel;
   Close
end;

procedure TFCadPessoas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
      btCancelar.Click;
end;

procedure TFCadPessoas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.csdPessoas.State in [dsInsert, dsEdit] then
     dm.csdPessoas.Cancel;
end;

procedure TFCadPessoas.btSalvarClick(Sender: TObject);
begin
 if edNome.Text ='' then
    begin
      ShowMessage('INFORME O NOME!');
      edNome.SetFocus;
      exit;
    end;

  if edTelefone.Text ='' then
    begin
      ShowMessage('INFORME O SEU TELEFONE!');
      edTelefone.SetFocus;
      exit;
    end;

  if mkDocumento.Text ='' then
    begin
      ShowMessage('INFORME O SEU CPF/CNPJ!');
      mkDocumento.SetFocus;
      exit;
    end;


    if dm.csdPessoas.State = dsInsert then

    begin
        dm.QryGenIdPessoa.Close;
        dm.QryGenIdPessoa.Open;
        dm.csdPessoasID_PESSOA.AsInteger := dm.QryGenIdPessoaGEN_ID.AsInteger;
    end;
        dm.csdPessoasDOCUMENTO.AsString := mkDocumento.Text;
        dm.csdPessoas.Post;
        dm.csdPessoas.ApplyUpdates(0);
        ShowMessage('informações armazenadas com sucesso');
        Close;
  end;

procedure TFCadPessoas.FormCreate(Sender: TObject);
 begin
    if  dm.csdPessoas.Params.ParamByName('TIPO').AsString ='C' then
      begin
          Self.Caption := 'CADASTRO DE CLIENTES';
          mkDocumento.EditMask :='999.999.999-99;0;_';
       end
    else
      begin
       Self.Caption := 'CADASTRO DE FORNECEDORES';
       mkDocumento.EditMask :='99.999.999/9999-99;0;_';
      end;

    if not dm.cdsPais.Active then
     begin
       dm.cdsPais.Close;
       dm.cdsPais.Open;
     end;
     mkDocumento.Text := dm.csdPessoasDOCUMENTO.AsString;
 end;

end.
