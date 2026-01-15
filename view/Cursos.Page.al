page 50100 "Lista de cursos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Cursos;
    Caption = 'Lista de cursos';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                }
                field("Nombre curso"; Rec."Nombre curso")
                {
                    ApplicationArea = All;
                }
                field("Desc. curso"; Rec."Desc. curso")
                {
                    ApplicationArea = All;
                }
                field("Créditos"; Rec."Créditos")
                {
                    ApplicationArea = All;
                }
                field("Tarifa"; Rec."Tarifa")
                {
                    ApplicationArea = All;
                }
                field("Código dept. "; Rec."Código dept.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}