// -------------------------------------------------------
// TABLE EXTENSION
// -------------------------------------------------------
tableextension 50100 ItemExtension extends Item
{
    fields
    {
        // These fields are Text for now. If you need arithmetic,
        // consider making them Decimal instead.
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

        field(50103; "Product Manufacturer"; Option)
        {
            Caption = 'Product Manufacturer';
            DataClassification = CustomerContent;
            OptionMembers = " ",Armstrong,Certainteed,USG,Generic,Rockfon;
            OptionCaptionML = ENU = 'Blank,ARMSTRONG,CERTAINTEED,USG,GENERIC,ROCKFON';

        }

        field(50104; "Product Edge Detail"; Option)
        {
            Caption = 'Product Edge Detail';
            DataClassification = CustomerContent;
            // For future flexibility, consider using an Enum object
            // instead of an Option if you may add more values over time.
            OptionMembers = "","Reveal Edge","Square Edge Lay-in",VROCK4,VROCK2,Reveal,"Beveled Tegular","Angled Tegular","Tegular Edge","Square Tegular",Vector,Square,"Chamfered Tegular","Beaded Tegular","Classic-Step Tegular","Classic-Step",Angled,"Square-short side Tegular-long side","Radiused Tegular","Cove Molding","Crown Molding","Wrapped Tegular","Flush Tegular","Snap-in Pan","Vector Edge","Narrow Reveal";
            OptionCaptionML = ENU = 'Blank,Reveal Edge,Square Edge Lay-in,VROCK4,VROCK2,Reveal,Beveled Tegular,Angled Tegular,Tegular Edge,Square Tegular,Vector,Square,Chamfered Tegular,Beaded Tegular,Classic-Step Tegular,Classic-Step,Angled,Square-short side Tegular-long side,Radiused Tegular,Cove Molding,Crown Molding,Wrapped Tegular,Flush Tegular,Snap-in Pan,Vector Edge,Narrow Reveal';
        }

        field(50105; "Product Color"; Option)
        {
            Caption = 'Product Color';
            DataClassification = CustomerContent;
            // Enforces valid color codes from the Color table
            //TableRelation = Color."Color Name";
            OptionMembers = " ",ADOBE,BLACK,"BLUE GREEN","BLUE MAUVE",CREAM,"DESERT SAND",FLAGSTONE,"FROST BLUE",HAZE,"LIGHT GREY","LIGHT ROSE",MIST,OATMEAL,"ONYX(BL)",OYSTER,"PEARL GREY",PLATINUM,"PRIMER WHITE","SUMMER WHEAT","TECH BLACK","WHITE AND TECH BLACK",WHITE,"WHITE WITH GRAY SPATTER";
            OptionCaptionML = ENU = 'Blank,ADOBE,BLACK,BLUE GREEN,BLUE MAUVE,CREAM,DESERT SAND,FLAGSTONE,FROST BLUE,HAZE,LIGHT GREY,LIGHT ROSE,MIST,OATMEAL,ONYX(BL),OYSTER,PEARL GREY,PLATINUM,PRIMER WHITE,SUMMER WHEAT,TECH BLACK,WHITE AND TECH BLACK,WHITE,WHITE WITH GRAY SPATTER';

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

        field(50110; "Product Cost per Carton"; Decimal)
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
            DataClassification = CustomerContent;
        }

        field(50113; "Grid type"; Option)
        {
            Caption = 'Grid type';
            DataClassification = CustomerContent;
            OptionMembers = " ","15/16","9/16";
            OptionCaptionML = ENU = 'Blank,15/16,9/16';
        }

        field(50114; "Product Linear Feet per Carton"; Decimal)
        {
            Caption = 'Product Linear Feet per Carton';
            DataClassification = CustomerContent;
        }

        field(50115; "Product Unit Cost per LFt"; Decimal)
        {
            Caption = 'Product Unit Cost per Linear Feet';
            DataClassification = CustomerContent;
        }




    }
}

// -------------------------------------------------------
// ITEM CARD EXTENSION
// -------------------------------------------------------
pageextension 50100 "Item Card Extension" extends "Item Card"
{
    layout
    {
        addafter(Description)
        {
            field("Product Manufacturer"; Rec."Product Manufacturer")
            {
                ApplicationArea = All;
            }
        }
        addafter("Prices & Sales")
        {
            group("Attributes")
            {
                field("Length"; Rec."Length")
                {
                    ApplicationArea = All;
                }

                field("Width"; Rec."Width")
                {
                    ApplicationArea = All;
                }

                field("Thickness"; Rec."Thickness")
                {
                    ApplicationArea = All;
                }

                field("Product Edge Detail"; Rec."Product Edge Detail")
                {
                    ApplicationArea = All;
                }

                field("Product Color"; Rec."Product Color")
                {
                    ApplicationArea = All;
                }

                field("Product Piece per Carton"; Rec."Product Piece per Carton")
                {
                    ApplicationArea = All;
                }

                field("Product SQ Feet per Carton"; Rec."Product SQ Feet per Carton")
                {
                    ApplicationArea = All;
                    Enabled = SQFeetEnabled;
                }

                field("Product Unit Cost per SQ Feet"; Rec."Product Unit Cost per SQ Feet")
                {
                    ApplicationArea = All;
                    Enabled = SQFeetEnabled;
                }

                field("Product Cost per Piece"; Rec."Product Cost per Piece")
                {
                    ApplicationArea = All;
                }

                field("Product Cost per Carton"; Rec."Product Cost per Carton")
                {
                    ApplicationArea = All;
                }

                field("NRC"; Rec."NRC")
                {
                    ApplicationArea = All;
                }

                field("Grid Type"; Rec."Grid type")
                {
                    ApplicationArea = All;
                    Enabled = GridEnabled;
                }

                field("Product Linear Feet per Carton"; Rec."Product Linear Feet per Carton")
                {
                    ApplicationArea = All;
                    Enabled = GridEnabled;
                }
                field("Product Unit Cost per LFt"; Rec."Product Unit Cost per LFt")
                {
                    ApplicationArea = All;
                    Enabled = GridEnabled;
                }


                // If you add the new fields for linear feet, you'd place them here too,
                // and manage their "Enabled" property depending on the logic.
            }
        }

        // Modify the out-of-the-box "Item Category Code" to refresh automatically
        modify("Item Category Code")
        {
            trigger OnAfterValidate()
            begin
                EnableGridField();
                CurrPage.Update();
            end;
        }
    }

    /*trigger OnOpenPage()
    begin
        EnableGridField();
    end;

    trigger OnAfterGetRecord()
    begin
        EnableGridField();
        CurrPage.Update(); // Ensures the UI updates when navigating
    end;
*/
    var
        GridEnabled: Boolean;
        SQFeetEnabled: Boolean;

    local procedure EnableGridField()
    begin
        // If the Item Category Code is "GRID CROSS-TEE" or "GRID MAIN-T", 
        // then we enable the Grid fields and disable the SQ Feet fields, etc.
        // Example logic:
        if (Rec."Item Category Code" = 'GRID CROSS-TEE') or
           (Rec."Item Category Code" = 'GRID MAIN-T')
        then begin
            GridEnabled := true;
            SQFeetEnabled := false;
        end else begin
            GridEnabled := false;
            SQFeetEnabled := true;
        end;
    end;
}

// -------------------------------------------------------
// ITEM LIST EXTENSION
// -------------------------------------------------------
pageextension 50102 "Item List Extension" extends "Item List"
{
    layout
    {
        addafter("Unit Cost")
        {
            field("Length"; Rec."Length")
            {
                ApplicationArea = All;
            }

            field("Width"; Rec."Width")
            {
                ApplicationArea = All;
            }

            field("Thickness"; Rec."Thickness")
            {
                ApplicationArea = All;
            }

            field("Product Edge Detail"; Rec."Product Edge Detail")
            {
                ApplicationArea = All;
            }

            field("Product Color"; Rec."Product Color")
            {
                ApplicationArea = All;
            }

            field("Product Piece per Carton"; Rec."Product Piece per Carton")
            {
                ApplicationArea = All;
            }

            field("Product SQ Feet per Carton"; Rec."Product SQ Feet per Carton")
            {
                ApplicationArea = All;
            }

            field("Product Unit Cost per SQ Feet"; Rec."Product Unit Cost per SQ Feet")
            {
                ApplicationArea = All;
            }

            field("Product Cost per Piece"; Rec."Product Cost per Piece")
            {
                ApplicationArea = All;
            }

            field("Product Cost per Carton"; Rec."Product Cost per Carton")
            {
                ApplicationArea = All;
            }

            field("Product Size"; Rec."product Size")
            {
                ApplicationArea = All;
            }

            field("NRC"; Rec."NRC")
            {
                ApplicationArea = All;
            }

            field("Grid Type"; Rec."Grid type")
            {
                ApplicationArea = All;
            }

            field("Product Linear Feet per Carton"; Rec."Product Linear Feet per Carton")
            {
                ApplicationArea = All;
            }
            // Add the new fields if needed.
        }
    }
}

// -------------------------------------------------------
// COLOR TABLE
// -------------------------------------------------------
table 50102 "Color"
{
    Caption = 'Color';
    DrillDownPageId = "Color List";
    LookupPageId = "Color List";


    fields
    {
        field(1; "Color ID"; Code[10])
        {
            Caption = 'Color ID';
        }
        field(2; "Color Name"; Text[50])
        {
            Caption = 'Color Name';
        }
        field(3; "Hex Code"; Text[7])
        {
            Caption = 'Hex Code';
            // e.g., #FFFFFF for white
        }
    }

    keys
    {
        key(PK; "Color ID")
        {
            Clustered = true;
        }
        key(Key1; "Color Name") { }
    }
}

// -------------------------------------------------------
// COLOR LIST PAGE
// -------------------------------------------------------
page 50102 "Color List"
{
    Caption = 'Color List';
    PageType = List;
    SourceTable = "Color";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Color ID"; Rec."Color ID")
                {
                    ApplicationArea = All;
                }
                field("Color Name"; Rec."Color Name")
                {
                    ApplicationArea = All;
                }
                field("Hex Code"; Rec."Hex Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
