{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit uImportarExcel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, uImportExcel, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, Datasnap.DBClient,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    ImportExcel: TImportExcel;
    stgImportExcel: TStringGrid;
    btnImportarArq: TButton;
    oplBuscaAqu: TOpenDialog;
    dbgGravaBanco: TDBGrid;
    qrydadosexcel: TFDQuery;
    btnEnviaBanco: TButton;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qrydadosexcelIDPRODUTOR: TIntegerField;
    qrydadosexcelPRODUTOR: TWideStringField;
    qrydadosexcelCPF: TWideStringField;
    qrydadosexcelAREA_HA: TIntegerField;
    qrydadosexcelENDERECO: TWideStringField;
    qrydadosexcelMUNICIPIO: TWideStringField;
    pgrProgresso: TProgressBar;
    dbgBanco: TDBGrid;
    dtsProdutorers: TDataSource;
    btnSelecionar: TButton;
    qryEstado: TFDQuery;
    dtsEstado: TDataSource;
    dtsMunicipio: TDataSource;
    qryMunicpio: TFDQuery;
    pnlSelecionar: TPanel;
    GroupBox1: TGroupBox;
    rdbEstado: TRadioButton;
    rdbMunicipio: TRadioButton;
    rdbProdutor: TRadioButton;
    qryEstadoIDEST: TIntegerField;
    qryEstadoCOD_UF: TIntegerField;
    qryEstadoESTADO: TWideStringField;
    qryMunicpioIDMUNC: TIntegerField;
    qryMunicpioCOD_UF: TIntegerField;
    qryMunicpioCOD_IBGE: TIntegerField;
    qryMunicpioMUNICIPIO: TWideStringField;
    qryMunicpioUF: TWideStringField;
    procedure btnImportarArqClick(Sender: TObject);
    procedure btnEnviaBancoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rdbEstadoClick(Sender: TObject);
    procedure rdbMunicipioClick(Sender: TObject);
    procedure rdbProdutorClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure importar;
    procedure GravarBanco;


  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmPrincipal.btnEnviaBancoClick(Sender: TObject);
begin
   GravarBanco;
end;

procedure TfrmPrincipal.btnImportarArqClick(Sender: TObject);
begin
importar;
end;

procedure TfrmPrincipal.btnSelecionarClick(Sender: TObject);
begin
  if rdbEstado.Checked then
  begin
    ShowMessage('Estado Selecionado');
    qryEstado.active := true;
  end
  else if rdbMunicipio.Checked then
  begin
    ShowMessage('Municipio Selecionado');
    qryMunicpio.active := true;
  end
  else if rdbProdutor.Checked then
  begin
    ShowMessage('Produtores Selecionado');
    qrydadosexcel.active := true;
  end
  else
    ShowMessage('Selecione uma op??o para importa??o de dados');
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  // cdsImportaDados.CreateDataSet;
  // qrydadosexcel.active := true;
end;

procedure TfrmPrincipal.GravarBanco;
var
  I: Integer;
begin
  if rdbEstado.Checked then
  begin
    qryEstado.active := true;

    // iniciando grava??o no banco
    pgrProgresso.Max := stgImportExcel.RowCount;
    pgrProgresso.Position := 0;
    qryEstado.DisableControls;
    for I := 1 to Pred(stgImportExcel.RowCount) do
    begin
      Application.ProcessMessages;
      pgrProgresso.Position := pgrProgresso.Position + 1;

      qryEstado.Close;
      qryEstado.Open;
      qryEstado.Insert;

      qryEstadoIDEST.AsAnsiString := stgImportExcel.Cells[0, I];
      qryEstadoCOD_UF.AsAnsiString := stgImportExcel.Cells[1, I];
      qryEstadoESTADO.AsAnsiString := stgImportExcel.Cells[2, I];

      qryEstado.Post;

    end;
    qryEstado.enableControls;
    ShowMessage('Importa??o Conclu?da.')
  end

  else if rdbMunicipio.Checked then
  begin
    qryMunicpio.active := true;

    // iniciando grava??o no banco
    pgrProgresso.Max := stgImportExcel.RowCount;
    pgrProgresso.Position := 0;
    qryMunicpio.DisableControls;
    begin
      Application.ProcessMessages;
      pgrProgresso.Position := pgrProgresso.Position + 1;

      qryMunicpio.Close;
      qryMunicpio.Open;
      qryMunicpio.Insert;

      qryMunicpioIDMUNC.AsAnsiString := stgImportExcel.Cells[0, I];
      qryMunicpioCOD_UF.AsAnsiString := stgImportExcel.Cells[1, I];
      qryMunicpioCOD_IBGE.AsAnsiString := stgImportExcel.Cells[2, I];
      qryMunicpioMUNICIPIO.AsAnsiString := stgImportExcel.Cells[3, I];
      qryMunicpioUF.AsAnsiString := stgImportExcel.Cells[4, I];

      qryMunicpio.Post;

    end;
    qryMunicpio.enableControls;
    ShowMessage('Importa??o Conclu?da.')
  end

  else if rdbProdutor.Checked then
  begin
    qrydadosexcel.active := true;
    // iniciando grava??o no banco
    pgrProgresso.Max := stgImportExcel.RowCount;
    pgrProgresso.Position := 0;
    qrydadosexcel.DisableControls;
    //termina a partir de qual linha come?a a grava no banco
    for I := 1 to Pred(stgImportExcel.RowCount) do
    //com esta linha copia um intervalo de linhas espesificas
    //for I := 9 to 20 do

    begin
      Application.ProcessMessages;
      pgrProgresso.Position := pgrProgresso.Position + 1;

      qrydadosexcel.Close;
      qrydadosexcel.Open;
      qrydadosexcel.Insert;

      qrydadosexcelPRODUTOR.AsAnsiString := stgImportExcel.Cells[0, I];
      qrydadosexcelCPF.AsAnsiString := stgImportExcel.Cells[1, I];
    //  qrydadosexcelAREA_HA.AsAnsiString := stgImportExcel.Cells[2, I];
      qrydadosexcelENDERECO.AsAnsiString := stgImportExcel.Cells[3, I];
    //  qrydadosexcelMUNICIPIO.AsAnsiString := stgImportExcel.Cells[4, I];

      qrydadosexcel.post;
    end;
     qrydadosexcel.enableControls;
    ShowMessage('Importa??o Conclu?da.')
  end
  else
    ShowMessage('Selecione uma op??o para importa??o de dados');
end;

procedure TfrmPrincipal.importar;
var
	vFile: string;
begin
	if oplBuscaAqu.execute then
	begin
		vFile := oplBuscaAqu.FileName;
		ImportExcel.ExcelFile := vFile;
    ImportExcel.ExcelParaStringGrid(stgImportExcel, pgrProgresso);
end;
end;
procedure TfrmPrincipal.rdbEstadoClick(Sender: TObject);
begin
//dbgGravaBanco.DataSource := '';
//dbgBanco.DataSource := '';
dbgGravaBanco.DataSource := dtsEstado;
dbgBanco.DataSource := dtsEstado;
end;

procedure TfrmPrincipal.rdbMunicipioClick(Sender: TObject);
begin
//dbgGravaBanco.DataSource := '';
//dbgBanco.DataSource := '';
dbgGravaBanco.DataSource := dtsMunicipio;
dbgBanco.DataSource := dtsMunicipio;
end;

procedure TfrmPrincipal.rdbProdutorClick(Sender: TObject);
begin
//dbgGravaBanco.DataSource := '';
//dbgBanco.DataSource := '';
dbgGravaBanco.DataSource := dtsProdutorers;
dbgBanco.DataSource := dtsProdutorers;
end;

end.
