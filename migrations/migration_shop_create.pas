unit migration_shop_create;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TMigrationShopCreate = class
    jSqliteCursor1: jSqliteCursor;
    jSqliteDataAccess1: jSqliteDataAccess;  
    procedure CreateShopTable;
  end;



implementation

procedure TMigrationShopCreate.CreateShopTable;
var
  querySuccess : Boolean;
begin
  // create shops table
  querySuccess := jSqliteDataAccess1.CreateTable('CREATE TABLE IF NOT EXISTS shops(id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR(200), user_id INTEGER, name VARCHAR(200), fantasy_name VARCHAR(200), address VARCHAR(200), email VARCHAR(200), telephone VARCHAR(200), site VARCHAR(200), federal_number VARCHAR(200), zone_number VARCHAR(200), district_number VARCHAR(200), creation_date VARCHAR(200), FOREIGN KEY(user_id) REFERENCES users(id));');
  if querySuccess then begin
     ShowMessage('A tabela shops foi criada');
  end else
      ShowMessage('Falhou! A tabela shops não foi criada');
end;

end.

