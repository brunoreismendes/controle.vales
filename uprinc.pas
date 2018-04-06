unit uPrinc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls;

type

  { TfPrincipal }

  TfPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    TrayIcon1: TTrayIcon;
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private

  public

  end;

var
  fPrincipal: TfPrincipal;

implementation
uses uconfig,uPesqTotalNaoPagos,upesqnaopagos,uCadVales,uCadNomes,upesqtotalpagos,uPesqPagos,ucadrapiovale;
{$R *.lfm}

{ TfPrincipal }

procedure TfPrincipal.MenuItem1Click(Sender: TObject);
begin
  fCadNomes.ShowModal;
end;

procedure TfPrincipal.MenuItem10Click(Sender: TObject);
begin
  fCadVales.showmodal;
end;

procedure TfPrincipal.MenuItem2Click(Sender: TObject);
begin
  fcadrapido.ShowModal;
end;

procedure TfPrincipal.MenuItem4Click(Sender: TObject);
begin
  fConfig.show;
end;

procedure TfPrincipal.MenuItem5Click(Sender: TObject);
begin
  Application.Terminate;

end;

procedure TfPrincipal.MenuItem6Click(Sender: TObject);
begin
  fPesqPagos.ShowModal;

end;

procedure TfPrincipal.MenuItem7Click(Sender: TObject);
begin
  fPesqNaoPagos.ShowModal;
end;

procedure TfPrincipal.MenuItem8Click(Sender: TObject);
begin
  fPesqVTotalPagos.ShowModal;
end;

procedure TfPrincipal.MenuItem9Click(Sender: TObject);
begin
  fPesqTotalNaoPagos.ShowModal;
end;

end.

