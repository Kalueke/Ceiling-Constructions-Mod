

tableextension 50102 CTN extends "Purchase Line"
{
    fields
    {
        field(10101; "Unit per Carton"; Decimal)
        {
            Caption = 'UOM per Carton';
            DecimalPlaces = 0 : 5;
            ToolTip = 'Displays the primary UOM quantity (SQ FT or Linear FT) per carton. The value is calculated by multiplying Qty. to Receive (cartons) by the conversion factor on the Item record (Product SQ Feet per Carton).';


        }
    }
}


pageextension 50108 PurchaseLineExt extends "Purchase Order Subform"
{
    layout
    {
        addafter("Direct Unit Cost")
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
                        exit(Rec."Qty. to Receive" * ItemRec."Product SQ Feet per Carton")
                    else
                        if ItemRec."Product Linear Feet per Carton" > 0 then
                            exit(Rec."Qty. to Receive" * ItemRec."Product Linear Feet per Carton");
                end;
                exit(Rec."Qty. to Receive"); // Fallback
            end;
        end;

        exit(0);
    end;
}
