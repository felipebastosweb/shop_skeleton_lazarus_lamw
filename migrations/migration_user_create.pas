unit migration_user_create;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TMigrationUserCreate = class
    jSqliteCursor1: jSqliteCursor;
    jSqliteDataAccess1: jSqliteDataAccess;
    procedure CreateUserTable;      
    procedure CreatePermissionTable;
    procedure CreateRoleTable;
  end;



implementation

procedure TMigrationUserCreate.CreateUserTable;
var
  querySuccess : Boolean;
begin
  // create users table
  querySuccess := jSqliteDataAccess1.CreateTable('CREATE TABLE IF NOT EXISTS users(id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR(200), username CHAR(16), password CHAR(200), email CHAR(200), telephone CHAR(20), lastAccess TEXT, createdAtDate TEXT);');
  if querySuccess then begin
     ShowMessage('A tabela users foi criada');
  end else
      ShowMessage('Falhou! A tabela users não foi criada');
end;

procedure TMigrationUserCreate.CreatePermissionTable;
begin
  // create permissions table
end;

procedure TMigrationUserCreate.CreateRoleTable;
var
  querySuccess : Boolean;
begin
  // create roles table
  querySuccess := jSqliteDataAccess1.CreateTable('CREATE TABLE IF NOT EXISTS roles(id INTEGER PRIMARY KEY AUTOINCREMENT, title CHAR(200), description TEXT);');
  if querySuccess then begin
     ShowMessage('A tabela roles foi criada');
  end else
     ShowMessage('Falhou! A tabela roles não foi criada');
end;

end.

