page 50101 "Role Center EDUCA"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    Caption = 'Role Center EDUCA';

    layout
    {
        area(RoleCenter)
        {
            group(Left)
            {
                Caption = 'Navegación';
                part(EstudiantesPart; "Lista de estudiantes")
                {
                    ApplicationArea = All;
                }
                part(MatriculasPart; "Lista Matriculas")
                {
                    ApplicationArea = All;
                }
            }

            group(Middle)
            {
                Caption = 'Gestión';
                part(CursosPart; "Lista de cursos")
                {
                    ApplicationArea = All;
                }
                part(ClasesPart; "Lista de clases")
                {
                    ApplicationArea = All;
                }
            }

            group(Right)
            {
                Caption = 'Estadísticas';
                part(EstadisticasProfesor; "Estadísticas profesor")
                {
                    ApplicationArea = All;
                }
                part(EstadisticasClase; "Estadísticas clase")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            group(Navegacion)
            {
                Caption = 'Navegación';
                action(OpenEstudiantes)
                {
                    Caption = 'Abrir lista de estudiantes';
                    RunObject = page "Lista de estudiantes";
                }
                action(OpenCursos)
                {
                    Caption = 'Abrir lista de cursos';
                    RunObject = page "Lista de cursos";
                }
                action(OpenMatriculas)
                {
                    Caption = 'Abrir lista de matrículas';
                    RunObject = page "Lista Matriculas";
                }
                action(OpenPersonal)
                {
                    Caption = 'Abrir lista de personal';
                    RunObject = page "Lista de personal";
                }
            }
        }
        area(Embedding)
        {
            action(RefreshRoleCenter)
            {
                Caption = 'Actualizar';
                Image = Refresh;
            }
        }
    }
}