page 50108 "Lista de personal"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Personal;
    Caption = 'Lista de personal';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código personal"; Rec."Código personal")
                {
                    ApplicationArea = All;
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field("Cargo"; Rec.Cargo)
                {
                    ApplicationArea = All;
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                }
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}