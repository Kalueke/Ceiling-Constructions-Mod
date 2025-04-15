tableextension 50111 OpportunityExt extends "CRM Opportunity"
{
    Description = 'Potential revenue-generating event, or sale to an account, which needs to be tracked through a sales process to completion.';

    fields
    {
        field(10024; EmailAddress; Text[100])
        {
            ExternalName = 'emailaddress';
            ExternalType = 'String';
            Description = 'The primary email address for the entity.';
            Caption = 'Email Address';
        }
        field(10143; OnHoldTime; Integer)
        {
            ExternalName = 'onholdtime';
            ExternalType = 'Integer';
            ExternalAccess = Read;
            Description = 'Shows the duration in minutes for which the opportunity was on hold.';
            Caption = 'On Hold Time (Minutes)';
        }
        field(10144; LastOnHoldTime; Datetime)
        {
            ExternalName = 'lastonholdtime';
            ExternalType = 'DateTime';
            Description = 'Contains the date time stamp of the last on hold time.';
            Caption = 'Last On Hold Time';
        }
        field(10147; TimeSpentByMeOnEmailAndMeetings; Text[1250])
        {
            ExternalName = 'timespentbymeonemailandmeetings';
            ExternalType = 'String';
            ExternalAccess = Read;
            Description = 'Total time spent for emails (read and write) and meetings by me in relation to the opportunity record.';
            Caption = 'Time Spent by me';
        }
        field(10167; TeamsFollowed; Integer)
        {
            ExternalName = 'teamsfollowed';
            ExternalType = 'Integer';
            Description = 'Number of users or conversations followed the record';
            Caption = 'TeamsFollowed';
        }
        field(10168; SkipPriceCalculation; Option)
        {
            ExternalName = 'skippricecalculation';
            ExternalType = 'Picklist';
            Description = 'Skip Price Calculation (For Internal Use)';
            Caption = 'Skip Price Calculation';
            InitValue = DoPriceCalcAlways;
            OptionMembers = DoPriceCalcAlways,SkipPriceCalcOnRetrieve;
            OptionOrdinalValues = 0, 1;
        }
        field(10172; msdyn_forecastcategory; Option)
        {
            ExternalName = 'msdyn_forecastcategory';
            ExternalType = 'Picklist';
            Description = 'Categories used for forecasting.';
            Caption = 'Forecast category';
            InitValue = Pipeline;
            OptionMembers = Pipeline,BestCase,Committed,Omitted,Won,Lost;
            OptionOrdinalValues = 100000001, 100000002, 100000003, 100000004, 100000005, 100000006;
        }
        field(10174; msdyn_similaropportunities; BLOB)
        {
            ExternalName = 'msdyn_similaropportunities';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'msdyn_similaropportunities';
            Subtype = Memo;
        }
        field(10179; msdyn_OpportunityScore; Integer)
        {
            ExternalName = 'msdyn_opportunityscore';
            ExternalType = 'Integer';
            Description = '';
            Caption = '(Deprecated) Opportunity Score';
        }
        field(10180; msdyn_OpportunityGrade; Option)
        {
            ExternalName = 'msdyn_opportunitygrade';
            ExternalType = 'Picklist';
            Description = '';
            Caption = '(Deprecated) Opportunity Grade';
            InitValue = " ";
            OptionMembers = " ",GradeA,GradeB,GradeC,GradeD;
            OptionOrdinalValues = -1, 0, 1, 2, 3;
        }
        field(10182; msdyn_ScoreReasons; BLOB)
        {
            ExternalName = 'msdyn_scorereasons';
            ExternalType = 'Memo';
            Description = '';
            Caption = '(Deprecated) Score Reasons';
            Subtype = Memo;
        }
        field(10183; msdyn_ScoreHistory; BLOB)
        {
            ExternalName = 'msdyn_scorehistory';
            ExternalType = 'Memo';
            Description = '';
            Caption = '(Deprecated) Score History';
            Subtype = Memo;
        }
        field(10184; msdyn_OpportunityScoreTrend; Option)
        {
            ExternalName = 'msdyn_opportunityscoretrend';
            ExternalType = 'Picklist';
            Description = '';
            Caption = '(Deprecated) Opportunity Score Trend';
            InitValue = " ";
            OptionMembers = " ",Improving,Steady,Declining,NotEnoughInfo;
            OptionOrdinalValues = -1, 0, 1, 2, 3;
        }
        field(10186; msdyn_gdproptout; Boolean)
        {
            ExternalName = 'msdyn_gdproptout';
            ExternalType = 'Boolean';
            Description = 'Describes whether opportunity is opted out or not';
            Caption = 'GDPR Optout';
        }
        field(10192; advic_addressline1; Text[250])
        {
            ExternalName = 'advic_addressline1';
            ExternalType = 'String';
            Description = '';
            Caption = 'Address 1: Street 1';
        }
        field(10193; advic_addressline2; Text[250])
        {
            ExternalName = 'advic_addressline2';
            ExternalType = 'String';
            Description = '';
            Caption = 'Suite Number';
        }
        field(10194; advic_architectcompany; GUID)
        {
            ExternalName = 'advic_architectcompany';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Architect Company';
            TableRelation = "CRM Account".AccountId;
        }
        field(10195; advic_architectcontact; GUID)
        {
            ExternalName = 'advic_architectcontact';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Architect Contact';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10197; advic_bidtype; Option)
        {
            ExternalName = 'advic_bidtype';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Type';
            InitValue = " ";
            OptionMembers = " ",Hospital,"Healthcare-Clinics",OfficeFitOut,Restaurant,Bank,Church,"CommercialBuilding-Core/Shell",Labs,"Acedemic(College/University)","Retail-FitOut","Non-Union",Hotel,Other;
            OptionOrdinalValues = -1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15;
        }
        field(10199; advic_bluebeamhyperlink; Text[100])
        {
            ExternalName = 'advic_bluebeamhyperlink';
            ExternalType = 'String';
            Description = '';
            Caption = 'Bluebeam Project Hyperlink';
        }
        field(10200; advic_ceilingheight; Decimal)
        {
            ExternalName = 'advic_ceilingheight';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Ceiling Height';
        }
        field(10201; advic_city; Text[100])
        {
            ExternalName = 'advic_city';
            ExternalType = 'String';
            Description = '';
            Caption = 'Address 1: City';
        }
        field(10202; advic_deckheight; Decimal)
        {
            ExternalName = 'advic_deckheight';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Deck Height OLD';
        }
        field(10203; advic_deckrooftype; Option)
        {
            ExternalName = 'advic_deckrooftype';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Deck Type';
            InitValue = " ";
            OptionMembers = " ",BarJoist,BarJoist20Wire,HardConcrete,MetalTruss,MetalTrussWithDrywall,PurlinClip,SoftConcrete,WoodTruss,NotOnDrawings;
            OptionOrdinalValues = -1, 1, 9, 7, 5, 8, 3, 4, 2, 6;
        }
        field(10205; advic_estimator; GUID)
        {
            ExternalName = 'advic_estimator';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Estimator';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10206; advic_gclist; Option)
        {
            ExternalName = 'advic_gclist';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'GC List';
            InitValue = No;
            OptionMembers = No,"1Only",Requested,InFile,"N/A";
            OptionOrdinalValues = 600890000, 600890001, 600890002, 600890003, 600890004;
        }
        field(10208; advic_insulation; Text[100])
        {
            ExternalName = 'advic_insulation';
            ExternalType = 'String';
            Description = '';
            Caption = 'Insulation area';
        }
        field(10209; advic_InsulationChoices; Option)
        {
            ExternalName = 'advic_insulationchoices';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'InsulationChoices';
            InitValue = "?";
            OptionMembers = "?",No,AbovePartitions,Throughout,"N/A";
            OptionOrdinalValues = 600890000, 600890001, 600890002, 600890003, 600890004;
        }
        field(10212; advic_location; BLOB)
        {
            ExternalName = 'advic_location';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Location';
            Subtype = Memo;
        }
        field(10213; advic_material; Option)
        {
            ExternalName = 'advic_material';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Material';
            InitValue = NeedToFind;
            OptionMembers = NeedToFind,Found,MatchExisting,RFI;
            OptionOrdinalValues = 1, 2, 3, 4;
        }
        field(10215; advic_materialpageno; Text[100])
        {
            ExternalName = 'advic_materialpageno';
            ExternalType = 'String';
            Description = '';
            Caption = 'Material Page No.';
        }
        field(10216; advic_partiontypes; Text[100])
        {
            ExternalName = 'advic_partiontypes';
            ExternalType = 'String';
            Description = '';
            Caption = 'Partition Types';
        }
        field(10217; advic_projectaddress; BLOB)
        {
            ExternalName = 'advic_projectaddress';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Project Address';
            Subtype = Memo;
        }
        field(10218; advic_projecttype; Option)
        {
            ExternalName = 'advic_projecttype';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Project Type';
            InitValue = " ";
            OptionMembers = " ",AutoDealer,Bank,Restaurant,Collage,School,Hospital,Laboratory,Medical,GovtOffice,OfficeBuilding,Resi,Retail,Other,Hotel;
            OptionOrdinalValues = -1, 600890004, 600890002, 600890001, 600890005, 600890007, 600890008, 600890014, 600890009, 600890006, 600890011, 600890013, 600890010, 600890003, 600890015;
        }
        field(10220; advic_proposaltype; Option)
        {
            ExternalName = 'advic_proposaltype';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Proposal Type';
            InitValue = " ";
            OptionMembers = " ",Bid,Budget;
            OptionOrdinalValues = -1, 1, 2;
        }
        field(10222; advic_quote; Option)
        {
            ExternalName = 'advic_quote';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Quote';
            InitValue = No;
            OptionMembers = No,Yes,InFile,"N/A";
            OptionOrdinalValues = 600890000, 600890001, 600890002, 600890003;
        }
        field(10224; advic_ratioofangletoopenspace; Text[1000])
        {
            ExternalName = 'advic_ratioofangletoopenspace';
            ExternalType = 'String';
            Description = '';
            Caption = 'Ratio of angle to open space';
        }
        field(10226; advic_roomfinishpage; Text[100])
        {
            ExternalName = 'advic_roomfinishpage';
            ExternalType = 'String';
            Description = '';
            Caption = 'Room Finish Page';
        }
        field(10227; advic_sector; Option)
        {
            ExternalName = 'advic_sector';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Sector';
            InitValue = " ";
            OptionMembers = " ",Public,Private;
            OptionOrdinalValues = -1, 1, 2;
        }
        field(10229; advic_seismictype; Option)
        {
            ExternalName = 'advic_seismictype';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Seismic Type';
            InitValue = " ";
            OptionMembers = " ",None,ABC,DEF;
            OptionOrdinalValues = -1, 600890001, 2, 3;
        }
        field(10231; advic_specialmaterial; Option)
        {
            ExternalName = 'advic_specialmaterial';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Special Material OLD';
            InitValue = "?";
            OptionMembers = "?",No,Yes,"N/A";
            OptionOrdinalValues = 600890000, 600890001, 600890002, 600890003;
        }
        field(10233; advic_state; Text[100])
        {
            ExternalName = 'advic_state';
            ExternalType = 'String';
            Description = '';
            Caption = 'Address 1: State/Province';
        }
        field(10235; advic_tag; Option)
        {
            ExternalName = 'advic_tag';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Tag';
            InitValue = " ";
            OptionMembers = " ",LowPriority,MediumPriority,HighPriority;
            OptionOrdinalValues = -1, 1, 2, 3;
        }
        field(10237; advic_takeoff; Option)
        {
            ExternalName = 'advic_takeoff';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Take Off';
            InitValue = Hold;
            OptionMembers = Hold,NeedTakeOff,Complete,"N/A";
            OptionOrdinalValues = 600890000, 600890001, 600890002, 600890003;
        }
        field(10239; advic_walkthroughdateeventid; Text[1000])
        {
            ExternalName = 'advic_walkthroughdateeventid';
            ExternalType = 'String';
            Description = '';
            Caption = 'Walkthrough Date Event Id';
        }
        field(10240; advic_zip; Text[100])
        {
            ExternalName = 'advic_zip';
            ExternalType = 'String';
            Description = '';
            Caption = 'Address 1: Zip/Postal Code';
        }
        field(10249; msdyn_OrderType; Option)
        {
            ExternalName = 'msdyn_ordertype';
            ExternalType = 'Picklist';
            Description = 'Whether the Opportunity is for an Item- based or a Work-based sale';
            Caption = 'Type';
            InitValue = ItemBased;
            OptionMembers = "Service-MaintenanceBased",ItemBased,WorkBased;
            OptionOrdinalValues = 690970002, 192350000, 192350001;
        }
        /*field(10251; msdyn_WorkOrderType; GUID)
        {
            ExternalName = 'msdyn_workordertype';
            ExternalType = 'Lookup';
            Description = 'Unique identifier for Work Order Type associated with Opportunity.';
            Caption = 'Work Order Type';
            TableRelation = "FS Work Order Type".WorkOrderTypeId;
        }*/
        field(10253; advic_Opportunitylookup; GUID)
        {
            ExternalName = 'advic_opportunitylookup';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Opportunitylookup';
            TableRelation = "CDS Company".CompanyId;
        }
        field(10255; advic_companylookup; GUID)
        {
            ExternalName = 'advic_companylookup';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'companylookup';
            TableRelation = "CRM Account".AccountId;
        }
        field(10259; advic_Hyper; Option)
        {
            ExternalName = 'advic_hyper';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Hyper';
            InitValue = " ";
            OptionMembers = " ",Yes,No;
            OptionOrdinalValues = -1, 600890000, 600890001;
        }
        field(10261; advic_opportunitycode; Text[25])
        {
            ExternalName = 'advic_opportunitycode';
            ExternalType = 'String';
            Description = '';
            Caption = 'Opportunity ID';
        }
        field(10262; advic_MicrosoftTeamsURL; Text[100])
        {
            ExternalName = 'advic_microsoftteamsurl';
            ExternalType = 'String';
            Description = '';
            Caption = 'Microsoft Teams URL';
        }
        field(10263; advic_MicrosoftTeamsHyperlink; Text[2000])
        {
            ExternalName = 'advic_microsoftteamshyperlink';
            ExternalType = 'String';
            Description = '';
            Caption = 'Microsoft Teams Hyperlink';
        }
        field(10267; advic_Primrose; Text[300])
        {
            ExternalName = 'advic_primrose';
            ExternalType = 'String';
            Description = '';
            Caption = 'Primrose';
        }
        field(10268; advic_mike; Text[300])
        {
            ExternalName = 'advic_mike';
            ExternalType = 'String';
            Description = '';
            Caption = 'Mike';
        }
        field(10269; advic_kevin; Text[300])
        {
            ExternalName = 'advic_kevin';
            ExternalType = 'String';
            Description = '';
            Caption = 'Kevin';
        }
        field(10270; advic_rick; Text[300])
        {
            ExternalName = 'advic_rick';
            ExternalType = 'String';
            Description = '';
            Caption = 'Rick';
        }
        field(10271; advic_addendumupdateddate; Date)
        {
            ExternalName = 'advic_addendumupdateddate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Addendum Updated Date';
        }
        field(10272; new_ProjectAddr; BLOB)
        {
            ExternalName = 'new_projectaddr';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Project Address';
            Subtype = Memo;
        }
        field(10274; new_StreetAddress; Text[100])
        {
            ExternalName = 'new_streetaddress';
            ExternalType = 'String';
            Description = '';
            Caption = 'Street Address';
        }
        field(10278; new_SpaceSuite; Text[100])
        {
            ExternalName = 'new_spacesuite';
            ExternalType = 'String';
            Description = '';
            Caption = 'Space Suite';
        }
        field(10284; advic_countryregion; Text[100])
        {
            ExternalName = 'advic_countryregion';
            ExternalType = 'String';
            Description = '';
            Caption = 'Address 1: Country/Region';
        }
        field(10285; advic_projectstartdate; Date)
        {
            ExternalName = 'advic_projectstartdate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Project Start Date';
        }
        field(10286; advic_emailformaterial; Date)
        {
            ExternalName = 'advic_emailformaterial';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Reminder For Material';
        }
        field(10287; advic_Description; BLOB)
        {
            ExternalName = 'advic_description';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Additional Description';
            Subtype = Memo;
        }
        field(10288; advic_ceilingheight1; Decimal)
        {
            ExternalName = 'advic_ceilingheight1';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Ceiling Height 1';
        }
        field(10289; advic_reminderforquote; Date)
        {
            ExternalName = 'advic_reminderforquote';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Reminder For Quote';
        }
        field(10290; advic_insulationthickness; Option)
        {
            ExternalName = 'advic_insulationthickness';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Insulation size';
            InitValue = " ";
            OptionMembers = " ","R133.5""","R196.5""""","9""","12""";
            OptionOrdinalValues = -1, 1, 2, 3, 4;
        }
        field(10292; advic_abovepartitionstypes; Text[100])
        {
            ExternalName = 'advic_abovepartitionstypes';
            ExternalType = 'String';
            Description = '';
            Caption = 'Above Partition Types';
        }
        field(10293; advic_jobnumber; Text[100])
        {
            ExternalName = 'advic_jobnumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'SQ1 Job Number';
        }
        field(10294; advic_awardedgc; GUID)
        {
            ExternalName = 'advic_awardedgc';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Awarded GC';
            TableRelation = "CRM Account".AccountId;
        }
        field(10297; advic_walkthroughnotes; BLOB)
        {
            ExternalName = 'advic_walkthroughnotes';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Walkthrough Notes';
            Subtype = Memo;
        }
        field(10298; msdyn_AccountManagerId; GUID)
        {
            ExternalName = 'msdyn_accountmanagerid';
            ExternalType = 'Lookup';
            Description = 'The account manager responsible for the opportunity.';
            Caption = 'Account Manager';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(10303; cr534_SpecBook; Text[100])
        {
            ExternalName = 'cr534_specbook';
            ExternalType = 'String';
            Description = '';
            Caption = 'Spec Book OLD';
        }
        field(10304; cr534_ACT1TileNumber; Text[100])
        {
            ExternalName = 'cr534_act1tilenumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'ACT 1 Tile Number';
        }
        field(10305; cr534_AllNewCeilings; Text[100])
        {
            ExternalName = 'cr534_allnewceilings';
            ExternalType = 'String';
            Description = '';
            Caption = 'All New Ceilings';
        }
        field(10306; cr534_AnyCeilingsover11Feet; Text[100])
        {
            ExternalName = 'cr534_anyceilingsover11feet';
            ExternalType = 'String';
            Description = '';
            Caption = 'Any Ceilings over 11 Feet';
        }
        field(10307; cr534_DistancefromInsulationtoEachSide; Decimal)
        {
            ExternalName = 'cr534_distancefrominsulationtoeachside';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Distance from Insulation to Each Side';
        }
        field(10308; cr534_ACT2TileNumber; Text[100])
        {
            ExternalName = 'cr534_act2tilenumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'ACT 2 Tile Number';
        }
        field(10309; cr534_ACT3TileNumber; Text[100])
        {
            ExternalName = 'cr534_act3tilenumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'ACT 3 Tile Number';
        }
        field(10310; cr534_ACT4TileNumber; Text[100])
        {
            ExternalName = 'cr534_act4tilenumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'ACT 4 Tile Number';
        }
        field(10311; cr534_ProjectName; Text[100])
        {
            ExternalName = 'cr534_projectname';
            ExternalType = 'String';
            Description = '';
            Caption = 'Project Name';
        }
        field(10312; advic_SpecBookEst; Boolean)
        {
            ExternalName = 'advic_specbookest';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Spec Book';
        }
        field(10314; advic_NewCeilingsEst; Boolean)
        {
            ExternalName = 'advic_newceilingsest';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'All New Ceilings - Yes or No';
        }
        field(10316; advic_DeckHeightEst; Option)
        {
            ExternalName = 'advic_deckheightest';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Deck Height';
            InitValue = " ";
            OptionMembers = " ","12-16","16-20",Over30,Over40;
            OptionOrdinalValues = -1, 1, 2, 3, 4;
        }
        field(10318; advic_Ceilingsover11; Boolean)
        {
            ExternalName = 'advic_ceilingsover11';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Any Ceilings Over 11''';
        }
        field(10320; advic_Partitions; Option)
        {
            ExternalName = 'advic_partitions';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Partitions Above, Below, Both';
            InitValue = " ";
            OptionMembers = " ",AboveACT,BelowACT,Both;
            OptionOrdinalValues = -1, 0, 1, 2;
        }
        field(10322; advic_PartitionwithInsulation; Option)
        {
            ExternalName = 'advic_partitionwithinsulation';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Partition with Insulation';
            InitValue = " ";
            OptionMembers = " ",NA,No,Yes;
            OptionOrdinalValues = -1, 2, 0, 1;
        }
        field(10324; advic_InsulationDistance; Option)
        {
            ExternalName = 'advic_insulationdistance';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Insulation - How Far Each Side';
            InitValue = " ";
            OptionMembers = " ","2","4",FullCover;
            OptionOrdinalValues = -1, 0, 1, 2;
        }
        field(10326; advic_SpecialMaterialEst; Boolean)
        {
            ExternalName = 'advic_specialmaterialest';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Special Material';
        }
        field(10328; advic_SeismicTypePage; Integer)
        {
            ExternalName = 'advic_seismictypepage';
            ExternalType = 'Integer';
            Description = '';
            Caption = '[Delete]Seismic Type Page';
        }
        field(10329; advic_OwnerFurnished; Boolean)
        {
            ExternalName = 'advic_ownerfurnished';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Owner Furnished';
        }
        field(10331; advic_FullAddress; Text[2048])
        {
            ExternalName = 'advic_fulladdress';
            ExternalType = 'String';
            ExternalAccess = Read;
            Description = '';
            Caption = 'FullAddress';
        }
        field(10333; advic_PhotoId; GUID)
        {
            ExternalName = 'advic_photoid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Read;
        }
        field(10339; advic_Latitude; Text[100])
        {
            ExternalName = 'advic_latitude';
            ExternalType = 'String';
            Description = '';
            Caption = 'Latitude';
        }
        field(10340; advic_Longitude; Text[100])
        {
            ExternalName = 'advic_longitude';
            ExternalType = 'String';
            Description = '';
            Caption = 'Longitude';
        }
        field(10341; advic_Lockbox; Text[100])
        {
            ExternalName = 'advic_lockbox';
            ExternalType = 'String';
            Description = '';
            Caption = 'Lock Box';
        }
        field(10342; advic_StartTime; Text[100])
        {
            ExternalName = 'advic_starttime';
            ExternalType = 'String';
            Description = '';
            Caption = 'Start Time';
        }
        field(10343; advic_MaterialOrdered; Boolean)
        {
            ExternalName = 'advic_materialordered';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Material Ordered';
        }
        field(10345; advic_EstStartDate; Date)
        {
            ExternalName = 'advic_eststartdate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Est Start Date';
        }
        field(10346; advic_matchexisting; Boolean)
        {
            ExternalName = 'advic_matchexisting';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Match Existing';
        }
        field(10361; cr534_Address1Street2; Text[2048])
        {
            ExternalName = 'cr534_address1street2';
            ExternalType = 'String';
            Description = '';
            Caption = 'Address 1: Street 2';
        }
        field(10362; cr534_Address1Street3; Text[2048])
        {
            ExternalName = 'cr534_address1street3';
            ExternalType = 'String';
            Description = '';
            Caption = 'Address 1: Street 3';
        }
        field(10364; advic_addendumnumbers; Text[100])
        {
            ExternalName = 'advic_addendumnumbers';
            ExternalType = 'String';
            Description = '';
            Caption = 'Addendum Numbers';
        }
        field(10365; advic_projectfileshyperlink; Text[500])
        {
            ExternalName = 'advic_projectfileshyperlink';
            ExternalType = 'String';
            Description = '';
            Caption = 'GC Project Files Hyperlink';
        }
        field(10366; cr534_AccountManager; GUID)
        {
            ExternalName = 'cr534_accountmanager';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Account Manager';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10369; cr534_SuperPhone; Text[100])
        {
            ExternalName = 'cr534_superphone';
            ExternalType = 'String';
            Description = '';
            Caption = 'Superintendent Phone Number';
        }
        field(10370; cr534_JobsiteSuperintendent; GUID)
        {
            ExternalName = 'cr534_jobsitesuperintendent';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Jobsite Superintendent';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10373; cr534_GeneralContractor; GUID)
        {
            ExternalName = 'cr534_generalcontractor';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'General Contractor';
            TableRelation = "CRM Account".AccountId;
        }
        field(10376; cr534_ProjectManager; GUID)
        {
            ExternalName = 'cr534_projectmanager';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Project Manager';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10379; cr534_ProjectManagerPhoneNumber; Text[100])
        {
            ExternalName = 'cr534_projectmanagerphonenumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'Project Manager Phone Number';
        }
        field(10380; cr534_Accounting; GUID)
        {
            ExternalName = 'cr534_accounting';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Accounting';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10383; cr534_AccountingPhoneNumber; Text[100])
        {
            ExternalName = 'cr534_accountingphonenumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'Accounting Phone Number';
        }
        field(10384; cr534_ProjectAssistant; GUID)
        {
            ExternalName = 'cr534_projectassistant';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'P Assit./ Office Mgr';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10387; cr534_ProjectAssistantPhoneNumber; Text[100])
        {
            ExternalName = 'cr534_projectassistantphonenumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'Project Assistant Phone Number';
        }
        field(10388; cr534_GCCompany; Text[2048])
        {
            ExternalName = 'cr534_gccompany';
            ExternalType = 'String';
            ExternalAccess = Read;
            Description = '';
            Caption = 'GC Company';
        }
        field(10389; advic_documentshyperlink; Text[500])
        {
            ExternalName = 'advic_documentshyperlink';
            ExternalType = 'String';
            Description = '';
            Caption = 'SQ1 Documents Hyperlink';
        }
        field(10390; cr534_Vendor; GUID)
        {
            ExternalName = 'cr534_vendor';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Vendor';
            TableRelation = "CRM Account".AccountId;
        }
        field(10393; cr534_Address1Latitude; Text[100])
        {
            ExternalName = 'cr534_address1latitude';
            ExternalType = 'String';
            Description = '';
            Caption = 'Address 1: Latitude';
        }
        field(10394; cr534_Address1Longitude; Text[100])
        {
            ExternalName = 'cr534_address1longitude';
            ExternalType = 'String';
            Description = '';
            Caption = 'Address 1: Longitude';
        }
        field(10395; cr534_CurrentLocation; Text[100])
        {
            ExternalName = 'cr534_currentlocation';
            ExternalType = 'String';
            Description = '';
            Caption = 'Current Location';
        }
        field(10396; advic_sendcoito; GUID)
        {
            ExternalName = 'advic_sendcoito';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Send COI To';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10399; advic_sendlienwaiversto; GUID)
        {
            ExternalName = 'advic_sendlienwaiversto';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Send Lien Waivers To';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10402; advic_sendinvoicesto; GUID)
        {
            ExternalName = 'advic_sendinvoicesto';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Send Invoices to';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10405; advic_taxexempt; Boolean)
        {
            ExternalName = 'advic_taxexempt';
            ExternalType = 'Boolean';
            Description = '';
            Caption = '(Do Not Use) Tax Exempt';
        }
        field(10407; advic_jobdetailaddress; Text[2048])
        {
            ExternalName = 'advic_jobdetailaddress';
            ExternalType = 'String';
            Description = '';
            Caption = 'Job Detail Address';
        }
        field(10408; advic_gcjobnum; Text[100])
        {
            ExternalName = 'advic_gcjobnum';
            ExternalType = 'String';
            Description = '';
            Caption = 'GC Job Num';
        }
        field(10409; advic_awardeddate; Date)
        {
            ExternalName = 'advic_awardeddate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Awarded Date';
        }
        field(10410; advic_sendcontract; GUID)
        {
            ExternalName = 'advic_sendcontract';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Send Contract';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10413; advic_sendcloseoutdoc; GUID)
        {
            ExternalName = 'advic_sendcloseoutdoc';
            ExternalType = 'Lookup';
            Description = '';
            Caption = 'Send Close Out Doc';
            TableRelation = "CRM Contact".ContactId;
        }
        field(10417; cr534_TeamsHyperlink; Text[2048])
        {
            ExternalName = 'cr534_teamshyperlink';
            ExternalType = 'String';
            ExternalAccess = Read;
            Description = '';
            Caption = 'Teams Hyperlink';
        }
        field(10418; cr534_DrawingLink; Text[2048])
        {
            ExternalName = 'cr534_drawinglink';
            ExternalType = 'String';
            ExternalAccess = Read;
            Description = '';
            Caption = 'Drawing Link';
        }
        field(10419; advic_estimatedgriddeliverydate; Date)
        {
            ExternalName = 'advic_estimatedgriddeliverydate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Estimated Grid Delivery Date';
        }
        field(10420; advic_estimatedtiledeliverydate; Date)
        {
            ExternalName = 'advic_estimatedtiledeliverydate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Estimated Tile Delivery Date';
        }
        field(10423; advic_adddayestimateddate; Date)
        {
            ExternalName = 'advic_adddayestimateddate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Add Day Estimated Date';
        }
        field(10424; advic_invoicedate; Date)
        {
            ExternalName = 'advic_invoicedate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Invoice Date';
        }
        field(10425; advic_after10daysmodifyawardedstatus; Date)
        {
            ExternalName = 'advic_after10daysmodifyawardedstatus';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'After 10 Days Modify Awarded status';
        }
        field(10429; advic_nwajobnumber; Text[100])
        {
            ExternalName = 'advic_nwajobnumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'NWA Job Number';
        }
        field(10430; cr534_Stage; Text[400])
        {
            ExternalName = 'cr534_stage';
            ExternalType = 'String';
            Description = '';
            Caption = 'Stage';
        }
        field(10431; advic_quoteexpirationdate; Date)
        {
            ExternalName = 'advic_quoteexpirationdate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Quote Expiration Date';
        }
        field(10442; advic_gridstartdate; Date)
        {
            ExternalName = 'advic_gridstartdate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Grid Start Date';
        }
        field(10443; advic_gridcompletiondate; Date)
        {
            ExternalName = 'advic_gridcompletiondate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Grid Completion Date';
        }
        field(10444; advic_tilestartdate; Date)
        {
            ExternalName = 'advic_tilestartdate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Tile Start Date';
        }
        field(10445; advic_tilecompletiondate; Date)
        {
            ExternalName = 'advic_tilecompletiondate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Tile Completion Date';
        }
        field(10446; advic_projectcompletiondate; Date)
        {
            ExternalName = 'advic_projectcompletiondate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Project Completion Date';
        }
        field(10447; advic_estimatedspecialmaterialinstalldate; Date)
        {
            ExternalName = 'advic_estimatedspecialmaterialinstalldate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Estimated Special Material Install Date';
        }
        field(10448; advic_specialmaterialorderdate; Date)
        {
            ExternalName = 'advic_specialmaterialorderdate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Special Material Order Date';
        }
        field(10449; advic_specialmaterialdeliverydate; Date)
        {
            ExternalName = 'advic_specialmaterialdeliverydate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Special Material Delivery Date';
        }
        field(10450; advic_archjobnum; Text[100])
        {
            ExternalName = 'advic_archjobnum';
            ExternalType = 'String';
            Description = '';
            Caption = 'Arch. Job Num';
        }
        field(10453; advic_gridtotal; Decimal)
        {
            ExternalName = 'advic_gridtotal';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Grid Total(=Cell Q30)';
        }
        field(10454; advic_tiletotal; Decimal)
        {
            ExternalName = 'advic_tiletotal';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Tile Total(=Cell Q36)';
        }
        field(10455; advic_angletotal; Decimal)
        {
            ExternalName = 'advic_angletotal';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Angle Total(=Cell Q42)';
        }
        field(10456; advic_wiretotal; Decimal)
        {
            ExternalName = 'advic_wiretotal';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Wire Total(=Cell Q49)';
        }
        field(10457; advic_insulationl45; Decimal)
        {
            ExternalName = 'advic_insulationl45';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Insulation(=Cell Q50)';
        }
        field(10458; advic_speciality; Decimal)
        {
            ExternalName = 'advic_speciality';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Speciality(=Cell Q54)';
        }
        field(10459; advic_seismic; Decimal)
        {
            ExternalName = 'advic_seismic';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Seismic(=Cell Q57)';
        }
        field(10460; advic_mischours; Decimal)
        {
            ExternalName = 'advic_mischours';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Misc Hours(=Cell Q61)';
        }
        field(10461; advic_sum; Decimal)
        {
            ExternalName = 'advic_sum';
            ExternalType = 'Decimal';
            ExternalAccess = Read;
            Description = '';
            Caption = 'Sum(=Cell Q63)';
        }
        field(10462; advic_value; Decimal)
        {
            ExternalName = 'advic_value';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Value(=Cell L63)';
        }
        field(10463; advic_gridcomplete; Boolean)
        {
            ExternalName = 'advic_gridcomplete';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Grid Complete';
        }
        field(10465; advic_gridisonsite; Boolean)
        {
            ExternalName = 'advic_gridisonsite';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Grid is onsite';
        }
        field(10467; advic_tileisonsite; Boolean)
        {
            ExternalName = 'advic_tileisonsite';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Tile is onsite';
        }
        field(10469; advic_specialmaterialmanufacturer; Text[300])
        {
            ExternalName = 'advic_specialmaterialmanufacturer';
            ExternalType = 'String';
            Description = '';
            Caption = 'Special Material Manufacturer';
        }
        field(10470; advic_decktypepageno; Text[100])
        {
            ExternalName = 'advic_decktypepageno';
            ExternalType = 'String';
            Description = '';
            Caption = 'Deck Type Page No.';
        }
        field(10471; advic_ponumber; Text[100])
        {
            ExternalName = 'advic_ponumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'PO Number';
        }
        field(10474; advic_ponotes; BLOB)
        {
            ExternalName = 'advic_ponotes';
            ExternalType = 'Memo';
            Description = '';
            Caption = '(Do Not Use) PO Notes';
            Subtype = Memo;
        }
        field(10475; advic_postatus; Option)
        {
            ExternalName = 'advic_postatus';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'PO Status';
            InitValue = " ";
            OptionMembers = " ",NA,POOrdered,POYetToBeOrdered;
            OptionOrdinalValues = -1, 100000000, 100000001, 100000002;
        }
        field(10479; advic_nonstockitemdetails; BLOB)
        {
            ExternalName = 'advic_nonstockitemdetails';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Non Stock Item Details';
            Subtype = Memo;
        }
        field(10490; advic_confirmeddate; Date)
        {
            ExternalName = 'advic_confirmeddate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Confirmed Start Date';
        }
        field(10531; advic_google; Text[200])
        {
            ExternalName = 'advic_google';
            ExternalType = 'String';
            Description = '';
            Caption = 'Google';
        }
        field(10532; advic_contractreviewedjobdetailsupdated; Text[100])
        {
            ExternalName = 'advic_contractreviewedjobdetailsupdated';
            ExternalType = 'String';
            Description = '';
            Caption = '(DoNotUse)Contract Reviewed & Job Details Updated';
        }
        field(10533; advic_fullyexecutedcontractavailable; Text[100])
        {
            ExternalName = 'advic_fullyexecutedcontractavailable';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) Fully executed Contract Available';
        }
        field(10534; advic_scheduleavailable; Text[100])
        {
            ExternalName = 'advic_scheduleavailable';
            ExternalType = 'String';
            Description = '';
            Caption = 'Schedule (Available)';
        }
        field(10535; advic_schedulerequestedtoprojectmanager; Text[100])
        {
            ExternalName = 'advic_schedulerequestedtoprojectmanager';
            ExternalType = 'String';
            Description = '';
            Caption = 'Schedule Requested to Project Manager';
        }
        field(10536; advic_coirequested; Text[100])
        {
            ExternalName = 'advic_coirequested';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) COI Requested';
        }
        field(10537; advic_coisent; Text[100])
        {
            ExternalName = 'advic_coisent';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) COI Sent';
        }
        field(10538; advic_submittalcreated; Text[100])
        {
            ExternalName = 'advic_submittalcreated';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) Submittal Created';
        }
        field(10539; advic_submittalreviewed; Text[100])
        {
            ExternalName = 'advic_submittalreviewed';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) Submittal Reviewed';
        }
        field(10540; advic_submittalsent; Text[100])
        {
            ExternalName = 'advic_submittalsent';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) Submittal Sent';
        }
        field(10541; advic_submittalapproved; Text[100])
        {
            ExternalName = 'advic_submittalapproved';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) Submittal Approved';
        }
        field(10542; advic_allfilessavedinjobfolder; Text[100])
        {
            ExternalName = 'advic_allfilessavedinjobfolder';
            ExternalType = 'String';
            Description = '';
            Caption = 'All Files Saved in Job Folder';
        }
        field(10543; advic_jobsitedocumentssaved; Text[2048])
        {
            ExternalName = 'advic_jobsitedocumentssaved';
            ExternalType = 'String';
            Description = '';
            Caption = 'Jobsite Documents Saved';
        }
        field(10544; advic_emailsenttogcforanymissingInformation; Text[100])
        {
            ExternalName = 'advic_emailsenttogcforanymissinginformation';
            ExternalType = 'String';
            Description = '';
            Caption = 'Email Sent to GC for Any Missing Information';
        }
        field(10545; advic_taxexemptformavailable; Text[100])
        {
            ExternalName = 'advic_taxexemptformavailable';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) Tax Exempt Form Available';
        }
        field(10546; advic_taxexemptformrequested; Text[100])
        {
            ExternalName = 'advic_taxexemptformrequested';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) Tax Exempt Form Requested';
        }
        field(10547; advic_taxexemptformobtained; Text[100])
        {
            ExternalName = 'advic_taxexemptformobtained';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) Tax Exempt Form Obtained';
        }
        field(10548; advic_closeoutdocumentscreatedsent; Text[100])
        {
            ExternalName = 'advic_closeoutdocumentscreatedsent';
            ExternalType = 'String';
            Description = '';
            Caption = 'Close out Documents Created & Sent';
        }
        field(10549; advic_pocreated; Text[100])
        {
            ExternalName = 'advic_pocreated';
            ExternalType = 'String';
            Description = '';
            Caption = 'PO Created';
        }
        field(10550; advic_istheporeviewedfinished; Text[100])
        {
            ExternalName = 'advic_istheporeviewedfinished';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) Is the PO Reviewed & Finished';
        }
        field(10551; advic_poorderedoryettobeordered; Text[100])
        {
            ExternalName = 'advic_poorderedoryettobeordered';
            ExternalType = 'String';
            Description = '';
            Caption = '(Do Not Use) PO Ordered or Yet to be Ordered';
        }
        field(10552; advic_nonstockitem; Text[100])
        {
            ExternalName = 'advic_nonstockitem';
            ExternalType = 'String';
            Description = '';
            Caption = 'Non Stock Item';
        }
        field(10553; advic_estimationcreatedinqb; Text[100])
        {
            ExternalName = 'advic_estimationcreatedinqb';
            ExternalType = 'String';
            Description = '';
            Caption = 'Estimation Created in QB';
        }
        field(10554; advic_confirmednotes; BLOB)
        {
            ExternalName = 'advic_confirmednotes';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Confirmed Notes';
            Subtype = Memo;
        }
        field(10555; advic_contractamount; Decimal)
        {
            ExternalName = 'advic_contractamount';
            ExternalType = 'Money';
            Description = '';
            Caption = 'Contract Amount';
        }
        field(10556; advic_contractamount_Base; Decimal)
        {
            ExternalName = 'advic_contractamount_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Contract Amount in base currency.';
            Caption = 'Contract Amount (Base)';
        }
        field(10557; new_InvoiceNotes; BLOB)
        {
            ExternalName = 'new_invoicenotes';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'AR Invoice Notes';
            Subtype = Memo;
        }
        field(10558; advic_PickUpNeeded; Boolean)
        {
            ExternalName = 'advic_pickupneeded';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Pick Up Needed ';
        }
        field(10560; advic_pickupcompleted; Boolean)
        {
            ExternalName = 'advic_pickupcompleted';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Pick Up Completed';
        }
        field(10562; advic_pickupreminderdate; Date)
        {
            ExternalName = 'advic_pickupreminderdate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Pick Up Reminder Date';
        }
        field(10563; advic_pickupnotes; BLOB)
        {
            ExternalName = 'advic_pickupnotes';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Pick Up Notes';
            Subtype = Memo;
        }
        field(10564; advic_customerpaymentnotes; BLOB)
        {
            ExternalName = 'advic_customerpaymentnotes';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Customer Payment Notes';
            Subtype = Memo;
        }
        field(10565; advic_rcppageno; Text[100])
        {
            ExternalName = 'advic_rcppageno';
            ExternalType = 'String';
            Description = '';
            Caption = 'RCP Page No';
        }
        field(10566; advic_rcpplandate; Date)
        {
            ExternalName = 'advic_rcpplandate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'RCP Plan Date';
        }
        field(10567; advic_partitionnumber; Text[100])
        {
            ExternalName = 'advic_partitionnumber';
            ExternalType = 'String';
            Description = '';
            Caption = 'Partition Number''s That Get Insulation';
        }
        field(10574; advic_Miketotakecareof; Boolean)
        {
            ExternalName = 'advic_miketotakecareof';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Mike to take care of.';
        }
        field(10576; advic_bluebeamsessionhyperlink; Text[150])
        {
            ExternalName = 'advic_bluebeamsessionhyperlink';
            ExternalType = 'String';
            Description = '';
            Caption = 'Bluebeam Session Hyperlink';
        }
        field(10577; advic_miketoaction; BLOB)
        {
            ExternalName = 'advic_miketoaction';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Mike to Action';
            Subtype = Memo;
        }
        field(10578; advic_TeamNotes; Text[2048])
        {
            ExternalName = 'advic_teamnotes';
            ExternalType = 'String';
            Description = 'Pending Actions from Team';
            Caption = 'Team Notes';
        }
        field(10579; advic_nomaterialquotefilesneeded; Boolean)
        {
            ExternalName = 'advic_nomaterialquotefilesneeded';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'No Material Quote Files Needed';
        }
        field(10581; advic_quoterequestfiles; Boolean)
        {
            ExternalName = 'advic_quoterequestfiles';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Q Files';
        }
        field(10583; advic_ARInvoiceCreated; Boolean)
        {
            ExternalName = 'advic_arinvoicecreated';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'AR Invoice Created ';
        }
        field(10585; advic_arInvoiceSent; Boolean)
        {
            ExternalName = 'advic_arinvoicesent';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'AR Invoice Sent';
        }
        field(10587; advic_seismictypepageno; Text[50])
        {
            ExternalName = 'advic_seismictypepageno';
            ExternalType = 'String';
            Description = '';
            Caption = 'Seismic Type Page No';
        }
        field(10588; advic_findarmstrongvendor; Text[100])
        {
            ExternalName = 'advic_findarmstrongvendor';
            ExternalType = 'String';
            Description = '';
            Caption = 'Find Armstrong Vendor';
        }
        field(10589; advic_findusgvendor; Text[100])
        {
            ExternalName = 'advic_findusgvendor';
            ExternalType = 'String';
            Description = '';
            Caption = 'Find USG Vendor';
        }
        field(10590; advic_findcertainteedvendor; Text[100])
        {
            ExternalName = 'advic_findcertainteedvendor';
            ExternalType = 'String';
            Description = '';
            Caption = 'Find CertainTeed Vendor';
        }
        field(10591; advic_ARInvoiceStatus; Text[100])
        {
            ExternalName = 'advic_arinvoicestatus';
            ExternalType = 'String';
            Description = '';
            Caption = 'AR Invoice Status';
        }
        field(10592; advic_JobsiteDocumentsSent; Boolean)
        {
            ExternalName = 'advic_jobsitedocumentssent';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Jobsite Documents Sent';
        }
        field(10594; advic_bluebeamcloudhyperlink; Text[150])
        {
            ExternalName = 'advic_bluebeamcloudhyperlink';
            ExternalType = 'String';
            Description = '';
            Caption = 'Bluebeam Cloud Hyperlink';
        }
        field(10595; advic_stock; Decimal)
        {
            ExternalName = 'advic_stock';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Stock(=Cell Q58)';
        }
        field(10598; advic_toc; Boolean)
        {
            ExternalName = 'advic_toc';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'TOC';
        }
        field(10600; advic_materialreminderdate; Date)
        {
            ExternalName = 'advic_materialreminderdate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Material Reminder Date';
        }
        field(10603; advic_m; Boolean)
        {
            ExternalName = 'advic_m';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'M';
        }
        field(10605; advic_revd; Boolean)
        {
            ExternalName = 'advic_revd';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'REVD';
        }
        field(10607; advic_next; Option)
        {
            ExternalName = 'advic_next';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'NEXT';
            InitValue = " ";
            OptionMembers = " ",Abby,GTG,Gabby,Kathryn,Kevin,Marvin,Mike,Primrose,Rick;
            OptionOrdinalValues = -1, 1, 7, 8, 9, 2, 3, 4, 6, 5;
        }
        field(10609; advic_axiom; Option)
        {
            ExternalName = 'advic_axiom';
            ExternalType = 'Picklist';
            Description = 'Axiom';
            Caption = 'Axiom';
            InitValue = " ";
            OptionMembers = " ","2""","4""","6""","8""","10""","12""";
            OptionOrdinalValues = -1, 1, 2, 3, 4, 5, 6;
        }
        field(10611; advic_lights; Boolean)
        {
            ExternalName = 'advic_lights';
            ExternalType = 'Boolean';
            Description = 'L Lgts ovr 4''';
            Caption = 'Lights';
        }
        field(10613; advic_RFI; Option)
        {
            ExternalName = 'advic_rfi';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'RFI';
            InitValue = " ";
            OptionMembers = " ",NoneNeeded,Send;
            OptionOrdinalValues = -1, 0, 1;
        }
        field(10615; advic_completedhrs; Decimal)
        {
            ExternalName = 'advic_completedhrs';
            ExternalType = 'Decimal';
            Description = '';
            Caption = '- Hrs';
        }
        field(10617; advic_remaininghrs; Decimal)
        {
            ExternalName = 'advic_remaininghrs';
            ExternalType = 'Decimal';
            ExternalAccess = Read;
            Description = '';
            Caption = 'Remaining Hrs';
        }
        field(10618; advic_rd; Datetime)
        {
            ExternalName = 'advic_rd';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'RD';
        }
        field(10619; advic_lowbid; Decimal)
        {
            ExternalName = 'advic_lowbid';
            ExternalType = 'Money';
            Description = '';
            Caption = 'Low Bid';
        }
        field(10620; advic_lowbid_Base; Decimal)
        {
            ExternalName = 'advic_lowbid_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Low Bid in base currency.';
            Caption = 'Low Bid (Base)';
        }
        field(10622; advic_nextd; Datetime)
        {
            ExternalName = 'advic_nextd';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'NextD';
        }
        field(10623; advic_usedhrs; Decimal)
        {
            ExternalName = 'advic_usedhrs';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Used Hrs';
        }
        field(10624; advic_nextfinal; Option)
        {
            ExternalName = 'advic_nextfinal';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Next Final';
            InitValue = " ";
            OptionMembers = " ",Abby,GTG,Gabby,Kathryn,Kevin,Marvin,Mike,Primrose,Rick;
            OptionOrdinalValues = -1, 1, 7, 8, 9, 2, 3, 4, 6, 5;
        }
        field(10626; fint_opportunities; Text[100])
        {
            ExternalName = 'fint_opportunities';
            ExternalType = 'String';
            Description = '';
            Caption = 'opportunities';
        }
        field(10627; advic_sitesafety; Option)
        {
            ExternalName = 'advic_sitesafety';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Site Safety';
            InitValue = " ";
            OptionMembers = " ",NotRequired,Requested,Sent;
            OptionOrdinalValues = -1, 1, 2, 3;
        }
        field(10629; advic_submittal; Option)
        {
            ExternalName = 'advic_submittal';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Submittal';
            InitValue = " ";
            OptionMembers = " ",NotRequired,Requested,Send,Approved,Revise,Created;
            OptionOrdinalValues = -1, 1, 2, 3, 4, 5, 6;
        }
        field(10631; advic_coi; Option)
        {
            ExternalName = 'advic_coi';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'COI';
            InitValue = " ";
            OptionMembers = " ",NotRequired,Requested,Sent;
            OptionOrdinalValues = -1, 1, 2, 3;
        }
        field(10633; advic_contract; Option)
        {
            ExternalName = 'advic_contract';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Contract ';
            InitValue = " ";
            OptionMembers = " ",Received,MKSigned,ReturnedToGC,FullySignedInFile,NotRequired,Requested;
            OptionOrdinalValues = -1, 1, 2, 3, 4, 5, 6;
        }
        field(10635; advic_tax_exempt; Option)
        {
            ExternalName = 'advic_tax_exempt';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Tax-Exempt';
            InitValue = " ";
            OptionMembers = " ",Yes,No,Requested,InFile;
            OptionOrdinalValues = -1, 1, 2, 3, 4;
        }
        field(10637; advic_po; Option)
        {
            ExternalName = 'advic_po';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'PO ';
            InitValue = NeedsCreated;
            OptionMembers = NeedsCreated,"#Needed",AllCompete;
            OptionOrdinalValues = 1, 2, 3;
        }
        field(10639; advic_poapprovalstatus; Option)
        {
            ExternalName = 'advic_poapprovalstatus';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'PO Approval Status';
            InitValue = " ";
            OptionMembers = " ",Created,Sent,NotRequired,Approved,Rejected,MultipleNeeded,Modify;
            OptionOrdinalValues = -1, 1, 2, 3, 4, 5, 6, 7;
        }
        field(10643; advic_actualgridtotal; Decimal)
        {
            ExternalName = 'advic_actualgridtotal';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Grid Total(=Cell Q30)';
        }
        field(10644; advic_actualtiletotal; Decimal)
        {
            ExternalName = 'advic_actualtiletotal';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Tile Total(=Cell Q36)';
        }
        field(10645; advic_actualangletotal; Decimal)
        {
            ExternalName = 'advic_actualangletotal';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Angle Total(=Cell Q42)';
        }
        field(10646; advic_actualwiretotal; Decimal)
        {
            ExternalName = 'advic_actualwiretotal';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Wire Total(=Cell Q49)';
        }
        field(10647; advic_actualinsulationl45; Decimal)
        {
            ExternalName = 'advic_actualinsulationl45';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Insulation(=Cell Q50)';
        }
        field(10648; advic_actualspeciality; Decimal)
        {
            ExternalName = 'advic_actualspeciality';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Speciality(=Cell Q54)';
        }
        field(10649; advic_actualseismic; Decimal)
        {
            ExternalName = 'advic_actualseismic';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Seismic(=Cell Q57)';
        }
        field(10650; advic_actualstock; Decimal)
        {
            ExternalName = 'advic_actualstock';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Stock(=Cell Q58)';
        }
        field(10651; advic_actualmischours; Decimal)
        {
            ExternalName = 'advic_actualmischours';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Misc Hours(=Cell Q61)';
        }
        field(10653; advic_actualvalue; Decimal)
        {
            ExternalName = 'advic_actualvalue';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Value(=Cell L63)';
        }
        field(10654; advic_actualsum; Decimal)
        {
            ExternalName = 'advic_actualsum';
            ExternalType = 'Decimal';
            ExternalAccess = Read;
            Description = '';
            Caption = 'Sum(=Cell Q63)';
        }
    }
}

pageextension 50105 CRMOpportunityListExt extends "CRM Opportunity List"
{
    Caption = 'Opportunities - Microsoft Dynamics 365 Sales';
    DeleteAllowed = true;
    Editable = true;
    InsertAllowed = true;
    ModifyAllowed = true;

    layout
    {
        modify(StatusCode)
        {
            OptionCaption = 'Awarded,Bid Complete,Bid in progress,Bid Sent,Invoiced in Full,Job Complete,Not Bidding,On Hold,Paid in Full,Planning/Procurement,Started';
        }
    }

}