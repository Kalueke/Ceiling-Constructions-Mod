reportextension 50100 "Purchase Order Report Ext" extends "Standard Purchase - Order"
{
    dataset
    {
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
            column(Desc_Purchline_Url; "URL")
            {

            }
            column(Desc_Purchline_UrlText; "Extended Description")
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
    begin
        // Any pre-report logic can go here if needed.

    end;

    local procedure GetHyperlinkDescription(): Text[250]
    var
        ItemRec: Record Item;
    begin
        if ItemRec.Get("Purchase Line"."No.") then
            exit('<a href="' + ItemRec.URL + '">' + ItemRec.Description + '</a>')
        else
            exit(ItemRec.Description); // Fallback to plain text if no URL is available
    end;
}