unit user_model;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  UserModel = class
    Username : string;
    Password : string;
    Email : string;
    Telephone : string;
    KeepConnected : Boolean;
    CreationDate : string;
    UpdateDate : string;
  end;

implementation

end.

