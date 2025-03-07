tableextension 50100 ItemExtension extends Item
{
    fields
    {
        field(50100; "Length"; Text[50])
        {
            Caption = 'Length';
            DataClassification = CustomerContent;
        }

        field(50101; "Width"; Text[50])
        {
            Caption = 'Width';
            DataClassification = CustomerContent;
        }

        field(50102; "Thickness"; Text[50])
        {
            Caption = 'Thickness';
            DataClassification = CustomerContent;
        }
        field(50104; "Product Edge Detail"; Option)
        {
            Caption = 'Product Edge Detail';
            DataClassification = CustomerContent;
            OptionMembers = "","Reveal Edge","Square Edge Lay-in",VROCK4,VROCK2,Reveal,"Beveled Tegular","Angled Tegular","Tegular Edge","Square Tegular",Vector,Square,"Chamfered Tegular","Beaded Tegular","Classic-Step Tegular","Classic-Step",Angled,"Square-short side Tegular-long side","Radiused Tegular","Cove Molding","Crown Molding","Wrapped Tegular","Flush Tegular","Snap-in Pan","Vector Edge","Narrow Reveal";
            OptionCaptionML = ENU = 'Blank,Reveal Edge,Square Edge Lay-in,VROCK4,VROCK2,Reveal,Beveled Tegular,Angled Tegular,Tegular Edge,Square Tegular,Vector,Square,Chamfered Tegular,Beaded Tegular,Classic-Step Tegular,Classic-Step,Angled,Square-short side Tegular-long side,Radiused Tegular,Cove Molding,Crown Molding,Wrapped Tegular,Flush Tegular,Snap-in Pan,Vector Edge,Narrow Reveal';
            //TableRelation = "CRM Product";
        }
        field(50105; "Product Color"; Code[10])
        {
            Caption = 'Product Color';
            DataClassification = CustomerContent;
            TableRelation = Color;
            ValidateTableRelation = false;
            //OptionMembers = "",Blue,White,"White with gray spatter",Adobe,"Tech Black",Cream,Haze,Platinum,Oyster,Black,"Onyx (BL)","Platinum (PL)","Haze (HA)","Tech Black (BL)","Summer Wheat",Flagstone,Mist,Oatmeal,"Pearl Grey","Light Rose","Frost Blue","Desert Sand","Blue Mauve","Blue Green","Primer White";
            //OptionCaptionML = ENU = 'Blank,Blue,White,White with gray spatter,Adobe,Tech Black,Cream,Haze,Platinum,Oyster,Black,Onyx (BL),Platinum (PL),Haze (HA),Summer Wheat,Flagstone,Mist,Oatmeal,Pearl Grey,Light Rose,Frost Blue,Desert Sand,Blue Mauve,Blue Green,Primer White';

        }
        field(50106; "Product Piece per Carton"; Text[100])
        {
            Caption = 'Product Piece per Carton';
            DataClassification = CustomerContent;

        }
        field(50107; "Product SQ Feet per Carton"; Decimal)
        {
            Caption = 'Product SQ Feet per Carton';
            DataClassification = CustomerContent;
        }
        field(50108; "Product Unit Cost per SQ Feet"; Decimal)
        {
            Caption = 'Product Unit Cost per SQ Feet';
            DataClassification = CustomerContent;
        }
        field(50109; "Product Cost per Piece"; Decimal)
        {
            Caption = 'Product Cost per Piece';
            DataClassification = CustomerContent;
        }
        field(501010; "Product Cost per Carton"; Decimal)
        {
            Caption = 'Product Cost per Carton';
            DataClassification = CustomerContent;
        }
        field(50111; "product Size"; Text[100])
        {
            Caption = 'product Size';
            DataClassification = CustomerContent;
        }
        field(50112; "NRC"; Text[100])
        {
            Caption = 'NRC';
            DataClassification = ToBeClassified;
        }
        field(50113; "Grid type"; Option)
        {
            Caption = 'Grid type';
            DataClassification = ToBeClassified;
            OptionMembers = " ","15/16","9/16";
            OptionCaptionML = ENU = 'Blank,15/16,9/16';
        }
        field(50114; "Linear Feet per Carton"; Decimal)
        {
            Caption = 'Linear Feet per Carton';
            DataClassification = ToBeClassified;
        }
    }
}

pageextension 50100 "Item Card Extension" extends "Item Card"
{
    layout
    {
        addafter("Prices & Sales")
        {
            group("Attributes")
            {
                field("Length"; Rec."Length")
                {
                    Caption = 'Length';
                    ApplicationArea = All;
                }

                field("Width"; Rec."Width")
                {
                    Caption = 'Width';
                    ApplicationArea = All;
                }

                field("Thickness"; Rec."Thickness")
                {
                    Caption = 'Thickness';
                    ApplicationArea = All;
                }

                field("Product Edge Detail"; Rec."Product Edge Detail")
                {
                    Caption = 'Product Edge Detail';
                    ApplicationArea = All;
                }

                field("Product Color"; Rec."Product Color")
                {
                    Caption = 'Product Color';
                    ApplicationArea = All;
                }

                field("Product Piece per Carton"; Rec."Product Piece per Carton")
                {
                    Caption = 'Product Piece per Carton';
                    ApplicationArea = All;
                }

                field("Product SQ Feet per Carton"; Rec."Product SQ Feet per Carton")
                {
                    Caption = 'Product SQ Feet per Carton';
                    ApplicationArea = All;
                }

                field("Product Unit Cost per SQ Feet"; Rec."Product Unit Cost per SQ Feet")
                {
                    Caption = 'Product Unit Cost per SQ Feet';
                    ApplicationArea = All;
                }

                field("Product Cost per Piece"; Rec."Product Cost per Piece")
                {
                    Caption = 'Product Cost per Piece';
                    ApplicationArea = All;
                }

                field("Product Cost per Carton"; Rec."Product Cost per Carton")
                {
                    Caption = 'Product Cost per Carton';
                    ApplicationArea = All;
                }

                field("NRC"; Rec."NRC")
                {
                    Caption = 'NRC';
                    ApplicationArea = All;
                }

                field("Grid Type"; Rec."Grid Type")
                {
                    Caption = 'Grid Type';
                    ApplicationArea = All;
                }

                field("Linear Feet per Carton"; Rec."Linear Feet per Carton")
                {
                    Caption = 'Linear Feet per Carton';
                    ApplicationArea = All;
                    Enabled = GridEnabled;

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        EnableGridField();
    end;

    var
        GridEnabled: Boolean;

    local procedure EnableGridField()

    begin
        GridEnabled := Rec."Item Category Code" = 'GRID';
    end;

    trigger OnAfterGetRecord()
    begin
        EnableGridField();
        CurrPage.Update(); // Ensures the UI updates when navigating records
    end;

}

pageextension 50102 "Item List Extension" extends "Item list"
{
    layout
    {
        addafter("Unit Cost")
        {
            field("Length"; Rec."Length")
            {
                Caption = 'Length';
                ApplicationArea = All;
            }

            field("Width"; Rec."Width")
            {
                Caption = 'Width';
                ApplicationArea = All;
            }

            field("Thickness"; Rec."Thickness")
            {
                Caption = 'Thickness';
                ApplicationArea = All;
            }

            field("Product Edge Detail"; Rec."Product Edge Detail")
            {
                Caption = 'Product Edge Detail';
                ApplicationArea = All;
            }

            field("Product Color"; Rec."Product Color")
            {
                Caption = 'Product Color';
                ApplicationArea = All;

            }

            field("Product Piece per Carton"; Rec."Product Piece per Carton")
            {
                Caption = 'Product Piece per Carton';
                ApplicationArea = All;
            }

            field("Product SQ Feet per Carton"; Rec."Product SQ Feet per Carton")
            {
                Caption = 'Product SQ Feet per Carton';
                ApplicationArea = All;
            }

            field("Product Unit Cost per SQ Feet"; Rec."Product Unit Cost per SQ Feet")
            {
                Caption = 'Product Unit Cost per SQ Feet';
                ApplicationArea = All;
            }

            field("Product Cost per Piece"; Rec."Product Cost per Piece")
            {
                Caption = 'Product Cost per Piece';
                ApplicationArea = All;
            }

            field("Product Cost per Carton"; Rec."Product Cost per Carton")
            {
                Caption = 'Product Cost per Carton';
                ApplicationArea = All;
            }

            field("Product Size"; Rec."Product Size")
            {
                Caption = 'Product Size';
                ApplicationArea = All;
            }

            field("NRC"; Rec."NRC")
            {
                Caption = 'NRC';
                ApplicationArea = All;
            }

            field("Grid Type"; Rec."Grid Type")
            {
                Caption = 'Grid Type';
                ApplicationArea = All;
            }

            field("Linear Feet per Carton"; Rec."Linear Feet per Carton")
            {
                Caption = 'Linear Feet per Carton';
                ApplicationArea = All;
            }
        }
    }
}

table 50102 "Color"
{
    Caption = 'Color';
    DrillDownPageId = "Color List";
    LookupPageId = "Color List";

    fields
    {
        field(1; "Color ID"; Code[10]) { }
        field(2; "Color Name"; Text[50]) { }
        field(3; "Hex Code"; Text[7]) { } // e.g., #FFFFFF for white
    }
    keys
    {
        key(PK; "Color ID") { Clustered = true; }
        key(Key1; "Color Name") { }
    }
}


page 50102 "Color List"
{
    PageType = List;
    SourceTable = "Color";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Color ID"; Rec."Color ID") { }
                field("Color Name"; Rec."Color Name") { }
                field("Hex Code"; Rec."Hex Code") { }
            }
        }
    }


}