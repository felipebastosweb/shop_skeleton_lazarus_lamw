unit migration_currency_create;

{$mode delphi}

interface

uses
  Classes, SysUtils;


type
  TMigrationCurrencyCreate = class
    jSqliteCursor1: jSqliteCursor;
    jSqliteDataAccess1: jSqliteDataAccess;
    procedure CreateCurrencyTable;
  end;



implementation
                
procedure TMigrationCurrencyCreate.CreateCurrencyTable;
var
  querySuccess : Boolean;
begin
  // create shops table
  querySuccess := jSqliteDataAccess1.CreateTable('CREATE TABLE IF NOT EXISTS currencies(id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR(200), money_name VARCHAR(200), fator_multiplicative INT, decimal_places INT, default boolean, enabled boolean, initial_date VARCHAR(200), finish_date VARCHAR(200), creation_date VARCHAR(200);');
  if querySuccess then begin
     ShowMessage('A tabela currencies foi criada');
  end else
      ShowMessage('Falhou! A tabela currencies não foi criada');
end;



end.

