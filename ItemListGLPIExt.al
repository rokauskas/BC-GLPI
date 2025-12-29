namespace DefaultPublisher.BCGLPI;

pageextension 50111 ItemListGLPIExt extends Microsoft.Inventory.Item."Item List"
{
    layout
    {
        addafter(Description)
        {
            field(IsSynced; Rec.IsSynced)
            {
                ApplicationArea = All;
                Caption = 'Is Synced';
                Editable = true;
            }
            field(NeedsSync; Rec.NeedsSync)
            {
                ApplicationArea = All;
                Caption = 'Needs Sync';
                Editable = true;
            }
            field(LastSyncedAt; Rec.LastSyncedAt)
            {
                ApplicationArea = All;
                Caption = 'Last Synced At';
                Editable = true;
            }
            field(GLPISystemID; Rec.GLPISystemID)
            {
                ApplicationArea = All;
                Caption = 'External System ID';
                Editable = true;
            }
        }
    }
}
