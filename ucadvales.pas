unit uCadVales;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, rxdbcurredit, RxMDI, rxtoolbar, Forms, Controls, Graphics,
  Dialogs, DBGrids, DbCtrls, ExtCtrls, DBExtCtrls, StdCtrls, ButtonPanel,
  ComCtrls, ActnList, ZAbstractDataset, db;

type

  { TfCadVales }

  TfCadVales = class(TForm)
    DBDateEdit1: TDBDateEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBCurrEdit1: TRxDBCurrEdit;
    ToolBar1: TToolBar;
    CadVButNovo: TToolButton;
    ToolButton10: TToolButton;
    CadVButDel: TToolButton;
    ToolButton14: TToolButton;
    ToolButton17: TToolButton;
    CadVButEdit: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    CadVButIns: TToolButton;
    ToolButton7: TToolButton;
    CadVButCancel: TToolButton;
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure FormShow(Sender: TObject);
    procedure CadVButDelClick(Sender: TObject);
    procedure CadVButNovoClick(Sender: TObject);
    procedure CadVButEditClick(Sender: TObject);
    procedure CadVButInsClick(Sender: TObject);
    procedure CadVButCancelClick(Sender: TObject);
  private
    procedure AtivarEdicao;
    procedure DesativarEdicao;

  public

  end;

var
  fCadVales: TfCadVales;

implementation
uses uDataModules;
{$R *.lfm}

{ TfCadVales }

procedure TfCadVales.AtivarEdicao;
begin
  Panel3.Enabled:=True;
  CadVButCancel.Enabled:=True;
  CadVButDel.Enabled:=False;
  CadVButEdit.Enabled:=False;
  CadVButIns.Enabled:=True;
  CadVButNovo.Enabled:=False;
  DBNavigator1.Enabled:=False;
  DBGrid1.Enabled:=False;
end;


procedure TfCadVales.DesativarEdicao;
begin
  Panel3.Enabled:=False;
  CadVButCancel.Enabled:=False;
  CadVButDel.Enabled:=True;
  CadVButEdit.Enabled:=True;
  CadVButIns.Enabled:=False;
  CadVButNovo.Enabled:=True;
  DBNavigator1.Enabled:=True;
  DBGrid1.Enabled:=True;
end;

procedure TfCadVales.DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType
  );
begin
  case Button of
   nbInsert : begin
     DBLookupComboBox1.SetFocus;
     DateSeparator:='/';
     DBDateEdit1.Text:=DateToStr(Date);
   end;
  end;
  //if DBNavigator1.=dsInsert then DBLookupComboBox1.SetFocus;
end;

procedure TfCadVales.FormShow(Sender: TObject);
begin
  DateSeparator:='/';
end;

procedure TfCadVales.CadVButDelClick(Sender: TObject);
begin
  DBNavigator1.BtnClick(nbDelete);
end;

procedure TfCadVales.CadVButNovoClick(Sender: TObject);
begin
  AtivarEdicao;
  DBNavigator1.BtnClick(nbInsert); //Click.(nbInsert);
end;

procedure TfCadVales.CadVButEditClick(Sender: TObject);
begin
  AtivarEdicao;
  DBNavigator1.BtnClick(nbEdit);
end;

procedure TfCadVales.CadVButInsClick(Sender: TObject);
begin
    DBNavigator1.BtnClick(nbPost);
    DesativarEdicao;
end;

procedure TfCadVales.CadVButCancelClick(Sender: TObject);
begin
    DBNavigator1.BtnClick(nbCancel);
    DesativarEdicao;
end;

{ TfCadVales }

end.

