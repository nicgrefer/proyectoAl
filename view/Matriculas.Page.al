page 50101 "Lista de matriculas"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Matrículas";
    Caption = 'Lista de matrículas';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del curso';
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de sección';
                }
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del estudiante';
                }
                field("Fecha matricula"; Rec."Fecha matricula")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fecha de matriculación';
                }
                field("Hora matricula"; Rec."Hora matricula")
                {
                    ApplicationArea = All;
                    ToolTip = 'Hora de matriculación';
                }
            }
        }
    }
}