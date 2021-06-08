program ImporteExcel;

uses
  Vcl.Forms,
  uImportarExcel in 'uImportarExcel.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
