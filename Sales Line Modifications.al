// -------------------------------------------------------
// TABLE EXTENSION (for Sales Line)
// -------------------------------------------------------
tableextension 50110 CTN_SalesLine extends "Sales Line"
{
    fields
    {
        field(50101; "Quantity in Item UoM"; Decimal)
        {
            Caption = 'Quantity in Item UoM';
            DecimalPlaces = 0 : 5;
            ToolTip = 'Displays the primary UOM quantity (SQ FT or Linear FT) per carton. The value is calculated by multiplying Qty. to Receive (cartons) by the conversion factor on the Item record (Product SQ Feet per Carton or Product Linear Feet per Carton).';
        }
        field(50102; "Item Base UoM"; Code[10])
        {
            Caption = 'Base UoM';
            ToolTip = 'Displays the base unit of measure for the item.';
            TableRelation = "Unit of Measure";
        }
        field(50103; "Item UoM Unit Price"; Decimal)
        {
            Caption = 'Item UoM Unit Price';
            ToolTip = 'Displays the unit price in the base unit of measure for the item.';
            DecimalPlaces = 0 : 5;
        }
        field(50104; "Extended Description"; Text[250])
        {
            Caption = 'Extended Description';
            ToolTip = 'Displays the extended description of the item.';
            trigger OnValidate()
            var
                ItemRec: Record Item;
            begin
                if ItemRec.Get(Rec."No.") then begin
                    Rec."Extended Description" := ItemRec.Description;
                end else begin
                    Rec."Extended Description" := '';
                end;
            end;
        }
    }
}

// -------------------------------------------------------
// PAGE EXTENSION (Sales Order Subform)
// -------------------------------------------------------
pageextension 50111 SalesLineExt_Order extends "Sales Order Subform"
{
    layout
    {
        addafter("Unit Price")
        {

            field("Item Base UoM"; GetBaseUoM())
            {
                ToolTip = 'Displays the base unit of measure for the item.';
                ApplicationArea = All;
            }
            field("Quantity in Item UoM"; GetUnitPerCarton())
            {
                ToolTip = 'Displays the total quantity in SQ FT or Linear FT per carton based on Qty. to Receive. Defaults to Qty. to Receive when not CTN.';
                ApplicationArea = All;
            }
            field("Item UoM Unit Price"; GetItemUoMUnitPrice())
            {
                ToolTip = 'Displays the unit price in the base unit of measure for the item.';
                ApplicationArea = All;
            }
        }


    }
    local procedure GetUnitPerCarton(): Decimal
    var
        ItemRec: Record Item;
        ItemUoMRec: Record "Item Unit of Measure";
    begin
        if Rec.Type = Rec.Type::Item then
            if ItemRec.Get(Rec."No.") then
                if Rec."Unit of Measure Code" = 'CTN' then
                    if ItemRec."Product SQ Feet per Carton" > 0 then
                        exit(Rec."Qty. to Ship" * ItemRec."Product SQ Feet per Carton")
                    else
                        if ItemRec."Product Linear Feet per Carton" > 0 then
                            exit(Rec."Qty. to Ship" * ItemRec."Product Linear Feet per Carton");

        if Rec."Unit of Measure Code" = 'BUNDLE' then
            exit(Rec."Qty. to Ship" * 100)
        else
            if Rec."Unit of Measure Code" = 'BOX' then
                exit(Rec."Qty. to Ship" * 200); // 

        exit(Rec."Qty. to Ship"); // fallback;

    end;

    local procedure GetBaseUoM(): Code[10]
    var
        ItemRec: Record Item;
    begin
        if Rec.Type = Rec.Type::item then
            if ItemRec.Get(Rec."No.") then
                exit(ItemRec."Base Unit of Measure");
        exit(''); // fallback
    end;

    local procedure GetItemUoMUnitPrice(): Decimal
    var
        ItemRec: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then
            if ItemRec.Get(Rec."No.") then
                if ItemRec."Base Unit of Measure" = Rec."Unit of Measure Code" then
                    exit(Rec."Unit Price")
                else
                    if ItemRec."Product SQ Feet per Carton" > 0 then
                        exit(Rec."Unit Price" / ItemRec."Product SQ Feet per Carton")
                    else
                        if ItemRec."Product Linear Feet per Carton" > 0 then
                            exit(Rec."Unit Price" / ItemRec."Product Linear Feet per Carton")
                        else
                            if ItemRec."Sales Unit of Measure" = Rec."Unit of Measure Code" then
                                if Rec."Unit of Measure Code" = 'BUNDLE' then
                                    exit(Rec."Unit Price" / 100)
                                else
                                    if Rec."Unit of Measure Code" = 'BOX' then
                                        exit(Rec."Unit Price" / 200)
                                    else
                                        if ItemRec."Sales Unit of Measure" = ItemRec."Base Unit of Measure" then
                                            exit(Rec."Unit Price");
        exit(Rec."Unit Price");
    end;
    // fallback
}





// -------------------------------------------------------
// PAGE EXTENSION (Sales Quote Subform)
// -------------------------------------------------------
pageextension 50112 SalesLineExt_Quote extends "Sales Quote Subform"
{
    layout
    {

        addafter("Unit Price")
        {
            field("Item Base UoM"; GetBaseUoM())
            {
                ToolTip = 'Displays the base unit of measure for the item.';
                ApplicationArea = All;
            }
            field("Quantity in Item UoM"; GetUnitPerCarton())
            {
                ToolTip = 'Displays the total quantity in SQ FT or Linear FT per carton based on Qty. to Receive. Defaults to Qty. to Receive when not CTN.';
                ApplicationArea = All;
            }
            field("Item UoM Unit Price"; GetItemUoMUnitPrice())
            {
                ToolTip = 'Displays the unit price in the base unit of measure for the item.';
                ApplicationArea = All;
            }
        }

    }


    local procedure GetUnitPerCarton(): Decimal
    var
        ItemRec: Record Item;
        ItemUoMRec: Record "Item Unit of Measure";
    begin
        if Rec.Type = Rec.Type::Item then
            if ItemRec.Get(Rec."No.") then
                if Rec."Unit of Measure Code" = 'CTN' then
                    if ItemRec."Product SQ Feet per Carton" > 0 then
                        exit(Rec."Qty. to Ship" * ItemRec."Product SQ Feet per Carton")
                    else
                        if ItemRec."Product Linear Feet per Carton" > 0 then
                            exit(Rec."Qty. to Ship" * ItemRec."Product Linear Feet per Carton");

        if Rec."Unit of Measure Code" = 'BUNDLE' then
            exit(Rec."Qty. to Ship" * 100)
        else
            if Rec."Unit of Measure Code" = 'BOX' then
                exit(Rec."Qty. to Ship" * 200); // 

        exit(Rec."Qty. to Ship"); // fallback;

    end;

    local procedure GetBaseUoM(): Code[10]
    var
        ItemRec: Record Item;
    begin
        if Rec.Type = Rec.Type::item then
            if ItemRec.Get(Rec."No.") then
                exit(ItemRec."Base Unit of Measure");
        exit(''); // fallback
    end;

    local procedure GetItemUoMUnitPrice(): Decimal
    var
        ItemRec: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then
            if ItemRec.Get(Rec."No.") then
                if ItemRec."Base Unit of Measure" = Rec."Unit of Measure Code" then
                    exit(Rec."Unit Price")
                else
                    if ItemRec."Product SQ Feet per Carton" > 0 then
                        exit(Rec."Unit Price" / ItemRec."Product SQ Feet per Carton")
                    else
                        if ItemRec."Product Linear Feet per Carton" > 0 then
                            exit(Rec."Unit Price" / ItemRec."Product Linear Feet per Carton")
                        else
                            if ItemRec."Sales Unit of Measure" = Rec."Unit of Measure Code" then
                                if Rec."Unit of Measure Code" = 'BUNDLE' then
                                    exit(Rec."Unit Price" / 100)
                                else
                                    if Rec."Unit of Measure Code" = 'BOX' then
                                        exit(Rec."Unit Price" / 200)
                                    else
                                        if ItemRec."Sales Unit of Measure" = ItemRec."Base Unit of Measure" then
                                            exit(Rec."Unit Price");
        exit(Rec."Unit Price");
    end;

}
