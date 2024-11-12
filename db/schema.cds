namespace qm002ns;

entity Entity1
{
    key ID : UUID;
    Name : String(100);
    Lastname : String(100);
    Age : Integer;
}

entity Kafi
{
    key ID : UUID;
    Schoggi : String(100);
    Branch : String(100);
    Neu : String(100);
}

entity Employee
{
    key ID : UUID;
    firstName : String(100);
    lastName : String(100);
    PID : String(100);
    team : Association to one Team;
}

entity Team
{
    key ID : UUID;
    teamName : String(100);
    teamDay : Integer;
    employees : Association to many Employee on employees.team = $self;
}
