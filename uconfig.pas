unit uconfig;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls;

type

  { TfConfig }

  TfConfig = class(TForm)
    chkatvborda: tcheckbox;
    TrackBar1: TTrackBar;
    procedure chkatvbordaclick(sender: tobject);
    procedure TrackBar1Change(Sender: TObject);
  private

  public

  end;

var
  fConfig: TfConfig;

implementation
 uses uPrinc;
{$R *.lfm}

{ TfConfig }

procedure TfConfig.TrackBar1Change(Sender: TObject);
begin
  fPrincipal.AlphaBlendValue:=TrackBar1.Position;
end;

procedure tfconfig.chkatvbordaclick(sender: tobject);
begin
  if chkatvborda.Checked = True then begin fPrincipal.BorderStyle:=bsSizeToolWin; end else fPrincipal.BorderStyle:=bsNone ;
end;

end.

