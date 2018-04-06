unit uPesqTotalNaoPagos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  ExtCtrls, StdCtrls;

type

  { TfPesqTotalNaoPagos }

  TfPesqTotalNaoPagos = class(TForm)
    Button1: TButton;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
  private

  public

  end;

var
  fPesqTotalNaoPagos: TfPesqTotalNaoPagos;

implementation
uses uDataModules;
{$R *.lfm}

{ TfPesqTotalNaoPagos }

procedure TfPesqTotalNaoPagos.DBGrid3DblClick(Sender: TObject);
begin
  DataModule1.ValorTotalNaoPagos.Filter:='idnome='+IntToStr(DataModule1.TblListaNomesidnome.AsInteger);
end;

procedure TfPesqTotalNaoPagos.Button1Click(Sender: TObject);
begin
 DataModule1.ValorTotalNaoPagos.Filter:='';
end;

end.

