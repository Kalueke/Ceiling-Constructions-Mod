Tableextension 50104 "Customer Card Extension" extends "customer"
{
    fields
    {
        field(50100; "Company Type"; Option)
        {
            OptionMembers = "",Architect,General_Contractor,Property_Manager,Designer,Drywall_Contractor,Other;
            OptionCaptionML = ENU = 'Blank,Architect,General Contractor,Property Manager,Designer,Drywall Contractor,Other';
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