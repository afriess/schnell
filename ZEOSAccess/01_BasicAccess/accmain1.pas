unit accMain1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  DbCtrls, StdCtrls, ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    buConnect: TButton;
    buDisconnect: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBImage1: TDBImage;
    DBNavigator1: TDBNavigator;
    ZConnection1: TZConnection;
    ZTable1: TZTable;
    procedure buConnectClick(Sender: TObject);
    procedure buDisconnectClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.buConnectClick(Sender: TObject);
begin
  ZConnection1.Connected:=True;
  ZTable1.Active:=True;
end;

procedure TForm1.buDisconnectClick(Sender: TObject);
begin
  ZConnection1.Connected:=False;
  ZTable1.Active:=False;
end;

end.

