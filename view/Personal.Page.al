page 50100 "Lista de personal"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Personal;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo persoal"; Rec."Código personal") { }
                field("Nombre persoal"; Rec."Nombre") { }
                field("Cargo persoal"; Rec."Cargo") { }
                field("Sueldo persoal"; Rec."Sueldo") { }
            }
        }
    }
}