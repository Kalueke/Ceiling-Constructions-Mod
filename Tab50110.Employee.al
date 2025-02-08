table 50110 Employees
{
    Caption = 'Employee';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[20])
        {
            Caption = 'ID';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; "Date of Joining"; DateTime)
        {
            Caption = 'Date of Joining';
        }
        field(4; Role; Option)
        {
            Caption = 'Role';
            OptionCaption = '';
            OptionMembers = blank;
        }
        field(5; Department; Option)
        {
            Caption = 'Department';
            OptionCaption = '';
            OptionMembers = blank;
        }
        field(6; "Salary "; Integer)
        {
            Caption = 'Salary ';
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
