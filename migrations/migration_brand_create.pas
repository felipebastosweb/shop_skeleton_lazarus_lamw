unit migration_brand_create;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TMigrationBrandCreate = class
    jSqliteCursor1: jSqliteCursor;
    jSqliteDataAccess1: jSqliteDataAccess;
    procedure CreateBrandTable;
  end;


implementation

procedure TMigrationBrandCreate.CreateBrandTable;
var
  querySuccess : Boolean;
begin
  // create shops table
  querySuccess := jSqliteDataAccess1.CreateTable('CREATE TABLE IF NOT EXISTS brands(id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR(200), name VARCHAR(200), address VARCHAR(200), email VARCHAR(200), telephone VARCHAR(200), site VARCHAR(200), creation_date VARCHAR(200);');
  if querySuccess then begin
     ShowMessage('A tabela shops foi criada');
  end else
      ShowMessage('Falhou! A tabela shops não foi criada');
end;


end.

