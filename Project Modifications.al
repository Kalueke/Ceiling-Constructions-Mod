tableextension 50103 AddCRM extends Job
{
    fields
    {
        field(50101; "Coupled to Dataverse"; Boolean)
        {
            FieldClass = FlowField;
            Caption = 'Coupled to Dataverse';
            Editable = false;
            CalcFormula = exist("CRM Integration Record" where("Integration ID" = field(SystemId), "Table ID" = const(Database::Job)));
        }
    }
}


pageextension 50103 AddCRM extends "Job List"
{
    layout
    {
        addlast(content)
        {
            field("Coupled to Dataverse"; Rec."Coupled to Dataverse")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies that the job is couped to an Opportunity in Dataverse';
                Visible = CRMIntegrationEnabled;
            }
        }
    }

    actions
    {
        addlast(navigation)
        {
            group(ActionGroupCRM)
            {
                Caption = 'Dataverse';
                Visible = CRMIntegrationEnabled;
                action(CRMGotoOpportunity)
                {
                    ApplicationArea = Suite;
                    Caption = 'Opportunity';
                    Image = CoupledContactPerson;
                    ToolTip = 'Open the coupled Dynamics 365 Sales opportunity.';

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.ShowCRMEntityFromRecordID(Rec.RecordId);
                    end;
                }
                action(CRMSynchronizeNow)
                {
                    AccessByPermission = TableData "CRM Integration Record" = IM;
                    ApplicationArea = Suite;
                    Caption = 'Synchronize';
                    Image = Refresh;
                    ToolTip = 'Send or get updated data to or from Dataverse.';

                    trigger OnAction()
                    var
                        Job: Record Job;
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                        JobRecordRef: RecordRef;
                    begin
                        CurrPage.SetSelectionFilter(Job);
                        Job.Next();

                        if Job.Count = 1 then
                            CRMIntegrationManagement.UpdateOneNow(Job.RecordId)
                        else begin
                            JobRecordRef.GetTable(Job);
                            CRMIntegrationManagement.UpdateMultipleNow(JobRecordRef);
                        end
                    end;
                }
                /*action(UpdateStatisticsInCRM)
                {
                    ApplicationArea = Suite;
                    Caption = 'Update Account Statistics';
                    Enabled = CRMIsCoupledToRecord;
                    Image = UpdateXML;
                    ToolTip = 'Send customer statistics data to Dataverse to update the Account Statistics FactBox.';
                    Visible = CRMIntegrationEnabled;

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.CreateOrUpdateCRMAccountStatistics(Rec);
                    end;
                }*/
                group(Coupling)
                {
                    Caption = 'Coupling', Comment = 'Coupling is a noun';
                    Image = LinkAccount;
                    ToolTip = 'Create, change, or delete a coupling between the Business Central record and a Dataverse record.';
                    action(ManageCRMCoupling)
                    {
                        AccessByPermission = TableData "CRM Integration Record" = IM;
                        ApplicationArea = Suite;
                        Caption = 'Set Up Coupling';
                        Image = LinkAccount;
                        ToolTip = 'Create or modify the coupling to a Dataverse account.';

                        trigger OnAction()
                        var
                            CRMIntegrationManagement: Codeunit "CRM Integration Management";
                        begin
                            CRMIntegrationManagement.DefineCoupling(Rec.RecordId);
                        end;
                    }
                    action(MatchBasedCoupling)
                    {
                        AccessByPermission = TableData "CRM Integration Record" = IM;
                        ApplicationArea = Suite;
                        Caption = 'Match-Based Coupling';
                        Image = CoupledCustomer;
                        ToolTip = 'Couple customers to accounts in Dataverse based on criteria.';

                        trigger OnAction()
                        var
                            Job: Record Job;
                            CRMIntegrationManagement: Codeunit "CRM Integration Management";
                            RecRef: RecordRef;
                        begin
                            CurrPage.SetSelectionFilter(Job);
                            RecRef.GetTable(Job);
                            CRMIntegrationManagement.MatchBasedCoupling(RecRef);
                        end;
                    }
                    action(DeleteCRMCoupling)
                    {
                        AccessByPermission = TableData "CRM Integration Record" = D;
                        ApplicationArea = Suite;
                        Caption = 'Delete Coupling';
                        Enabled = CRMIsCoupledToRecord;
                        Image = UnLinkAccount;
                        ToolTip = 'Delete the coupling to a Dataverse Opportunity.';

                        trigger OnAction()
                        var
                            Job: Record Job;
                            CRMCouplingManagement: Codeunit "CRM Coupling Management";
                            RecRef: RecordRef;
                        begin
                            CurrPage.SetSelectionFilter(Job);
                            RecRef.GetTable(Job);
                            CRMCouplingManagement.RemoveCoupling(RecRef);
                        end;
                    }
                }
                group(Create)
                {
                    Caption = 'Create';
                    Image = NewOpportunity;
                    action(CreateInCRM)
                    {
                        ApplicationArea = Suite;
                        Caption = 'Create Opportunity in Dataverse';
                        Image = NewOpportunity;
                        ToolTip = 'Generate the Opportunity in the coupled Dataverse.';

                        trigger OnAction()
                        var
                            Job: Record Job;
                            CRMIntegrationManagement: Codeunit "CRM Integration Management";
                        begin
                            CurrPage.SetSelectionFilter(Job);
                            CRMIntegrationManagement.CreateNewRecordsInCRM(Job);
                        end;
                    }
                    action(CreateFromCRM)
                    {
                        ApplicationArea = Suite;
                        Caption = 'Create a Job in Business Central';
                        Image = NewCustomer;
                        ToolTip = 'Generate the Job in the coupled Dataverse Opportunity.';

                        trigger OnAction()
                        var
                            CRMIntegrationManagement: Codeunit "CRM Integration Management";
                        begin
                            CRMIntegrationManagement.CreateNewCustomerFromCRM();
                        end;
                    }
                }
                action(ShowLog)
                {
                    ApplicationArea = Suite;
                    Caption = 'Synchronization Log';
                    Image = Log;
                    ToolTip = 'View integration synchronization jobs for the Jobs table.';

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.ShowLog(Rec.RecordId);
                    end;
                }
            }
        }

        /*addafter("Warehouse_Related")
        {
            group(Category_Synchronize)
            {
                Caption = 'Synchronize';
                Visible = CRMIntegrationEnabled or CDSIntegrationEnabled;

                group(Category_Coupling)
                {
                    Caption = 'Coupling';
                    ShowAs = SplitButton;

                    actionref(ManageCRMCoupling_Promoted; ManageCRMCoupling)
                    {
                    }
                    actionref(DeleteCRMCoupling_Promoted; DeleteCRMCoupling)
                    {
                    }
                    actionref(MatchBasedCoupling_Promoted; MatchBasedCoupling)
                    {
                    }
                }
                actionref(CRMSynchronizeNow_Promoted; CRMSynchronizeNow)
                {
                }

                actionref(CRMGotoAccount_Promoted; CRMGotoAccount)
                {
                }
                actionref(ShowLog_Promoted; ShowLog)
                {
                }
            }
        }*/
    }

    trigger OnAfterGetCurrRecord()
    var
        Job: Record Job;
        CRMCouplingManagement: Codeunit "CRM Coupling Management";
    begin
        if CRMIntegrationEnabled then
            CRMIsCoupledToRecord := CRMCouplingManagement.IsRecordCoupledToCRM(Rec.RecordId);
        if Rec."No." <> xRec."No." then
            CRMIntegrationManagement.SendResultNotification(Rec);
    end;

    trigger OnOpenPage()
    var
        IntegrationTableMapping: Record "Integration Table Mapping";

    begin
        CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled();

    end;

    var
        CRMIntegrationEnabled: Boolean;
        CRMIsCoupledToRecord: Boolean;
        BlockedFilterApplied: Boolean;
        CRMIntegrationManagement: Codeunit "CRM Integration Management";
}


pageextension 50104 AddDataverse extends "Job Card"
{
    actions
    {
        addlast(navigation)
        {
            group(ActionGroupCRM)
            {
                Caption = 'Dataverse';
                Visible = CRMIntegrationEnabled or CDSIntegrationEnabled;
                action(CRMGotoOpportunities)
                {
                    ApplicationArea = Suite;
                    Caption = 'Opportunity';
                    Image = CoupledOpportunity;
                    ToolTip = 'Specifies the sales opportunity that is coupled to this Dynamics 365 Sales opportunity.';
                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.ShowCRMEntityFromRecordID(Rec.RecordId);
                    end;
                }
                action(CRMSynchronizeNow)
                {
                    AccessByPermission = TableData "CRM Integration Record" = IM;
                    ApplicationArea = Suite;
                    Caption = 'Synchronize';
                    Image = Refresh;
                    ToolTip = 'Send or get updated data to or from Dataverse.';

                    trigger OnAction()
                    var
                        Job: Record Job;
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                        JobRecordRef: RecordRef;
                    begin
                        CurrPage.SetSelectionFilter(Job);
                        Job.Next();

                        if Job.Count = 1 then
                            CRMIntegrationManagement.UpdateOneNow(Job.RecordId)
                        else begin
                            JobRecordRef.GetTable(Job);
                            CRMIntegrationManagement.UpdateMultipleNow(JobRecordRef);
                        end
                    end;
                }
                /*action(UpdateStatisticsInCRM)
                {
                    ApplicationArea = Suite;
                    Caption = 'Update Account Statistics';
                    Enabled = CRMIsCoupledToRecord;
                    Image = UpdateXML;
                    ToolTip = 'Send customer statistics data to Dataverse to update the Account Statistics FactBox.';
                    Visible = CRMIntegrationEnabled;

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.CreateOrUpdateCRMAccountStatistics(Rec);
                    end;
                }*/
                group(Coupling)
                {
                    Caption = 'Coupling', Comment = 'Coupling is a noun';
                    Image = LinkAccount;
                    ToolTip = 'Create, change, or delete a coupling between the Business Central record and a Dataverse record.';
                    action(ManageCRMCoupling)
                    {
                        AccessByPermission = TableData "CRM Integration Record" = IM;
                        ApplicationArea = Suite;
                        Caption = 'Set Up Coupling';
                        Image = LinkAccount;
                        ToolTip = 'Create or modify the coupling to a Dataverse Opportunity.';

                        trigger OnAction()
                        var
                            CRMIntegrationManagement: Codeunit "CRM Integration Management";
                        begin
                            CRMIntegrationManagement.DefineCoupling(Rec.RecordId);
                        end;
                    }
                    action(MatchBasedCoupling)
                    {
                        AccessByPermission = TableData "CRM Integration Record" = IM;
                        ApplicationArea = Suite;
                        Caption = 'Match-Based Coupling';
                        Image = CoupledCustomer;
                        ToolTip = 'Couple customers to accounts in Dataverse based on criteria.';

                        trigger OnAction()
                        var
                            Job: Record Job;
                            CRMIntegrationManagement: Codeunit "CRM Integration Management";
                            RecRef: RecordRef;
                        begin
                            CurrPage.SetSelectionFilter(Job);
                            RecRef.GetTable(Job);
                            CRMIntegrationManagement.MatchBasedCoupling(RecRef);
                        end;
                    }
                    action(DeleteCRMCoupling)
                    {
                        AccessByPermission = TableData "CRM Integration Record" = D;
                        ApplicationArea = Suite;
                        Caption = 'Delete Coupling';
                        Enabled = CRMIsCoupledToRecord;
                        Image = UnLinkAccount;
                        ToolTip = 'Delete the coupling to a Dataverse Opportunity.';

                        trigger OnAction()
                        var
                            Job: Record Job;
                            CRMCouplingManagement: Codeunit "CRM Coupling Management";
                            RecRef: RecordRef;
                        begin
                            CurrPage.SetSelectionFilter(Job);
                            RecRef.GetTable(Job);
                            CRMCouplingManagement.RemoveCoupling(RecRef);
                        end;
                    }
                }
                group(Create)
                {
                    Caption = 'Create';
                    Image = NewOpportunity;
                    action(CreateInCRM)
                    {
                        ApplicationArea = Suite;
                        Caption = 'Create Opportunity in Dataverse';
                        Image = NewOpportunity;
                        ToolTip = 'Generate the Opportunity in the coupled Dataverse.';

                        trigger OnAction()
                        var
                            Job: Record Job;
                            CRMIntegrationManagement: Codeunit "CRM Integration Management";
                        begin
                            CurrPage.SetSelectionFilter(Job);
                            CRMIntegrationManagement.CreateNewRecordsInCRM(Job);
                        end;
                    }
                    action(CreateFromCRM)
                    {
                        ApplicationArea = Suite;
                        Caption = 'Create a Job in Business Central';
                        Image = NewOpportunity;
                        ToolTip = 'Generate the Job in the coupled Dataverse Opportunity.';

                        trigger OnAction()
                        var
                            CRMOpportunity: Record "CRM Opportunity";
                            CRMIntegrationManagement: Codeunit "CRM Integration Management";
                        begin
                            CurrPage.SetSelectionFilter(CRMOpportunity);
                            CRMIntegrationManagement.CreateNewRecordsFromCRM(CRMOpportunity);
                        end;
                    }
                }
                action(ShowLog)
                {
                    ApplicationArea = Suite;
                    Caption = 'Synchronization Log';
                    Image = Log;
                    ToolTip = 'View integration synchronization jobs for the Jobs table.';

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.ShowLog(Rec.RecordId);
                    end;
                }
            }
        }


    }

    trigger OnAfterGetCurrRecord()
    var
        Job: Record Job;
        CRMCouplingManagement: Codeunit "CRM Coupling Management";
    begin
        if CRMIntegrationEnabled or CDSIntegrationEnabled then
            CRMIsCoupledToRecord := CRMCouplingManagement.IsRecordCoupledToCRM(Rec.RecordId);
        if Rec."No." <> xRec."No." then
            CRMIntegrationManagement.SendResultNotification(Rec);
    end;

    trigger OnOpenPage()
    var
        IntegrationTableMapping: Record "Integration Table Mapping";
        CRMIntegrationManagement: Codeunit "CRM Integration Management";

    begin
        CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled();
        CDSIntegrationEnabled := CRMIntegrationManagement.IsCDSIntegrationEnabled();

    end;

    var
        CRMIntegrationEnabled: Boolean;
        CDSIntegrationEnabled: Boolean;
        CRMIsCoupledToRecord: Boolean;
        BlockedFilterApplied: Boolean;
        CRMIntegrationManagement: Codeunit "CRM Integration Management";
}

