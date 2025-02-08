tableextension 50103 "Inventory Setup Extension" extends "Inventory Setup"
{
    fields
    {
        field(50100; "Shortcut Attribute 1"; Integer)
        {
            Caption = 'Shortcut Attribute 1';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50101; "Shortcut Attribute 2"; Integer)
        {
            Caption = 'Shortcut Attribute 2';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50102; "Shortcut Attribute 3"; Integer)
        {
            Caption = 'Shortcut Attribute 3';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50103; "Shortcut Attribute 4"; Integer)
        {
            Caption = 'Shortcut Attribute 4';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50104; "Shortcut Attribute 5"; Integer)
        {
            Caption = 'Shortcut Attribute 5';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50105; "Shortcut Attribute 6"; Integer)
        {
            Caption = 'Shortcut Attribute 6';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50106; "Shortcut Attribute 7"; Integer)
        {
            Caption = 'Shortcut Attribute 7';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50107; "Shortcut Attribute 8"; Integer)
        {
            Caption = 'Shortcut Attribute 8';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50108; "Shortcut Attribute 9"; Integer)
        {
            Caption = 'Shortcut Attribute 9';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50109; "Shortcut Attribute 10"; Integer)
        {
            Caption = 'Shortcut Attribute 10';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
    }
}

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


pageextension 50104 "Inventory Setup Extension" extends "Inventory Setup"
{
    layout
    {
        addafter(Numbering)
        {
            group("Item Attributes Setup")
            {
                Caption = 'Item Attributes Setup';

                field("Shortcut Attribute 1"; Rec."Shortcut Attribute 1")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Attribute 2"; Rec."Shortcut Attribute 2")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Attribute 3"; Rec."Shortcut Attribute 3")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Attribute 4"; Rec."Shortcut Attribute 4")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Attribute 5"; Rec."Shortcut Attribute 5")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Attribute 6"; Rec."Shortcut Attribute 6")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Attribute 7"; Rec."Shortcut Attribute 7")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Attribute 8"; Rec."Shortcut Attribute 8")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Attribute 9"; Rec."Shortcut Attribute 9")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Attribute 10"; Rec."Shortcut Attribute 10")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

pageextension 50105 "Item List Extension" extends "Item List"
{
    layout
    {
        addafter("Unit Cost")
        {
            field("Shortcut Item Attribute 1"; ShortcutAttribute1)
            {
                CaptionClass = '1,5,,' + Caption01;
                Visible = Visible01;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
            field("Shortcut Item Attribute 2"; ShortcutAttribute2)
            {
                CaptionClass = '1,5,,' + Caption02;
                Visible = Visible02;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
            field("Shortcut Item Attribute 3"; ShortcutAttribute3)
            {
                CaptionClass = '1,5,,' + Caption03;
                Visible = Visible03;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
            field("Shortcut Item Attribute 4"; ShortcutAttribute4)
            {
                CaptionClass = '1,5,,' + Caption04;
                Visible = Visible04;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
            field("Shortcut Item Attribute 5"; ShortcutAttribute5)
            {
                CaptionClass = '1,5,,' + Caption05;
                Visible = Visible05;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
            field("Shortcut Item Attribute 6"; ShortcutAttribute6)
            {
                CaptionClass = '1,5,,' + Caption06;
                Visible = Visible06;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
            field("Shortcut Item Attribute 7"; ShortcutAttribute7)
            {
                CaptionClass = '1,5,,' + Caption07;
                Visible = Visible07;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
            field("Shortcut Item Attribute 8"; ShortcutAttribute8)
            {
                CaptionClass = '1,5,,' + Caption08;
                Visible = Visible08;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
            field("Shortcut Item Attribute 9"; ShortcutAttribute9)
            {
                CaptionClass = '1,5,,' + Caption09;
                Visible = Visible09;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
            field("Shortcut Item Attribute 10"; ShortcutAttribute10)
            {
                CaptionClass = '1,5,,' + Caption10;
                Visible = Visible10;
                ApplicationArea = All;
                Editable = true;

                trigger OnValidate()
                begin
                    UpdateShortcutAttributes();
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        LoadShortcutCaptions();
        LoadShortcutValues();
    end;

    local procedure LoadShortcutCaptions()
    var
        ItemAttribute: Record "Item Attribute";
        InventorySetup: Record "Inventory Setup";
    begin
        // Clear all caption and visibility variables
        Clear(Caption01);
        Clear(Caption02);
        Clear(Caption03);
        Clear(Caption04);
        Clear(Caption05);
        Clear(Caption06);
        Clear(Caption07);
        Clear(Caption08);
        Clear(Visible01);
        Clear(Visible02);
        Clear(Visible03);
        Clear(Visible04);
        Clear(Visible05);
        Clear(Visible06);
        Clear(Visible07);
        Clear(Visible08);
        Clear(Visible09);
        Clear(Visible10);

        if InventorySetup.Get() then begin
            // Load captions and visibility for attributes 1 to 8
            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 1") then begin
                Caption01 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible01 := true;
            end;

            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 2") then begin
                Caption02 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible02 := true;
            end;

            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 3") then begin
                Caption03 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible03 := true;
            end;

            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 4") then begin
                Caption04 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible04 := true;
            end;

            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 5") then begin
                Caption05 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible05 := true;
            end;

            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 6") then begin
                Caption06 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible06 := true;
            end;

            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 7") then begin
                Caption07 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible07 := true;
            end;

            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 8") then begin
                Caption08 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible08 := true;
            end;

            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 9") then begin
                Caption09 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible09 := true;
            end;

            if ItemAttribute.Get(InventorySetup."Shortcut Attribute 10") then begin
                Caption10 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visible10 := true;
            end;
        end;
    end;

    local procedure LoadShortcutValues()
    var
        ItemAttributeValueMap: Record "Item Attribute Value Mapping";
        ItemAttributeValue: Record "Item Attribute Value";
        InventorySetup: Record "Inventory Setup";
    begin
        // Clear all shortcut attribute values
        Clear(ShortcutAttribute1);
        Clear(ShortcutAttribute2);
        Clear(ShortcutAttribute3);
        Clear(ShortcutAttribute4);
        Clear(ShortcutAttribute5);
        Clear(ShortcutAttribute6);
        Clear(ShortcutAttribute7);
        Clear(ShortcutAttribute8);
        Clear(ShortcutAttribute9);
        Clear(ShortcutAttribute10);

        if InventorySetup.Get() then begin
            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 1") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute1 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 2") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute2 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 3") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute3 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 4") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute4 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 5") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute5 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 6") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute6 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 7") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute7 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 8") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute8 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 9") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute9 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Attribute 10") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShortcutAttribute10 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);
        end;
    end;

    local procedure UpdateShortcutAttributes()
    var
        InventorySetup: Record "Inventory Setup";
    begin
        if not InventorySetup.Get() then
            exit;

        // Update attributes with error handling
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 1", ShortcutAttribute1);
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 2", ShortcutAttribute2);
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 3", ShortcutAttribute3);
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 4", ShortcutAttribute4);
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 5", ShortcutAttribute5);
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 6", ShortcutAttribute6);
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 7", ShortcutAttribute7);
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 8", ShortcutAttribute8);
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 9", ShortcutAttribute9);
        UpdateShortcutAttribute(InventorySetup."Shortcut Attribute 10", ShortcutAttribute10);
    end;


    local procedure UpdateShortcutAttribute(AttributeID: Integer; ShortcutValue: Text[250])
    var
        ItemAttributeValueMap: Record "Item Attribute Value Mapping";
        ItemAttributeValue: Record "Item Attribute Value";
    begin
        if AttributeID = 0 then
            exit; // No valid attribute ID to update

        if ShortcutValue = '' then
            exit; // Skip if no value is provided

        // Attempt to find the mapping
        if not ItemAttributeValueMap.Get(Database::Item, Rec."No.", AttributeID) then begin
            // Insert new mapping if it doesn't exist
            ItemAttributeValueMap.Init();
            ItemAttributeValueMap."Table ID" := Database::Item;
            ItemAttributeValueMap."No." := Rec."No.";
            ItemAttributeValueMap."Item Attribute ID" := AttributeID;

            // Find or create the attribute value
            if not ItemAttributeValue.Get(AttributeID, ShortcutValue) then begin
                ItemAttributeValue.Init();
                ItemAttributeValue."Attribute ID" := AttributeID;
                ItemAttributeValue.Value := ShortcutValue;
                ItemAttributeValue.Insert(true);
            end;

            ItemAttributeValueMap."Item Attribute Value ID" := ItemAttributeValue.ID;
            ItemAttributeValueMap.Insert(true);
        end else begin
            // Update existing mapping
            if ItemAttributeValue.Get(AttributeID, ShortcutValue) then begin
                ItemAttributeValueMap."Item Attribute Value ID" := ItemAttributeValue.ID;
                ItemAttributeValueMap.Modify(true);
            end;
        end;
    end;

    var
        ShortcutAttribute1, ShortcutAttribute2, ShortcutAttribute3, ShortcutAttribute4 : Text[250];
        ShortcutAttribute5, ShortcutAttribute6, ShortcutAttribute7, ShortcutAttribute8, ShortcutAttribute9, ShortcutAttribute10 : Text[250];
        Caption01, Caption02, Caption03, Caption04, Caption05, Caption06, Caption07, Caption08, Caption09, Caption10 : Text[50];
        Visible01, Visible02, Visible03, Visible04, Visible05, Visible06, Visible07, Visible08, Visible09, Visible10 : Boolean;
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

