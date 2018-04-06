unit upesqnaopagos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids;

type

  { TfPesqNaoPagos }

  TfPesqNaoPagos = class(TForm)
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  fPesqNaoPagos: TfPesqNaoPagos;

implementation
 uses uDataModules;
{$R *.lfm}

{ TfPesqNaoPagos }

procedure TfPesqNaoPagos.DBGrid1DblClick(Sender: TObject);
begin
DataModule1.TblNaoPagos.Post;
DataModule1.TblNaoPagos.Refresh;
end;

procedure TfPesqNaoPagos.FormShow(Sender: TObject);
begin
  DateSeparator:='/';
end;

end.

