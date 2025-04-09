table 50101 "Opportunity Line"
{
    Caption = 'Opportunity Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Opportunity No."; Code[20])
        {
            Caption = 'Opportunity No.';
            DataClassification = CustomerContent;
            TableRelation = Opportunity."No.";
        }

        field(3; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
            DataClassification = CustomerContent;
            TableRelation = "Sales Header"."No.";
        }

        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }

        // New Type field with only Item and Resource options
        field(5; Type; Option)
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            OptionMembers = "",Item,Resource;
            OptionCaption = '"",Item,Resource';
        }

        field(6; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            TableRelation = Item; // Dummy to allow TableRelation but won't be used for Resource
            ValidateTableRelation = false;

            trigger OnLookup()
            var
                ItemLookupPage: Page "Item Lookup";
                ItemRec: Record Item;
                ResourceRec: Record Resource;
            begin
                if Type = Type::Item then begin
                    ItemLookupPage.SetTableView(ItemRec);
                    if ItemLookupPage.RunModal = Action::LookupOK then
                        ItemLookupPage.GetRecord(ItemRec);
                    "No." := ItemRec."No.";
                end else
                    Message('Lookup not available for this type.');
            end;
        }


        field(11; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
            TableRelation =
                if (Type = const(Item))
                    Item.Description where(Blocked = const(false), "Sales Blocked" = const(false))
            else if (Type = const(Resource))
                    Resource.Name;


            ValidateTableRelation = false;
        }

        field(13; "Unit of Measure"; Text[50])
        {
            Caption = 'Unit of Measure';
            DataClassification = CustomerContent;
            TableRelation = if (Type = filter(<> '')) "Unit of Measure".Description;
            ValidateTableRelation = false;
        }

        field(15; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }

        field(16; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "External Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}



page 50103 "Opportunity Line Subform"
{
    PageType = ListPart;
    SourceTable = "Opportunity Line";
    Caption = 'Lines';
    DelayedInsert = true;
    MultipleNewLines = true;


    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of entity for this line (Item or Resource).';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the item or resource number.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Displays the description of the item or resource.';
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Indicates the unit of measure for the item (e.g., piece, box, kg).';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity of the item or resource for this line.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total amount for this line, calculated based on quantity and unit price.';
                }
            }
        }
    }
}





pageextension 50101 AddLines extends "Opportunity Card"

{
    layout
    {
        addafter(General)
        {

            part(Control26; "Opportunity Line Subform")
            {
                ApplicationArea = RelationshipMgmt;
                SubPageLink = "Opportunity No." = field("No.");
            }
        }
    }
}