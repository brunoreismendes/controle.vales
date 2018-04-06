unit uCadNomes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, rxdbgrid, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DBGrids, DbCtrls, StdCtrls;

type

  { TfCadNomes }

  TfCadNomes = class(TForm)
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
  private

  public

  end;

var
  fCadNomes: TfCadNomes;

implementation
uses uDataModules;
{$R *.lfm}

end.

