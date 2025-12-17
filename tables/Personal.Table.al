table 50106 Personal
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Código personal"; Integer) { }
        field(2; Nombre; Text[30]) { }
        field(3; Cargo; Text[20]) { }
        field(4; Sueldo; Decimal) { }
    }

    keys
    {
        key(pk; "Código personal")
        {
            Clustered = true;
        }
        key(nombre; Nombre) { }
        key(cargo; Cargo) { }

    }

}