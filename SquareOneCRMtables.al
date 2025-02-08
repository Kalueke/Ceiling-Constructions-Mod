/*tableextension 50105 "CRM Product Extension" extends "CRM Product"
{
    fields
    {
        field(50100; "advic_productedgedetail"; Text[100])
        {
            Caption = 'Product Edge Detail';
            Description = 'The shape of the edge of the tile';
            ExternalName = 'advic_productedgedetail';
            ExternalType = 'string';
        }
        field(50101; "advic_productcolor"; Text[100])
        {
            Caption = 'Product Color';
            Description = 'The color of the tile';
            ExternalName = 'advic_productcolor';
            ExternalType = 'String';

        }
        field(50102; "advic_productpiecepercarton"; Text[100])
        {
            Caption = 'Product Piece per Carton';
            Description = 'This tells us how many piece are in a carton';
            ExternalName = 'advic_productpiecepercarton';
            ExternalType = 'String';

        }
        field(50103; "advic_productsqfeetpercarton"; Decimal)
        {
            Caption = 'Product SQ Feet per Carton';
            Description = 'This shows the square feet in a carton';
            ExternalName = 'advic_productsqfeetpercarton';
            ExternalType = 'Decimal';

        }
        field(50104; "advic_productunitcostpersqfeet"; Decimal)
        {
            Caption = 'Product Unit Cost per SQ Feet';
            Description = 'This is the unit cost per square feet';
            ExternalName = 'advic_productunitcostpersqfeet';
            ExternalType = 'Currency';

        }
        field(50105; "Product Cost per Piece"; Decimal)
        {
            Caption = 'Product Cost per Piece';

        }
        field(50106; "Product Cost per Carton"; Decimal)
        {
            Caption = 'Product Cost per Carton';

        }
    }
}*/