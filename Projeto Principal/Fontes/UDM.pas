unit UDM;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, Forms, Dialogs, FMTBcd,
  DBClient, Provider;

type
  Tdm = class(TDataModule)
    BDCurso: TSQLConnection;
    dtsUsuarios: TSQLDataSet;
    dtsUsuariosID_USUARIO: TIntegerField;
    dtsUsuariosLOGIN: TStringField;
    dtsUsuariosSENHA: TStringField;
    dtsUsuariosMASTER: TStringField;
    dspUsuarios: TDataSetProvider;
    csdUsuarios: TClientDataSet;
    csdUsuariosID_USUARIO: TIntegerField;
    csdUsuariosLOGIN: TStringField;
    csdUsuariosSENHA: TStringField;
    csdUsuariosMASTER: TStringField;
    QryGenIdUsuario: TSQLQuery;
    QryGenIdUsuarioGEN_ID: TFMTBCDField;
    dtsProdutos: TSQLDataSet;
    dspProdutos: TDataSetProvider;
    csdProdutos: TClientDataSet;
    QryGenIdProduto: TSQLQuery;
    dtsProdutosID_PRODUTO: TIntegerField;
    dtsProdutosNOME: TStringField;
    dtsProdutosQUANTIDADE: TIntegerField;
    dtsProdutosID_PESSOA: TIntegerField;
    dtsProdutosVALOR: TFMTBCDField;
    csdProdutosID_PRODUTO: TIntegerField;
    csdProdutosNOME: TStringField;
    csdProdutosQUANTIDADE: TIntegerField;
    csdProdutosID_PESSOA: TIntegerField;
    csdProdutosVALOR: TFMTBCDField;
    dtsProdutosTIPO: TStringField;
    csdProdutosTIPO: TStringField;
    dtsPessoas: TSQLDataSet;
    dspPessoas: TDataSetProvider;
    csdPessoas: TClientDataSet;
    QryGenIdPessoa: TSQLQuery;
    dtsPessoasID_PESSOA: TIntegerField;
    dtsPessoasNOME: TStringField;
    dtsPessoasDOCUMENTO: TStringField;
    dtsPessoasTELEFONE: TStringField;
    dtsPessoasTIPO: TStringField;
    dtsPessoasID_PAISES: TIntegerField;
    csdPessoasID_PESSOA: TIntegerField;
    csdPessoasNOME: TStringField;
    csdPessoasDOCUMENTO: TStringField;
    csdPessoasTELEFONE: TStringField;
    csdPessoasTIPO: TStringField;
    csdPessoasID_PAISES: TIntegerField;
    QryGenIdProdutoGEN_ID: TFMTBCDField;
    QryGenIdPessoaGEN_ID: TFMTBCDField;
    dtsFpgto: TSQLDataSet;
    dstFpgpo: TDataSetProvider;
    cdsFpgpo: TClientDataSet;
    QryGenIdFpgto: TSQLQuery;
    dtsFpgtoID_PGTO: TIntegerField;
    QryGenIdFpgtoGEN_ID: TFMTBCDField;
    cdsFpgpoID_PGTO: TIntegerField;
    dtsFpgtoDESCRICAO: TStringField;
    cdsFpgpoDESCRICAO: TStringField;
    dtsTransporte: TSQLDataSet;
    dstTransporte: TDataSetProvider;
    cdsTransporte: TClientDataSet;
    QryGenIdTransporte: TSQLQuery;
    dtsTransporteID_TRASPORTE: TIntegerField;
    dtsTransporteMEIO: TStringField;
    cdsTransporteID_TRASPORTE: TIntegerField;
    cdsTransporteMEIO: TStringField;
    QryGenIdTransporteGEN_ID: TFMTBCDField;
    dtsPais: TSQLDataSet;
    dstPais: TDataSetProvider;
    cdsPais: TClientDataSet;
    QryGenIdPais: TSQLQuery;
    dtsPaisID_PAISES: TIntegerField;
    dtsPaisNOME: TStringField;
    cdsPaisID_PAISES: TIntegerField;
    cdsPaisNOME: TStringField;
    QryGenIdPaisGEN_ID: TFMTBCDField;
    dtsConsMovimento: TSQLDataSet;
    dstConsMovimento: TDataSetProvider;
    cdsConsMovimento: TClientDataSet;
    QryGenIdCMovimento: TSQLQuery;
    dtsConsMovimentoID_MOVIMENTO: TIntegerField;
    dtsConsMovimentoTIPO: TStringField;
    dtsConsMovimentoDATA: TDateField;
    dtsConsMovimentoTOTAL: TFMTBCDField;
    dtsConsMovimentoID_PGTO: TIntegerField;
    dtsConsMovimentoID_TRANSPORTE: TIntegerField;
    cdsConsMovimentoID_MOVIMENTO: TIntegerField;
    cdsConsMovimentoTIPO: TStringField;
    cdsConsMovimentoDATA: TDateField;
    cdsConsMovimentoTOTAL: TFMTBCDField;
    cdsConsMovimentoID_PGTO: TIntegerField;
    cdsConsMovimentoID_TRANSPORTE: TIntegerField;
    QryGenIdCMovimentoGEN_ID: TFMTBCDField;
    dtsMovimento: TSQLDataSet;
    dstMovimento: TDataSetProvider;
    cdsMovimento: TClientDataSet;
    dtsMovimentoID_MOVIMENTO: TIntegerField;
    dtsMovimentoTIPO: TStringField;
    dtsMovimentoDATA: TDateField;
    dtsMovimentoTOTAL: TFMTBCDField;
    dtsMovimentoID_PGTO: TIntegerField;
    dtsMovimentoID_TRANSPORTE: TIntegerField;
    cdsConsMovimentoFormaPagamento: TStringField;
    cdsConsMovimentoMeiosTransporte: TStringField;
    cdsMovimentoID_MOVIMENTO: TIntegerField;
    cdsMovimentoTIPO: TStringField;
    cdsMovimentoDATA: TDateField;
    cdsMovimentoTOTAL: TFMTBCDField;
    cdsMovimentoID_PGTO: TIntegerField;
    cdsMovimentoID_TRANSPORTE: TIntegerField;
    dtsItnes: TSQLDataSet;
    dstItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    cdsItensID_ITENS: TIntegerField;
    cdsItensID_PRODUTO: TIntegerField;
    cdsItensID_MOVIMENTO: TIntegerField;
    cdsItensVALOR: TFMTBCDField;
    cdsItensTOTAL: TFMTBCDField;
    cdsItensQUANTIDADE: TIntegerField;
    QryGenIdItem: TSQLQuery;
    QryGenIdItemGEN_ID: TFMTBCDField;
    CItens: TClientDataSet;
    CItensTOTAL: TFMTBCDField;
    CItensQUANTIDADE: TIntegerField;
    CItensID_ITENS: TIntegerField;
    CItensID_PRODUTO: TIntegerField;
    CItensID_MOVIMENTO: TIntegerField;
    CItensVALOR: TFMTBCDField;
    CItensDESCRICAO: TStringField;
    CItensSoma: TAggregateField;
    dtsItnesID_ITENS: TIntegerField;
    dtsItnesID_PRODUTO: TIntegerField;
    dtsItnesID_MOVIMENTO: TIntegerField;
    dtsItnesVALOR: TFMTBCDField;
    dtsItnesTOTAL: TFMTBCDField;
    dtsItnesQUANTIDADE: TIntegerField;
    dtsEstoque: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DateField1: TDateField;
    FMTBCDField1: TFMTBCDField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    DateField2: TDateField;
    FMTBCDField2: TFMTBCDField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure createFormulario(t: TFormClass; F: TForm);
  private
    { Private declarations }
  public
    { Public declarations }
    vLogin: Boolean;
  end;

var
  dm: Tdm;

implementation
 //extends login
uses ULogin, UPrincipal;

{$R *.dfm}

procedure Tdm.createFormulario(t: TFormClass; F: TForm);
    begin
        try
             Application.CreateForm(T,F);
              F.ShowModal;
        finally
             F.Free;
         end;
        end;

procedure Tdm.DataModuleCreate(Sender: TObject);
var path : String;
begin
   path := ExtractFilePath(Application.ExeName) + 'Config.txt';

   try
     BDCurso.Close;
     BDCurso.Params.LoadFromFile(path);
     BDCurso.Open;
     {
     //CHAMA E ADICIONANDO A  CLASSE ABRI A TELA LOGIN
     Application.CreateForm(TFLogin,FLogin);
     //VAI ABRIA O FORMULARIO
     FLogin.ShowModal;
     FLogin.Free;
           }
     vLogin := True;
   //SE O LOGIR FOR VALIDO ABRIR A TELA PRINCIPAL
       if vLogin then
       //A VARIAVEL VLOGIN E BOLEANA
         begin
             Application.CreateForm(TFPrincipal,FPrincipal);
             FPrincipal.ShowModal;
             FPrincipal.Free;
         end
       else
       Application.Terminate

     except
     on E : Exception do
    ShowMessage(E.Message);
    end;
  end;
end.