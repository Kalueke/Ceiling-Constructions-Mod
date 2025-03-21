// -------------------------------------------------------
// TABLE: Account Type
// -------------------------------------------------------
table 50150 "Account Type"
{
    Caption = 'Account Type';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}

// -------------------------------------------------------
// PAGE: Account Type List
// -------------------------------------------------------
page 50150 "Account Type List"
{
    Caption = 'Account Type List';
    PageType = List;
    SourceTable = "Account Type";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
