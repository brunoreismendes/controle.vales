unit uPesqPagos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ZDataset, Forms, Controls, Graphics, Dialogs, DBGrids,
  DbCtrls;

type

  { TfPesqPagos }

  TfPesqPagos = class(TForm)
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  fPesqPagos: TfPesqPagos;

implementation

{$R *.lfm}

{ TfPesqPagos }

procedure TfPesqPagos.FormCreate(Sender: TObject);
begin

end;

procedure TfPesqPagos.FormShow(Sender: TObject);
begin
  DateSeparator:='/';
end;

end.

