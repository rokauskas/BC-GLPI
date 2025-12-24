namespace DefaultPublisher.BCGLPI;
using Microsoft.Inventory.Item;

page 50110 ItemGLPIApi
{
    PageType = API;
    DelayedInsert = true;
    SourceTable = Item;
    APIPublisher = 'bcglpi';
    APIGroup = 'integration';
    APIVersion = 'v1.0';
    EntityName = 'itemglpi';
    EntitySetName = 'itemglpis';
    Caption = 'GLPI Item API';

    layout
    {
        area(content)
        {
            field(No; Rec."No.") { }
            field(Description; Rec.Description) { }
            field(IsSynced; Rec.IsSynced) { }
            field(NeedsSync; Rec.NeedsSync) { }
            field(LastSyncedAt; Rec.LastSyncedAt) { }
            field(GLPISystemID; Rec.GLPISystemID) { }
            // field(LastModifiedDateTime; Rec.LastModifiedDateTime) { }
        }
    }
}
