unit metaMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  DbCtrls, ZConnection, ZSqlMetadata;

//BTW: Ich verbinde zu einer .MDB ohne DSN!
//Einfach zConnection.Protocol = ado
//zConnection.database = Provider=MICROSOFT.JET.OLEDB.4.0;Data Source=Kompletter_Pfad\MeineMdb.mdb

type

  { TForm1 }

  TForm1 = class(TForm)
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DSCol: TDataSource;
    DSTable: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection: TZConnection;
    ZMetaColAUTO_INCREMENT: TBooleanField;
    ZMetaColCOLUMN_NAME: TStringField;
    ZMetaColCOLUMN_SIZE: TLongintField;
    ZMetaColDATA_TYPE: TSmallintField;
    ZMetaColNULLABLE: TLongintField;
    ZMetaColTABLE_NAME: TStringField;
    ZMetaTable: TZSQLMetadata;
    ZMetaCol: TZSQLMetadata;
    ZMetaTableTABLE_NAME: TStringField;
    ZMetaTableTABLE_TYPE: TStringField;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

