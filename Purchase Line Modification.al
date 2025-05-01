

tableextension 50102 CTN extends "Purchase Line"
{
    fields
    {
        field(10101; "Quantity in Item UoM"; Decimal)
        {
            Caption = 'Quantity in Item UoM';
            DecimalPlaces = 0 : 5;
            ToolTip = 'Displays the primary UOM quantity (SQ FT or Linear FT) per carton. The value is calculated by multiplying Qty. to Receive (cartons) by the conversion factor on the Item record (Product SQ Feet per Carton).';
        }
        field(10102; "Item Base UoM"; Code[10])
        {
            Caption = 'Base UoM';
            ToolTip = 'Displays the base unit of measure for the item.';
            TableRelation = "Unit of Measure";
            DataClassification = CustomerContent;
        }
        field(10103; "Item UoM Unit Price"; Decimal)
        {
            Caption = 'Item UoM Unit Price';
            ToolTip = 'Displays the unit price in the base unit of measure for the item.';
            DecimalPlaces = 0 : 5;
            DataClassification = CustomerContent;
        }
    }

    trigger OnInsert()
    begin
        UpdateCalculatedFields();
    end;

    trigger OnModify()
    begin
        UpdateCalculatedFields();
    end;

    local procedure UpdateCalculatedFields()
    var
        ItemRec: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then begin
            if ItemRec.Get(Rec."No.") then begin
                // Calculate "Quantity in Item UoM"
                if Rec."Unit of Measure Code" = 'CTN' then begin
                    if ItemRec."Product SQ Feet per Carton" > 0 then
                        Rec."Quantity in Item UoM" := Rec."Qty. to Receive" * ItemRec."Product SQ Feet per Carton"
                    else if ItemRec."Product Linear Feet per Carton" > 0 then
                        Rec."Quantity in Item UoM" := Rec."Qty. to Receive" * ItemRec."Product Linear Feet per Carton"
                    else
                        Rec."Quantity in Item UoM" := Rec."Qty. to Receive"; // Fallback
                end;

                // Calculate "Item Base UoM"
                Rec."Item Base UoM" := ItemRec."Base Unit of Measure";

                // Calculate "Item UoM Unit Price"
                if ItemRec."Base Unit of Measure" = Rec."Unit of Measure Code" then
                    Rec."Item UoM Unit Price" := Rec."Direct Unit Cost"
                else if ItemRec."Product SQ Feet per Carton" > 0 then
                    Rec."Item UoM Unit Price" := Rec."Direct Unit Cost" / ItemRec."Product SQ Feet per Carton"
                else if ItemRec."Product Linear Feet per Carton" > 0 then
                    Rec."Item UoM Unit Price" := Rec."Direct Unit Cost" / ItemRec."Product Linear Feet per Carton"
                else
                    Rec."Item UoM Unit Price" := Rec."Direct Unit Cost"; // Fallback
            end;
        end;
    end;
}



pageextension 50108 PurchaseLineExt extends "Purchase Order Subform"
{
    layout
    {
        addafter("Direct Unit Cost")
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

    Procedure GetUnitPerCarton(): Decimal
    var
        ItemRec: Record Item;
        ItemUoMRec: Record "Item Unit of Measure";
    begin
        if Rec.Type = Rec.Type::Item then
            if ItemRec.Get(Rec."No.") then
                if Rec."Unit of Measure Code" = 'CTN' then
                    if ItemRec."Product SQ Feet per Carton" > 0 then
                        exit(Rec."Qty. to Receive" * ItemRec."Product SQ Feet per Carton")
                    else
                        if ItemRec."Product Linear Feet per Carton" > 0 then
                            exit(Rec."Qty. to Receive" * ItemRec."Product Linear Feet per Carton");

        if Rec."Unit of Measure Code" = 'BUNDLE' then
            exit(Rec."Qty. to Receive" * 100)
        else
            if Rec."Unit of Measure Code" = 'BOX' then
                exit(Rec."Qty. to Receive" * 200); // 

        exit(Rec."Qty. to Receive"); // fallback;

    end;

    Procedure GetBaseUoM(): Code[10]
    var
        ItemRec: Record Item;
    begin
        if Rec.Type = Rec.Type::item then
            if ItemRec.Get(Rec."No.") then
                exit(ItemRec."Base Unit of Measure");
        exit(''); // fallback
    end;

    procedure GetItemUoMUnitPrice(): Decimal
    var
        ItemRec: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then
            if ItemRec.Get(Rec."No.") then
                if ItemRec."Base Unit of Measure" = Rec."Unit of Measure Code" then
                    exit(Rec."Direct Unit Cost")
                else
                    if ItemRec."Product SQ Feet per Carton" > 0 then
                        exit(Rec."Direct Unit Cost" / ItemRec."Product SQ Feet per Carton")
                    else
                        if ItemRec."Product Linear Feet per Carton" > 0 then
                            exit(Rec."Direct Unit Cost" / ItemRec."Product Linear Feet per Carton")
                        else
                            if ItemRec."Purch. Unit of Measure" = Rec."Unit of Measure Code" then
                                if Rec."Unit of Measure Code" = 'BUNDLE' then
                                    exit(Rec."Direct Unit Cost" / 100)
                                else
                                    if Rec."Unit of Measure Code" = 'BOX' then
                                        exit(Rec."Direct Unit Cost" / 200)
                                    else
                                        if ItemRec."Purch. Unit of Measure" = ItemRec."Base Unit of Measure" then
                                            exit(Rec."Direct Unit Cost"); // fallback
        exit(Rec."Direct Unit Cost"); // fallback

    end;
    // fallback
}

// This extension adds a field to the Purchase Order List page to display the Job No. associated with the purchase line.
// The field is added after the "Buy-from Vendor Name" field in the layout.
// The field is named "Job No." and is of type "Job No." from the Purchase Line table.
// The field is added to the Purchase Order List page (Page 42) and has a caption of 'Job No.'.
// The field is set to be visible in all application areas and has a tooltip explaining its purpose.
pageextension 50109 PurchaseOrderListExt extends "Purchase Order List"
{
    layout
    {
        addafter("Buy-from Vendor Name")
        {
            field("Job No."; Rec."Description")
            {
                ApplicationArea = All;
                ToolTip = 'Displays the Job No. associated with the purchase line.';
            }
        }
    }
}

pageextension 50110 PurchaseInvoiceListExt extends "Purchase Invoices"
{
    layout
    {
        addafter("Buy-from Vendor Name")
        {
            field("Job No."; Rec."Description")
            {
                ApplicationArea = All;
                ToolTip = 'Displays the Job No. associated with the purchase line.';
            }
        }
    }
}


// This extension adds a FlowField to the Purchase Header table to calculate the Job No. associated with the purchase line.
// The field is named "Job No." and is of type Code[20].
// The field is added to the Purchase Header table (Table 38) and has a caption of 'Job No.'.
tableextension 50106 PurchaseHeaderExt extends "Purchase Header"
{
    fields
    {
        field(50100; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            FieldClass = FlowField;
            CalcFormula = Lookup("Purchase Line"."Job No." where("Document Type" = field("Document Type"),
                                                                 "Document No." = field("No.")));
        }
        field(50102; "Description"; Text[100])
        {
            Caption = 'Job Description';

            FieldClass = FlowField;
            CalcFormula = Lookup(Job.Description where("No." = field("Job No.")));
        }
    }
}