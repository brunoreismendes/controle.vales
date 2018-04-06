unit uDataModules;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, ZConnection, ZDataset;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    DSListaNomes: TDataSource;
    DSNaoPagos: TDataSource;
    DSPagos: TDataSource;
    DSValorTotalNaoPagos: TDataSource;
    DSTblValorTotalPagos: TDataSource;
    DSNomes: TDataSource;
    DSVales: TDataSource;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    TblNaoPagosdata: TDateField;
    TblNaoPagosidnome: TLargeintField;
    TblNaoPagosidvale: TLargeintField;
    TblNaoPagospago: TBooleanField;
    TblNaoPagosvalor: TCurrencyField;
    TblNomesidnome: TLargeintField;
    TblNomesnome: TStringField;
    TblPagosdata: TDateField;
    TblPagosidnome: TLargeintField;
    TblPagosidvale: TLargeintField;
    TblPagospago: TBooleanField;
    TblPagosvalor: TCurrencyField;
    TblValesdata: TDateField;
    TblValesidnome: TLargeintField;
    TblValesidvale: TLargeintField;
    TblValespago: TBooleanField;
    TblValesvalor: TCurrencyField;
    TblValorTotalPagosidnome: TLargeintField;
    TblValorTotalPagosidvale: TLargeintField;
    TblValorTotalPagosTotal: TCurrencyField;
    ValorTotalNaoPagosidnome: TLargeintField;
    ValorTotalNaoPagosidvale: TLargeintField;
    ValorTotalNaoPagosTotal: TCurrencyField;
    ValorTotalNaoPagostotal1: TCurrencyField;
    ZConnection1: TZConnection;
    TblNomes: TZTable;
    TblVales: TZTable;
    TblNaoPagos: TZTable;
    TblPagos: TZTable;
    ValorTotalNaoPagos: TZTable;
    TblValorTotalPagos: TZTable;
    TblListaNomes: TZTable;
    TblListaNomesidnome: TLargeintField;
    TblListaNomesnome: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DSValorTotalNaoPagosDataChange(Sender: TObject; Field: TField);
    procedure TblNomesAfterPost(DataSet: TDataSet);
    procedure TblValesAfterPost(DataSet: TDataSet);
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

{ TDataModule1 }

procedure TDataModule1.TblValesAfterPost(DataSet: TDataSet);
begin
    TblNaoPagos.Refresh;
    TblPagos.Refresh;
    TblValorTotalPagos.Refresh;
    ValorTotalNaoPagos.Refresh;

end;

procedure TDataModule1.TblNomesAfterPost(DataSet: TDataSet);
begin
  TblListaNomes.Refresh;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  ZConnection1.Connected:=false;
   ZConnection1.Database:='';
  ZConnection1.Database:=ExtractFilePath(ParamStr(0))+'vale.db3';
  ZConnection1.Connected:=true;
  TblNomes.Active:=True;
  TblVales.Active:=True;
  TblNaoPagos.Active:=True;
  TblPagos.Active:=True;
  ValorTotalNaoPagos.Active:=True;
  TblValorTotalPagos.Active:=True;
  TblListaNomes.Active:=True;
end;

procedure TDataModule1.DSValorTotalNaoPagosDataChange(Sender: TObject;
  Field: TField);
begin

end;

end.

