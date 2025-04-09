// -------------------------------------------------------
// TABLE: Account Type
// -------------------------------------------------------
table 50103 "Account Type"
{
    Caption = 'Account Type';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[30])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Name; Text[100])
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
page 50101 "Account Type List"
{
    Caption = 'Account Type List';
    PageType = List;
    SourceTable = "Account Type";
    UsageCategory = Lists;
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
                    ToolTip = 'These are types of accounts in the CRM';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the name of the account as it is shown in CRM';
                }
            }
        }
    }
}
