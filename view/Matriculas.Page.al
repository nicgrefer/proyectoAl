page 50101 "Lista de matriculas"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Matrículas";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo del curso"; Rec."Código curso") { }
                field("Sección"; Rec."Sección") { }
                field("Codico del estudiante"; Rec."Código estudiante") { }
                field("Fecha de matriculación"; Rec."Fecha matricula") { }
                field("Hora de matriculación"; Rec."Fecha matricula") { }

            }
        }
    }
}