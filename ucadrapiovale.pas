unit ucadrapiovale;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DbCtrls, DBExtCtrls, ExtDlgs, Buttons, rxdbcurredit, rxdbdateedit;

type

  { Tfcadrapido }

  Tfcadrapido = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CalculatorDialog1: TCalculatorDialog;
    DBCheckBox1: TDBCheckBox;
    DBDateEdit1: TDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxDBCurrEdit1: TRxDBCurrEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CalculatorDialog1CanClose(Sender: TObject; var CanClose: boolean);
    procedure CalculatorDialog1Change(Sender: TObject);
    procedure CalculatorDialog1Close(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
    procedure RxDBCurrEdit1KeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  fcadrapido: Tfcadrapido;

implementation
 uses uDataModules;
{$R *.lfm}

{ Tfcadrapido }

procedure Tfcadrapido.FormShow(Sender: TObject);
begin
  with DataModule1 do
  begin
    TblVales.Insert;
    // TblValespago.Value1True;
     // TblValespago.Value:=to Date;
    // TblValesdata.AsDateTime:=date;
    DateSeparator:='/';
     DBDateEdit1.Text:=DateToStr(Date);
    DBCheckBox1.Checked:=False;


  end;
end;

procedure Tfcadrapido.RxDBCurrEdit1KeyPress(Sender: TObject; var Key: char);
begin

    if Key=#13 then
    begin
      Button1.SetFocus;
      Button1.Click;

    end;
end;

procedure Tfcadrapido.Button1Click(Sender: TObject);
var val, val2: Boolean;
begin
  val:=True;
  val2:=True;
  if RxDBCurrEdit1.Caption = '' then val:=False;
  if DBCheckBox1.Caption = '' then val2:=False;
  IF val=False OR val2=False then
  begin
    ShowMessage('Não é permitido valores em branco');
    DataModule1.TblVales.Cancel;
    fcadrapido.Close;
  end
  else
    begin
      DataModule1.TblVales.Post;
      DataModule1.TblVales.Refresh;
      fcadrapido.Close;
    end;




end;

procedure Tfcadrapido.Button2Click(Sender: TObject);
begin
  fcadrapido.Close;
end;

procedure Tfcadrapido.Button3Click(Sender: TObject);
begin
  CalculatorDialog1.Execute;
end;

procedure Tfcadrapido.CalculatorDialog1CanClose(Sender: TObject;
  var CanClose: boolean);
begin
   // RxDBCurrEdit1.Value:=CalculatorDialog1.Value;
end;

procedure Tfcadrapido.CalculatorDialog1Change(Sender: TObject);
begin
  RxDBCurrEdit1.Value:=CalculatorDialog1.Value;
end;

procedure Tfcadrapido.CalculatorDialog1Close(Sender: TObject);
begin
 // RxDBCurrEdit2.Text:=FloatToStr(CalculatorDialog1.Value);
end;

procedure Tfcadrapido.DBLookupComboBox1KeyPress(Sender: TObject; var Key: char);
begin
 if Key=#13 then RxDBCurrEdit1.SetFocus;
end;

end.

