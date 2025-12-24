namespace DefaultPublisher.BCGLPI;
using Microsoft.Inventory.Item;

tableextension 50101 ItemGLPIExt extends Item
{
    fields
    {
        field(50100; IsSynced; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Is Synced';
            Description = 'Marks whether the item has already been synchronized with GLPI.';
        }
        field(50101; NeedsSync; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Needs Sync';
            Description = 'Set to TRUE whenever the item changes. Integration job reads only items where NeedsSync = TRUE.';
        }
        field(50102; LastSyncedAt; DateTime)
        {
            DataClassification = SystemMetadata;
            Caption = 'Last Synced At';
            Description = 'Stores when the last sync happened.';
        }
        field(50103; GLPISystemID; Text[50])
        {
            DataClassification = SystemMetadata;
            Caption = 'External System ID';
            Description = 'Stores the GLPI Item ID after creation.';
        }
        // LastModifiedDateTime is a standard BC field
    }
}
