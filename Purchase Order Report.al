reportextension 50100 "Purchase Order Report Ext" extends "Standard Purchase - Order"
{
    dataset
    {
        modify(Desc_PurchLine)
        {

        }

        // Add a new field to the Purchase Line table to display the Item Base UoM
        // and the Quantity in Item UoM and Item UoM Unit Price.    
        add("Purchase Line")
        {
            column(Item_Base_UoM; "Item Base UoM")
            {

            }
            column(Quantity_in_Item_UoM; "Quantity in Item UoM")
            {

            }
            column(Item_UoM_Unit_Price; "Item UoM Unit Price")
            {

            }
        }
    }
    rendering
    {
        layout(Word1)
        {
            Type = Word;
            Caption = 'Word1';
            Summary = 'added columns to the report';
            LayoutFile = 'Purchase Order Report.docx';
        }
    }
    trigger OnPreReport()
    var
        PurchaseLine: Record "Purchase Line";
        ItemRec: Record Item;
        ItemUoMRec: Record "Item Unit of Measure";
    begin
        // Loop through the Purchase Line records and set the values for the new fields


    end;
}