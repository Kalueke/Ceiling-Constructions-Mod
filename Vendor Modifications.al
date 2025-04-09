tableextension 50105 "Vendor Card Extension" extends "Vendor"
{
    fields
    {
        field(50101; "Vendor Type"; Code[100])
        {
            TableRelation = "Account Type";
            Caption = 'Vendor Type';
            DataClassification = CustomerContent;
        }
    }
}


pageextension 50107 "Vendor Card Extension" extends "Vendor Card"
{
    layout
    {
        addafter(Name)
        {
            field("Vendor Type"; Rec."Vendor Type")
            {
                ApplicationArea = All;
            }
        }
    }
}
