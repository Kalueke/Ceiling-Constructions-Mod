// -------------------------------------------------------
// TABLE EXTENSION (for Sales Line)
// -------------------------------------------------------
tableextension 50110 CTN_SalesLine extends "Sales Line"
{
    fields
    {
        field(50101; "Unit per Carton"; Decimal)
        {
            Caption = 'UOM per Carton';
            DecimalPlaces = 0 : 5;
            ToolTip = 'Displays the primary UOM quantity (SQ FT or Linear FT) per carton. The value is calculated by multiplying Qty. to Receive (cartons) by the conversion factor on the Item record (Product SQ Feet per Carton or Product Linear Feet per Carton).';
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
        addafter("unit of measure code")
        {
            field("Unit per Carton"; GetUnitPerCarton())
            {
                ToolTip = 'Displays the total quantity in SQ FT or Linear FT per carton based on Qty. to Receive. Defaults to Qty. to Receive when not CTN.';
                ApplicationArea = All;
            }
        }

    }
    local procedure GetUnitPerCarton(): Decimal
    var
        ItemRec: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then begin
            if ItemRec.Get(Rec."No.") then begin
                if Rec."Unit of Measure Code" = 'CTN' then begin
                    if ItemRec."Product SQ Feet per Carton" > 0 then
                        exit(Rec."Qty. to ship" * ItemRec."Product SQ Feet per Carton")
                    else
                        if ItemRec."Product Linear Feet per Carton" > 0 then
                            exit(Rec."Qty. to ship" * ItemRec."Product Linear Feet per Carton");
                end;
                exit(Rec."Qty. to ship");
            end;
        end;

        exit(0);
    end;
}




// -------------------------------------------------------
// PAGE EXTENSION (Sales Quote Subform)
// -------------------------------------------------------
pageextension 50112 SalesLineExt_Quote extends "Sales Quote Subform"
{
    layout
    {
        addafter("Unit of Measure Code")
        {
            field("Unit per Carton"; GetUnitPerCarton())
            {
                ToolTip = 'Displays the total quantity in SQ FT or Linear FT per carton based on Qty. to Receive. Defaults to Qty. to Receive when not CTN.';
                ApplicationArea = All;
            }
        }
    }

    local procedure GetUnitPerCarton(): Decimal
    var
        ItemRec: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then begin
            if ItemRec.Get(Rec."No.") then begin
                if Rec."Unit of Measure Code" = 'CTN' then begin
                    if ItemRec."Product SQ Feet per Carton" > 0 then
                        exit(Rec."Qty. to ship" * ItemRec."Product SQ Feet per Carton")
                    else
                        if ItemRec."Product Linear Feet per Carton" > 0 then
                            exit(Rec."Qty. to ship" * ItemRec."Product Linear Feet per Carton");
                end;
                exit(Rec."Qty. to ship");
            end;
        end;

        exit(0);
    end;
}
