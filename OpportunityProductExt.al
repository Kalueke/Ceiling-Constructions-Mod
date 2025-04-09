table 50110 "CDS OpportunityProduct"
{
    ExternalName = 'opportunityproduct';
    TableType = CRM;
    Description = 'Association between an opportunity and a product.';

    fields
    {
        field(10000; OpportunityProductId; GUID)
        {
            ExternalName = 'opportunityproductid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Insert;
            Description = 'Unique identifier of the opportunity product.';
            Caption = 'Opportunity Product';
        }
        field(10001; CreatedOn; Datetime)
        {
            ExternalName = 'createdon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Date and time when the record was created.';
            Caption = 'Created On';
        }
        field(10002; CreatedBy; GUID)
        {
            ExternalName = 'createdby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Shows who created the record.';
            Caption = 'Created By';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(10003; ModifiedOn; Datetime)
        {
            ExternalName = 'modifiedon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Date and time when the record was modified.';
            Caption = 'Modified On';
        }
        field(10004; ModifiedBy; GUID)
        {
            ExternalName = 'modifiedby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Shows who last updated the record.';
            Caption = 'Modified By';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(10005; CreatedOnBehalfBy; GUID)
        {
            ExternalName = 'createdonbehalfby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Shows who created the record on behalf of another user.';
            Caption = 'Created By (Delegate)';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(10006; ModifiedOnBehalfBy; GUID)
        {
            ExternalName = 'modifiedonbehalfby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier of the delegate user who last modified the opportunityproduct.';
            Caption = 'Modified By (Delegate)';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(10015; OwnerId; GUID)
        {
            ExternalName = 'ownerid';
            ExternalType = 'Owner';
            ExternalAccess = Read;
            Description = 'Owner Id';
            Caption = 'Owner';
        }
        field(10020; OwningBusinessUnit; GUID)
        {
            ExternalName = 'owningbusinessunit';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier for the business unit that owns the record';
            Caption = 'Owning Business Unit';
        }
        field(10021; OwningUser; GUID)
        {
            ExternalName = 'owninguser';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier for the user that owns the record.';
            Caption = 'Owning User';
        }
        field(10022; OwningTeam; GUID)
        {
            ExternalName = 'owningteam';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier for the team that owns the record.';
            Caption = 'Owning Team';
            TableRelation = "CRM Team".TeamId;
        }
        field(10023; VersionNumber; BigInteger)
        {
            ExternalName = 'versionnumber';
            ExternalType = 'BigInt';
            ExternalAccess = Read;
            Description = 'Version Number';
            Caption = 'Version Number';
        }
        field(10024; ImportSequenceNumber; Integer)
        {
            ExternalName = 'importsequencenumber';
            ExternalType = 'Integer';
            ExternalAccess = Insert;
            Description = 'Sequence number of the import that created this record.';
            Caption = 'Import Sequence Number';
        }
        field(10025; OverriddenCreatedOn; Date)
        {
            ExternalName = 'overriddencreatedon';
            ExternalType = 'DateTime';
            ExternalAccess = Insert;
            Description = 'Date and time that the record was migrated.';
            Caption = 'Record Created On';
        }
        field(10026; TimeZoneRuleVersionNumber; Integer)
        {
            ExternalName = 'timezoneruleversionnumber';
            ExternalType = 'Integer';
            Description = 'For internal use only.';
            Caption = 'Time Zone Rule Version Number';
        }
        field(10027; UTCConversionTimeZoneCode; Integer)
        {
            ExternalName = 'utcconversiontimezonecode';
            ExternalType = 'Integer';
            Description = 'Time zone code that was in use when the record was created.';
            Caption = 'UTC Conversion Time Zone Code';
        }
        field(10028; BaseAmount; Decimal)
        {
            ExternalName = 'baseamount';
            ExternalType = 'Money';
            ExternalAccess = Modify;
            Description = 'Shows the total price of the opportunity product, based on the price per unit, volume discount, and quantity.';
            Caption = 'Amount';
        }
        field(10029; TransactionCurrencyId; GUID)
        {
            ExternalName = 'transactioncurrencyid';
            ExternalType = 'Lookup';
            ExternalAccess = Insert;
            Description = 'Choose the local currency for the record to make sure budgets are reported in the correct currency.';
            Caption = 'Currency';
            TableRelation = "CRM Transactioncurrency".TransactionCurrencyId;
        }
        field(10031; ExchangeRate; Decimal)
        {
            ExternalName = 'exchangerate';
            ExternalType = 'Decimal';
            ExternalAccess = Read;
            Description = 'Shows the conversion rate of the record''s currency. The exchange rate is used to convert all money fields in the record from the local currency to the system''s default currency.';
            Caption = 'Exchange Rate';
        }
        field(10032; BaseAmount_Base; Decimal)
        {
            ExternalName = 'baseamount_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Amount in base currency.';
            Caption = 'Amount (Base)';
        }
        field(10033; Description; BLOB)
        {
            ExternalName = 'description';
            ExternalType = 'Memo';
            Description = 'Type additional information to describe the opportunity product, such as manufacturing details.';
            Caption = 'Description';
            Subtype = Memo;
        }
        field(10034; ExtendedAmount; Decimal)
        {
            ExternalName = 'extendedamount';
            ExternalType = 'Money';
            ExternalAccess = Modify;
            Description = 'Shows the total amount due for the opportunity product, calculated on the Amount value minus the Manual Discount amount.';
            Caption = 'Extended amount';
        }
        field(10035; ExtendedAmount_Base; Decimal)
        {
            ExternalName = 'extendedamount_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Extended Amount in base currency.';
            Caption = 'Extended Amount (Base)';
        }
        field(10036; IsPriceOverridden; Boolean)
        {
            ExternalName = 'ispriceoverridden';
            ExternalType = 'Boolean';
            Description = 'Select whether the pricing on the opportunity product reflects an override of the product catalog pricing.';
            Caption = 'Price Overridden';
        }
        field(10038; IsProductOverridden; Boolean)
        {
            ExternalName = 'isproductoverridden';
            ExternalType = 'Boolean';
            ExternalAccess = Insert;
            Description = 'For system use only.';
            Caption = 'Select Product';
        }
        field(10040; LineItemNumber; Integer)
        {
            ExternalName = 'lineitemnumber';
            ExternalType = 'Integer';
            Description = 'Type the line item number for the opportunity product to easily identify the product in the opportunity documents and make sure it''s listed in the correct order.';
            Caption = 'Line Item Number';
        }
        field(10041; ManualDiscountAmount; Decimal)
        {
            ExternalName = 'manualdiscountamount';
            ExternalType = 'Money';
            Description = 'Type the manual discount amount for the opportunity product to deduct any negotiated or other savings from the product total.';
            Caption = 'Manual Discount Amount';
        }
        field(10042; ManualDiscountAmount_Base; Decimal)
        {
            ExternalName = 'manualdiscountamount_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Manual Discount Amount in base currency.';
            Caption = 'Manual Discount Amount (Base)';
        }
        field(10043; OpportunityId; GUID)
        {
            ExternalName = 'opportunityid';
            ExternalType = 'Lookup';
            Description = 'Unique identifier of the opportunity with which the opportunity product is associated.';
            Caption = 'Opportunity';
            TableRelation = "CRM Opportunity".OpportunityId;
        }
        field(10044; OpportunityStateCode; Option)
        {
            ExternalName = 'opportunitystatecode';
            ExternalType = 'Picklist';
            ExternalAccess = Read;
            Description = 'Select the status of the opportunity product.';
            Caption = 'Opportunity Status';
            InitValue = " ";
            OptionMembers = " ";
            OptionOrdinalValues = -1;
        }
        field(10046; ParentBundleId; GUID)
        {
            ExternalName = 'parentbundleid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Insert;
            Description = 'Choose the parent bundle associated with this product';
            Caption = 'Parent Bundle';
        }
        field(10047; ProductAssociationId; GUID)
        {
            ExternalName = 'productassociationid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Insert;
            Description = 'Unique identifier of the product line item association with bundle in the opportunity';
            Caption = 'Bundle Item Association';
        }
        field(10048; ProductTypeCode; Option)
        {
            ExternalName = 'producttypecode';
            ExternalType = 'Picklist';
            ExternalAccess = Insert;
            Description = 'Product Type';
            Caption = 'Product type';
            InitValue = Product;
            OptionMembers = Product,Bundle,RequiredBundleProduct,OptionalBundleProduct,"Project-basedService";
            OptionOrdinalValues = 1, 2, 3, 4, 5;
        }
        field(10050; PricePerUnit; Decimal)
        {
            ExternalName = 'priceperunit';
            ExternalType = 'Money';
            Description = 'Shows the price per unit of the opportunity product, based on the price list specified on the parent opportunity.';
            Caption = 'Price per unit';
        }
        field(10051; PricePerUnit_Base; Decimal)
        {
            ExternalName = 'priceperunit_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Price Per Unit in base currency.';
            Caption = 'Price Per Unit (Base)';
        }
        field(10052; PricingErrorCode; Option)
        {
            ExternalName = 'pricingerrorcode';
            ExternalType = 'Picklist';
            Description = 'Select the pricing error for the opportunity product.';
            Caption = 'Pricing Error ';
            InitValue = None;
            OptionMembers = None,DetailError,MissingPriceLevel,InactivePriceLevel,MissingQuantity,MissingUnitPrice,MissingProduct,InvalidProduct,MissingPricingCode,InvalidPricingCode,MissingUOM,ProductNotInPriceLevel,MissingPriceLevelAmount,MissingPriceLevelPercentage,MissingPrice,MissingCurrentCost,MissingStandardCost,InvalidPriceLevelAmount,InvalidPriceLevelPercentage,InvalidPrice,InvalidCurrentCost,InvalidStandardCost,InvalidRoundingPolicy,InvalidRoundingOption,InvalidRoundingAmount,PriceCalculationError,InvalidDiscountType,DiscountTypeInvalidState,InvalidDiscount,InvalidQuantity,InvalidPricingPrecision,MissingProductDefaultUOM,MissingProductUOMSchedule,InactiveDiscountType,InvalidPriceLevelCurrency,PriceAttributeOutOfRange,BaseCurrencyAttributeOverflow,BaseCurrencyAttributeUnderflow,TransactionCurrencyIsNotSetForTheProductPriceListItem;
            OptionOrdinalValues = 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38;
        }
        field(10054; ProductDescription; Text[500])
        {
            ExternalName = 'productdescription';
            ExternalType = 'String';
            Description = 'Type a detailed product description or additional notes about the opportunity product, such as talking points or product updates, that will assist the sales team when they discuss the product with the customer.';
            Caption = 'Write-In Product';
        }
        field(10055; ProductName; Text[500])
        {
            ExternalName = 'productname';
            ExternalType = 'String';
            Description = 'Calculated field that will be populated by name and description of the product.';
            Caption = 'Product name';
        }
        field(10056; ProductId; GUID)
        {
            ExternalName = 'productid';
            ExternalType = 'Lookup';
            Description = 'Choose the product to include on the opportunity to link the product''s pricing and other information to the opportunity.';
            Caption = 'Existing Product';
            TableRelation = "CRM Product".ProductId;
        }
        field(10057; Quantity; Decimal)
        {
            ExternalName = 'quantity';
            ExternalType = 'Decimal';
            Description = 'Type the amount or quantity of the product the customer would like to purchase.';
            Caption = 'Quantity';
        }
        field(10058; Tax; Decimal)
        {
            ExternalName = 'tax';
            ExternalType = 'Money';
            Description = 'Type the tax amount to be applied on the opportunity product.';
            Caption = 'Tax';
        }
        field(10059; Tax_Base; Decimal)
        {
            ExternalName = 'tax_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Tax in base currency.';
            Caption = 'Tax (Base)';
        }
        field(10060; UoMId; GUID)
        {
            ExternalName = 'uomid';
            ExternalType = 'Lookup';
            Description = 'Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen.';
            Caption = 'Unit';
            TableRelation = "CRM Uom".UoMId;
        }
        field(10061; VolumeDiscountAmount; Decimal)
        {
            ExternalName = 'volumediscountamount';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area.';
            Caption = 'Volume Discount';
        }
        field(10062; VolumeDiscountAmount_Base; Decimal)
        {
            ExternalName = 'volumediscountamount_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Volume Discount in base currency.';
            Caption = 'Volume Discount (Base)';
        }
        field(10063; SequenceNumber; Integer)
        {
            ExternalName = 'sequencenumber';
            ExternalType = 'Integer';
            Description = 'Shows the ID of the data that maintains the sequence.';
            Caption = 'Sequence Number';
        }
        field(10064; PropertyConfigurationStatus; Option)
        {
            ExternalName = 'propertyconfigurationstatus';
            ExternalType = 'Picklist';
            Description = 'Status of the property configuration.';
            Caption = 'Property Configuration';
            InitValue = NotConfigured;
            OptionMembers = Edit,Rectify,NotConfigured;
            OptionOrdinalValues = 0, 1, 2;
        }
        field(10066; EntityImageId; GUID)
        {
            ExternalName = 'entityimageid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Read;
        }
        field(10073; OpportunityProductName; Text[500])
        {
            ExternalName = 'opportunityproductname';
            ExternalType = 'String';
            Description = 'Opportunity Product Name. Added for 1:n referential relationship (internal purposes only)';
            Caption = 'Name';
        }
        field(10074; ParentBundleIdRef; GUID)
        {
            ExternalName = 'parentbundleidref';
            ExternalType = 'Lookup';
            Description = 'Choose the parent bundle associated with this product';
            Caption = 'Parent bundle product';
            TableRelation = "CDS OpportunityProduct".OpportunityProductId;
        }
        field(10075; SkipPriceCalculation; Option)
        {
            ExternalName = 'skippricecalculation';
            ExternalType = 'Picklist';
            Description = 'Skip price calculation';
            Caption = 'Skip Price Calculation';
            InitValue = DoPriceCalcAlways;
            OptionMembers = DoPriceCalcAlways,SkipPriceCalcOnCreate,SkipPriceCalcOnUpdate,SkipPriceCalcOnUpSert;
            OptionOrdinalValues = 0, 1, 2, 3;
        }
        field(10077; msdyn_Duration; Integer)
        {
            ExternalName = 'msdyn_duration';
            ExternalType = 'Integer';
            Description = 'Enter the duration of the agreement';
            Caption = 'Duration';
        }
        field(10078; msdyn_enddate; Date)
        {
            ExternalName = 'msdyn_enddate';
            ExternalType = 'DateTime';
            Description = 'Enter the end date of the agreement';
            Caption = 'End Date';
        }
        field(10079; msdyn_LineType; Option)
        {
            ExternalName = 'msdyn_linetype';
            ExternalType = 'Picklist';
            Description = 'The field to distinguish the order lines to be of project service or field service';
            Caption = 'Line Type';
            InitValue = " ";
            OptionMembers = " ",ProjectServiceLine,FieldServiceLine;
            OptionOrdinalValues = -1, 690970000, 690970001;
        }
        field(10081; msdyn_pricelist; GUID)
        {
            ExternalName = 'msdyn_pricelist';
            ExternalType = 'Lookup';
            Description = 'Select a price list for the opportunity line';
            Caption = 'Price List';
            TableRelation = "CRM Pricelevel".PriceLevelId;
        }
        field(10082; msdyn_serviceaccount; GUID)
        {
            ExternalName = 'msdyn_serviceaccount';
            ExternalType = 'Lookup';
            Description = 'Select the service account for the opportunity line';
            Caption = 'Service Account';
            TableRelation = "CRM Account".AccountId;
        }
        field(10083; msdyn_startdate; Date)
        {
            ExternalName = 'msdyn_startdate';
            ExternalType = 'DateTime';
            Description = 'Start date of the Agreement';
            Caption = 'Start Date';
        }
        field(10087; msdyn_BillingMethod; Option)
        {
            ExternalName = 'msdyn_billingmethod';
            ExternalType = 'Picklist';
            Description = 'Billing method for the project opportunity line. Valid values are Time and Material and Fixed Price';
            Caption = 'Billing Method';
            InitValue = " ";
            OptionMembers = " ",TimeAndMaterial,FixedPrice;
            OptionOrdinalValues = -1, 192350000, 192350001;
        }
        field(10089; msdyn_BudgetAmount; Decimal)
        {
            ExternalName = 'msdyn_budgetamount';
            ExternalType = 'Money';
            Description = 'Enter the customer budget amount for this opportunity line.';
            Caption = 'Budget Amount';
        }
        field(10090; msdyn_budgetamount_Base; Decimal)
        {
            ExternalName = 'msdyn_budgetamount_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Budget Amount in base currency.';
            Caption = 'Budget Amount (Base)';
        }
        field(10091; msdyn_CostAmount; Decimal)
        {
            ExternalName = 'msdyn_costamount';
            ExternalType = 'Money';
            Description = 'Shows the total cost price of the product based on the cost price per unit and quantity.';
            Caption = 'Cost Amount';
        }
        field(10092; msdyn_costamount_Base; Decimal)
        {
            ExternalName = 'msdyn_costamount_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Cost Amount in base currency.';
            Caption = 'Cost Amount (Base)';
        }
        field(10093; msdyn_CostPricePerUnit; Decimal)
        {
            ExternalName = 'msdyn_costpriceperunit';
            ExternalType = 'Money';
            Description = 'Cost price per unit of the product. The default is the cost price of the product.';
            Caption = 'Cost Price Per Unit';
        }
        field(10094; msdyn_costpriceperunit_Base; Decimal)
        {
            ExternalName = 'msdyn_costpriceperunit_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Cost Price Per Unit in base currency.';
            Caption = 'Cost Price Per Unit (Base)';
        }
        field(10102; advic_quantitylinearfoot; Integer)
        {
            ExternalName = 'advic_quantitylinearfoot';
            ExternalType = 'Integer';
            Description = '';
            Caption = 'Quantity Linear Foot';
        }
        field(10103; advic_quantitypcs; Decimal)
        {
            ExternalName = 'advic_quantitypcs';
            ExternalType = 'Decimal';
            ExternalAccess = Read;
            Description = '';
            Caption = 'Quantity PCS';
        }
        field(10104; advic_quantityctn; Decimal)
        {
            ExternalName = 'advic_quantityctn';
            ExternalType = 'Decimal';
            ExternalAccess = Read;
            Description = '';
            Caption = 'Quantity CTN';
        }
        field(10105; advic_lftmultiply; Integer)
        {
            ExternalName = 'advic_lftmultiply';
            ExternalType = 'Integer';
            Description = '';
            Caption = 'LFT Multiply 12';
        }
    }
    keys
    {
        key(PK; OpportunityProductId)
        {
            Clustered = true;
        }
        key(Name; OpportunityProductName)
        {
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; OpportunityProductName)
        {
        }
    }
}