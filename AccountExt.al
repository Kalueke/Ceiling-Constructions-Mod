tableextension 50107 AccountExt extends "CRM Account"
{
    Description = 'Business that represents a customer or potential customer. The company that is billed in business transactions.';

    fields
    {
        field(223; TimeSpentByMeOnEmailAndMeetings; Text[1250])
        {
            ExternalName = 'timespentbymeonemailandmeetings';
            ExternalType = 'String';
            ExternalAccess = Read;
            Description = 'Total time spent for emails (read and write) and meetings by me in relation to account record.';
            Caption = 'Time Spent by me';
        }
        field(236; PrimarySatoriId; Text[200])
        {
            ExternalName = 'primarysatoriid';
            ExternalType = 'String';
            Description = 'Primary Satori ID for Account';
            Caption = 'Primary Satori ID';
        }
        field(237; PrimaryTwitterId; Text[128])
        {
            ExternalName = 'primarytwitterid';
            ExternalType = 'String';
            Description = 'Primary Twitter ID for Account';
            Caption = 'Primary Twitter ID';
        }
        field(241; OnHoldTime; Integer)
        {
            ExternalName = 'onholdtime';
            ExternalType = 'Integer';
            ExternalAccess = Read;
            Description = 'Shows how long, in minutes, that the record was on hold.';
            Caption = 'On Hold Time (Minutes)';
        }
        field(242; LastOnHoldTime; Datetime)
        {
            ExternalName = 'lastonholdtime';
            ExternalType = 'DateTime';
            Description = 'Contains the date and time stamp of the last on hold time.';
            Caption = 'Last On Hold Time';
        }
        field(244; FollowEmail; Boolean)
        {
            ExternalName = 'followemail';
            ExternalType = 'Boolean';
            Description = 'Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the account.';
            Caption = 'Follow Email Activity';
        }
        field(247; MarketingOnly; Boolean)
        {
            ExternalName = 'marketingonly';
            ExternalType = 'Boolean';
            Description = 'Whether is only for marketing';
            Caption = 'Marketing Only';
        }
        field(10018; TeamsFollowed; Integer)
        {
            ExternalName = 'teamsfollowed';
            ExternalType = 'Integer';
            Description = 'Number of users or conversations followed the record';
            Caption = 'TeamsFollowed';
        }
        field(10023; msdyn_gdproptout; Boolean)
        {
            ExternalName = 'msdyn_gdproptout';
            ExternalType = 'Boolean';
            Description = 'Describes whether account is opted out or not';
            Caption = 'GDPR Optout';
        }
        field(10027; advic_CompanyType; Option)
        {
            ExternalName = 'advic_companytype';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Company Type';
            InitValue = " ";
            OptionMembers = " ",Architect,GeneralContractor,PropertyManager,Designer,Resi,DrywallContractor,Armstrong,JobACTSpeciality,JobFastners,Office,Other,USGVendor,CertainTeedRockfonVendor,SpecialtyTiles;
            OptionOrdinalValues = -1, 1, 2, 3, 4, 5, 11, 6, 7, 8, 9, 10, 12, 13, 14;
        }
        field(10029; msdyn_BillingAccount; GUID)
        {
            ExternalName = 'msdyn_billingaccount';
            ExternalType = 'Lookup';
            Description = 'Reference to an other account to be used for billing (only to be used if billing account differs)';
            Caption = 'Billing Account';
            TableRelation = "CRM Account".AccountId;
        }
        field(10030; msdyn_PreferredResource; GUID)
        {
            ExternalName = 'msdyn_preferredresource';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Preferred Resource (Deprecated)';
            TableRelation = "FS Bookable Resource".BookableResourceId;
        }
        field(10033; msdyn_TaxExempt; Boolean)
        {
            ExternalName = 'msdyn_taxexempt';
            ExternalType = 'Boolean';
            Description = 'Select whether the account is tax exempt.';
            Caption = 'Tax Exempt';
        }
        field(10035; msdyn_TaxExemptNumber; Text[20])
        {
            ExternalName = 'msdyn_taxexemptnumber';
            ExternalType = 'String';
            Description = 'Shows the government tax exempt number.';
            Caption = 'Tax Exempt Number';
        }
        field(10036; msdyn_TravelCharge; Decimal)
        {
            ExternalName = 'msdyn_travelcharge';
            ExternalType = 'Money';
            Description = 'Enter the travel charge to include on work orders. This value will be multiplied by the travel charge type.';
            Caption = 'Travel Charge';
        }
        field(10037; msdyn_travelcharge_Base; Decimal)
        {
            ExternalName = 'msdyn_travelcharge_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Travel Charge in base currency.';
            Caption = 'Travel Charge (Base)';
        }
        field(10038; msdyn_TravelChargeType; Option)
        {
            ExternalName = 'msdyn_travelchargetype';
            ExternalType = 'Picklist';
            Description = 'Specify how travel is charged for this account.';
            Caption = 'Travel Charge Type';
            InitValue = None;
            OptionMembers = Hourly,Mileage,Fixed,None;
            OptionOrdinalValues = 690970000, 690970001, 690970002, 690970003;
        }
        field(10041; msdyn_WorkOrderInstructions; BLOB)
        {
            ExternalName = 'msdyn_workorderinstructions';
            ExternalType = 'Memo';
            Description = 'Shows the default instructions to show on new work orders.';
            Caption = 'Work Order Instructions';
            Subtype = Memo;
        }
        field(10048; advic_Opportunitylookup; GUID)
        {
            ExternalName = 'advic_opportunitylookup';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Opportunitylookup';
            TableRelation = "CDS Company".CompanyId;
        }
        field(10050; advic_Customerlookup; GUID)
        {
            ExternalName = 'advic_customerlookup';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Customerlookup';
            TableRelation = "CRM Account".AccountId;
        }
        field(10054; advic_contact; GUID)
        {
            ExternalName = 'advic_contact';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Contact';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10057; advic_contactemail; GUID)
        {
            ExternalName = 'advic_contactemail';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Contact Email';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10066; msdyn_externalaccountid; Text[100])
        {
            ExternalName = 'msdyn_externalaccountid';
            ExternalType = 'String';
            Description = 'External Account ID from other systems.';
            Caption = 'External ID';
        }
        field(10067; Adx_CreatedByIPAddress; Text[100])
        {
            ExternalName = 'adx_createdbyipaddress';
            ExternalType = 'String';
            Description = '';
            Caption = 'Created By (IP Address)';
        }
        field(10068; Adx_CreatedByUsername; Text[100])
        {
            ExternalName = 'adx_createdbyusername';
            ExternalType = 'String';
            Description = '';
            Caption = 'Created By (User Name)';
        }
        field(10069; Adx_ModifiedByIPAddress; Text[100])
        {
            ExternalName = 'adx_modifiedbyipaddress';
            ExternalType = 'String';
            Description = '';
            Caption = 'Modified By (IP Address)';
        }
        field(10070; Adx_ModifiedByUsername; Text[100])
        {
            ExternalName = 'adx_modifiedbyusername';
            ExternalType = 'String';
            Description = '';
            Caption = 'Modified By (User Name)';
        }
        field(10071; msa_managingpartnerid; GUID)
        {
            ExternalName = 'msa_managingpartnerid';
            ExternalType = 'Lookup';
            Description = 'Unique identifier for Account associated with Account.';
            Caption = 'Managing Partner';
            TableRelation = "CRM Account".AccountId;
        }
        field(10075; advic_fedtaxid; Text[100])
        {
            ExternalName = 'advic_fedtaxid';
            ExternalType = 'String';
            Description = '';
            Caption = 'Fed Tax ID';
        }
        field(10076; advic_sendcoi; GUID)
        {
            ExternalName = 'advic_sendcoi';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Send COI';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10079; advic_sendlienwaivers; GUID)
        {
            ExternalName = 'advic_sendlienwaivers';
            ExternalType = 'Lookup';
            Description = '';
            Caption = ' Send Lien Waivers';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10082; advic_sendinvoicesto; GUID)
        {
            ExternalName = 'advic_sendinvoicesto';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Send Invoices to';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10085; advic_sendcontract; GUID)
        {
            ExternalName = 'advic_sendcontract';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Send Contract';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10088; advic_sendcloseoutdoc; GUID)
        {
            ExternalName = 'advic_sendcloseoutdoc';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Send Close Out Doc';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10091; advic_customerpaymentnotes; BLOB)
        {
            ExternalName = 'advic_customerpaymentnotes';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Customer Payment Notes';
            Subtype = Memo;
        }
        field(10098; advic_aiabillingform; Boolean)
        {
            ExternalName = 'advic_aiabillingform';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'AIA billing form';
        }
        field(10100; advic_defaultvendor; Option)
        {
            ExternalName = 'advic_defaultvendor';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Default Vendor';
            InitValue = " ";
            OptionMembers = " ",No,Yes;
            OptionOrdinalValues = -1, 0, 1;
        }
        field(10103; msfsi_Joindate; Datetime)
        {
            ExternalName = 'msfsi_joindate';
            ExternalType = 'DateTime';
            Description = 'The date the account joined the bank.';
            Caption = 'Join date';
        }
        field(10104; msfsi_Tenureyears; Decimal)
        {
            ExternalName = 'msfsi_tenureyears';
            ExternalType = 'Decimal';
            Description = 'Number of years the account has held accounts at the bank.';
            Caption = 'Tenure';
        }
        field(10106; advic_uploadInvoiceto; Text[100])
        {
            ExternalName = 'advic_uploadinvoiceto';
            ExternalType = 'String';
            Description = '';
            Caption = 'Upload Invoice to';
        }
        field(10109; advic_officemanager; GUID)
        {
            ExternalName = 'advic_officemanager';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Office Manager';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10112; advic_accountingcontact; GUID)
        {
            ExternalName = 'advic_accountingcontact';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Accounting Contact';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10115; advic_achpayments; Boolean)
        {
            ExternalName = 'advic_achpayments';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'ACH Payments';
        }
        field(10118; advic_arinvoiceduedate; Integer)
        {
            ExternalName = 'advic_arinvoiceduedate';
            ExternalType = 'Integer';
            Description = '';
            Caption = 'AR Invoice Due Date';
        }
        field(10119; msdyn_PrimaryTimeZone; Integer)
        {
            ExternalName = 'msdyn_primarytimezone';
            ExternalType = 'Integer';
            Description = 'Indicates the primary time zone that the client works on.';
            Caption = 'Primary Time Zone';
        }
        field(10120; advic_accountdocument; Text[400])
        {
            ExternalName = 'advic_accountdocument';
            ExternalType = 'String';
            Description = '';
            Caption = 'Account Document';
        }
    }
}