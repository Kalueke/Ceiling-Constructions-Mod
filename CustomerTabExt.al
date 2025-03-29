Tableextension 50104 "Customer Card Extension" extends "customer"
{
    fields
    {
        field(50100; "Company Type"; Code[100])
        {
            TableRelation = "Account Type";
            Caption = 'Company Type';
            DataClassification = CustomerContent;

        }
    }
}

pageextension 50106 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field("Company Type"; Rec."Company Type")
            {
                ApplicationArea = All;
            }
        }
    }
}