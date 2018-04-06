program contrvales;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uPrinc, uCadNomes, uDataModules, uCadVales, uPesqPagos,
  upesqtotalpagos, upesqnaopagos, uPesqTotalNaoPagos, uconfig, ucadrapiovale
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(Tfprincipal, fprincipal);
  Application.CreateForm(TfCadNomes, fCadNomes);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfCadVales, fCadVales);
  Application.CreateForm(TfPesqPagos, fPesqPagos);
  Application.CreateForm(TfPesqVTotalPagos, fPesqVTotalPagos);
  Application.CreateForm(TfPesqNaoPagos, fPesqNaoPagos);
  Application.CreateForm(TfPesqTotalNaoPagos, fPesqTotalNaoPagos);
  Application.CreateForm(TfConfig, fConfig);
  Application.CreateForm(Tfcadrapido, fcadrapido);
  Application.Run;
end.

