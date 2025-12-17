table 50101 Departamentos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Código dept."; Code[4]) { }
        field(2; "Edificio"; Text[2]) { }
        field(3; "Despacho"; Integer) { }

    }

    keys
    {
        key(kp; "Código dept.")
        {
            Clustered = true;
        }
        key(despacho; Despacho) { }
    }

}