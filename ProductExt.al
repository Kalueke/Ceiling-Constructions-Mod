tableextension 50109 ProductExt extends "CRM Product"
{
    Description = 'Information about products and their pricing information.';

    fields
    {
        field(10083; IsReparented; Boolean)
        {
            ExternalName = 'isreparented';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Is Reparented';
        }
        field(10085; msdyn_gdproptout; Boolean)
        {
            ExternalName = 'msdyn_gdproptout';
            ExternalType = 'Boolean';
            Description = 'Describes whether product is opted out or not';
            Caption = 'GDPR Optout';
        }
        field(10089; msdyn_ConvertToCustomerAsset; Boolean)
        {
            ExternalName = 'msdyn_converttocustomerasset';
            ExternalType = 'Boolean';
            Description = 'Specify whether a product is to be converted to a customer asset. When a product is used on a work order, the system will automatically convert it into a customer asset when the work order is closed.';
            Caption = 'Convert to Customer Asset';
        }
        field(10091; msdyn_DefaultVendor; GUID)
        {
            ExternalName = 'msdyn_defaultvendor';
            ExternalType = 'Lookup';
            Description = 'Default vendor that supplies this product';
            Caption = 'Default Vendor';
            TableRelation = "CRM Account".AccountId;
        }
        field(10092; msdyn_FieldServiceProductType; Option)
        {
            ExternalName = 'msdyn_fieldserviceproducttype';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Field Service Product Type';
            InitValue = " ";
            OptionMembers = " ",Inventory,"Non-Inventory",Service;
            OptionOrdinalValues = -1, 690970000, 690970001, 690970002;
        }
        field(10094; msdyn_PurchaseName; Text[100])
        {
            ExternalName = 'msdyn_purchasename';
            ExternalType = 'String';
            Description = 'Type the name for the product when used on a purchase order.';
            Caption = 'Purchase Name';
        }
        field(10095; msdyn_Taxable; Boolean)
        {
            ExternalName = 'msdyn_taxable';
            ExternalType = 'Boolean';
            Description = 'Select whether the item is taxable. If an item is set as not taxable, it won''t be taxable even on a taxable work order.';
            Caption = 'Taxable';
        }
        field(10097; msdyn_UPCCode; Text[50])
        {
            ExternalName = 'msdyn_upccode';
            ExternalType = 'String';
            Description = 'Shows the UPC Code for product. Used for bar code scanning.';
            Caption = 'UPC Code';
        }
        field(10102; advic_SQ1ProductType; Option)
        {
            ExternalName = 'advic_sq1producttype';
            ExternalType = 'Picklist';
            Description = 'The type of SQ1 product: Grid, ACT, Wire, Angle, Tool, Wire Component, etc.';
            Caption = 'Product Type';
            InitValue = " ";
            OptionMembers = " ",ACT,Grid,Wire,Angle,Fastners,Tool,WireComponent,Labor;
            OptionOrdinalValues = -1, 600890001, 600890000, 600890002, 600890003, 600890007, 600890004, 600890005, 600890006;
        }
        field(10104; advic_SQ1Size; Option)
        {
            ExternalName = 'advic_sq1size';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'SQ1 Size';
            InitValue = " ";
            OptionMembers = " ","2x2","2x4","2x5","2x6","2x8","4x4","2","4","12","20";
            OptionOrdinalValues = -1, 600890000, 600890001, 600890002, 600890003, 600890004, 600890005, 600890006, 600890007, 600890008, 600890009;
        }
        field(10106; advic_SQ1Manufacturer; Option)
        {
            ExternalName = 'advic_sq1manufacturer';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'SQ1 Manufacturer';
            InitValue = " ";
            OptionMembers = " ",Armstrong,Certainteed,USG,Generic;
            OptionOrdinalValues = -1, 600890000, 600890001, 600890002, 600890003;
        }
        field(10108; advic_SQ1SeismicClass; Option)
        {
            ExternalName = 'advic_sq1seismicclass';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'SQ1 Seismic Class';
            InitValue = " ";
            OptionMembers = " ",None,Intermediate,HeavyDuty;
            OptionOrdinalValues = -1, 600890000, 600890001, 600890002;
        }
        field(10110; advic_SQ1Edge; Option)
        {
            ExternalName = 'advic_sq1edge';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'SQ1 Edge';
            InitValue = " ";
            OptionMembers = " ",SquareEdge,AngledEdge;
            OptionOrdinalValues = -1, 600890000, 600890001;
        }
        field(10112; advic_SQ1916GridTypes; Option)
        {
            ExternalName = 'advic_sq1916gridtypes';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'SQ1 9/16 Grid Types';
            InitValue = " ";
            OptionMembers = " ",Suprafine,Interlude,"Silhouette1/8""Reveal","1/4""BoltSlot";
            OptionOrdinalValues = -1, 600890000, 600890001, 600890002, 600890003;
        }
        field(10114; advic_SQ1Color; Option)
        {
            ExternalName = 'advic_sq1color';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'SQ1 Color';
            InitValue = " ";
            OptionMembers = " ",White,Adobe,CreamHaze,Platinum,Oyster,TechBlack,Platinum1;
            OptionOrdinalValues = -1, 600890000, 600890001, 600890002, 600890003, 600890004, 600890005, 600890006;
        }
        field(10118; advic_productmanfacture; Text[100])
        {
            ExternalName = 'advic_productmanfacture';
            ExternalType = 'String';
            Description = '';
            Caption = 'Product Manfacture';
        }
        field(10119; advic_productsize; Text[100])
        {
            ExternalName = 'advic_productsize';
            ExternalType = 'String';
            Description = '';
            Caption = 'Product Size';
        }
        field(10120; advic_productedgedetail; Text[100])
        {
            ExternalName = 'advic_productedgedetail';
            ExternalType = 'String';
            Description = '';
            Caption = 'Product Edge Detail';
        }
        field(10121; advic_productcolor; Text[100])
        {
            ExternalName = 'advic_productcolor';
            ExternalType = 'String';
            Description = '';
            Caption = 'Product Color';
        }
        field(10122; advic_productpiecepercarton; Text[100])
        {
            ExternalName = 'advic_productpiecepercarton';
            ExternalType = 'String';
            Description = '';
            Caption = 'Product Piece per Carton';
        }
        field(10123; advic_productsqfeetpercarton; Decimal)
        {
            ExternalName = 'advic_productsqfeetpercarton';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Product SQ Feet per Carton';
        }
        field(10124; advic_productunitcostpersqfeet; Decimal)
        {
            ExternalName = 'advic_productunitcostpersqfeet';
            ExternalType = 'Money';
            Description = '';
            Caption = 'Product Unit Cost per SQ Feet';
        }
        field(10125; advic_productunitcostpersqfeet_Base; Decimal)
        {
            ExternalName = 'advic_productunitcostpersqfeet_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Product Unit Cost per SQ Feet in base currency.';
            Caption = 'Product Unit Cost per SQ Feet (Base)';
        }
        field(10126; advic_productcostperpiece; Decimal)
        {
            ExternalName = 'advic_productcostperpiece';
            ExternalType = 'Money';
            Description = '';
            Caption = 'Product Cost per Piece';
        }
        field(10127; advic_productcostperpiece_Base; Decimal)
        {
            ExternalName = 'advic_productcostperpiece_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Product Cost per Piece in base currency.';
            Caption = 'Product Cost per Piece (Base)';
        }
        field(10128; advic_productcostpercarton; Decimal)
        {
            ExternalName = 'advic_productcostpercarton';
            ExternalType = 'Money';
            Description = '';
            Caption = 'Product Cost per Carton';
        }
        field(10129; advic_productcostpercarton_Base; Decimal)
        {
            ExternalName = 'advic_productcostpercarton_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Product Cost per Carton in base currency.';
            Caption = 'Product Cost per Carton (Base)';
        }
        field(10130; advic_grid; Option)
        {
            ExternalName = 'advic_grid';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Grid';
            InitValue = " ";
            OptionMembers = " ","15/16","9/16";
            OptionOrdinalValues = -1, 600890000, 600890001;
        }
        field(10132; advic_choicesof916; Option)
        {
            ExternalName = 'advic_choicesof916';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Choices Of 9/16';
            InitValue = Standard;
            OptionMembers = Standard,"1/4BoltSlot","1/8BoltSlot",Interlude;
            OptionOrdinalValues = 600890000, 600890001, 600890002, 600890003;
        }
    }
}