tableextension 50100 ItemExtension extends Item
{
    fields
    {
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
        field(50104; "Product Edge Detail"; Option)
        {
            Caption = 'Product Edge Detail';
            DataClassification = CustomerContent;
            OptionMembers = "","Reveal Edge","Square Edge Lay-in",VROCK4,VROCK2,Reveal,"Beveled Tegular","Angled Tegular","Tegular Edge","Square Tegular",Vector,Square,"Chamfered Tegular","Beaded Tegular","Classic-Step Tegular","Classic-Step",Angled,"Square-short side Tegular-long side","Radiused Tegular","Cove Molding","Crown Molding","Wrapped Tegular","Flush Tegular","Snap-in Pan","Vector Edge","Narrow Reveal";
            OptionCaptionML = ENU = 'Blank,Blue,White,White with gray spatter,Adobe,Tech Black,Cream,Haze,Platinum,Oyster,Black,Onyx (BL),Platinum (PL),Haze (HA),Summer Wheat,Flagstone,Mist,Oatmeal,Pearl Grey,Light Rose,Frost Blue,Desert Sand,Blue Mauve,Blue Green,Primer White';
            TableRelation = "CRM Product";
        }
        field(50105; "Product Color"; Option)
        {
            Caption = 'Product Color';
            DataClassification = CustomerContent;
            OptionMembers = "",Blue,White,"White with gray spatter",Adobe,"Tech Black",Cream,Haze,Platinum,Oyster,Black,"Onyx (BL)","Platinum (PL)","Haze (HA)","Tech Black (BL)","Summer Wheat",Flagstone,Mist,Oatmeal,"Pearl Grey","Light Rose","Frost Blue","Desert Sand","Blue Mauve","Blue Green","Primer White";
            OptionCaptionML = ENU = 'Blank,Reveal Edge,Square Edge Lay-in,VROCK4,VROCK2,Reveal,Beveled Tegular,Square Lay-in,Square edge lay-in,Angled Tegular,Tegular Edge,Square Tegular,Vector,Square,Chamfered Tegular,Beaded Tegular,Classic-Step Tegular,Classic-Step,Angled,Square-short side Tegular-long side,Radiused Tegular,Cove Molding,Crown Molding,Wrapped Tegular,Flush Tegular,Snap-in Pan,Vector Edge,Narrow Reveal';

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
        field(501010; "Product Cost per Carton"; Decimal)
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
            DataClassification = ToBeClassified;
        }
        field(50113; "Grid type"; Option)
        {
            Caption = 'Grid type';
            DataClassification = ToBeClassified;
            OptionMembers = " ","15/16","9/16";
            OptionCaptionML = ENU = 'Blank,15/16.9/16';
        }
        field(50114; "Linear Feet per Carton"; Decimal)
        {
            Caption = 'Linear Feet per Carton';
            DataClassification = ToBeClassified;
        }
    }
}
