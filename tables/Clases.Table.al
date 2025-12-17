table 50102 Clases
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Código curso"; Code[3]) { }
        field(2; "Sección"; Text[2]) { }
        field(3; "Día"; Text[30]) { }
        field(4; "Hora"; Time) { }
        field(5; "Edificio"; Text[2]) { }
        field(6; "Despacho"; Integer) { }
    }

    keys
    {
        key(pk; "Código curso", "Sección")
        {
            Clustered = true;
        }
        key(dia; "Día") { }
    }

}