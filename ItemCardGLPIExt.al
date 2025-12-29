namespace DefaultPublisher.BCGLPI;

pageextension 50112 ItemCardGLPIExt extends Microsoft.Inventory.Item."Item Card"
{
    layout
    {
        addlast(content)
        {
            group(GLPI)
            {
                Caption = 'GLPI';
                field(IsSynced; Rec.IsSynced)
                {
                    ApplicationArea = All;
                    Caption = 'Is Synced';
                }
                field(NeedsSync; Rec.NeedsSync)
                {
                    ApplicationArea = All;
                    Caption = 'Needs Sync';
                }
                field(LastSyncedAt; Rec.LastSyncedAt)
                {
                    ApplicationArea = All;
                    Caption = 'Last Synced At';
                }
                field(GLPISystemID; Rec.GLPISystemID)
                {
                    ApplicationArea = All;
                    Caption = 'External System ID';
                }
            }
        }
    }
}