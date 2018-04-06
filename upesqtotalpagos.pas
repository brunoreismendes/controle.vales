unit upesqtotalpagos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DbCtrls, DBGrids,
  StdCtrls, ExtCtrls;

type

  { TfPesqVTotalPagos }

  TfPesqVTotalPagos = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
  private

  public

  end;

var
  fPesqVTotalPagos: TfPesqVTotalPagos;

implementation
  uses uDataModules;
{$R *.lfm}

{ TfPesqVTotalPagos }

procedure TfPesqVTotalPagos.DBGrid3DblClick(Sender: TObject);
begin
   DataModule1.tblValorTotalPagos.Filter:='idnome='+IntToStr(DataModule1.TblListaNomesidnome.AsInteger);
  // DataModule1.ValorTotalNaoPagos.Filtered:=True;
end;

procedure TfPesqVTotalPagos.Button1Click(Sender: TObject);
begin
 DataModule1.tblValorTotalPagos.Filter:='';
end;

end.

