unit udm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ZDataset, Sqlite3Wrapper, sqlite3conn, sqldb, db;

type

  { TDM }

  TDM = class(TDataModule)
    DSNomes: TDataSource;
    DSVales: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    SQLConnector1: TSQLConnector;
    SQLite3Connection1: TSQLite3Connection;
    QryNomes: TSQLQuery;
    QryNomesidnome: TAutoIncField;
    QryNomesnome: TStringField;
    QryVales: TSQLQuery;
    QryValesdata: TDateField;
    QryValesidnome: TLongintField;
    QryValesidvale: TAutoIncField;
    QryValespago: TBooleanField;
    QryValesvalor: TCurrencyField;
    Sqlite3Database1: TSqlite3Database;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
    SQLQuery5: TSQLQuery;
    SQLQuery6: TSQLQuery;
    SQLScript1: TSQLScript;
    SQLTransaction1: TSQLTransaction;
    StringField1: TStringField;
    ZTable1: TZTable;
  private

  public

  end;

var
  DM: TDM;

implementation

{$R *.lfm}

end.

