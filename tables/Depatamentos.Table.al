table 50101 Departamentos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Código dept."; Code[4])
        {
            trigger OnValidate()
            begin
                if "Código dept." = ' ' then
                    Error('El Codigo no muede estar vacío');
                Rec."Código dept." := UpperCase(Rec."Código dept.")
            end;
        }
        field(2; "Edificio"; Text[2])
        {
            trigger OnValidate()
            begin
                Rec.Edificio := UpperCase(Rec.Edificio)
            end;
        }
        field(3; "Despacho"; Integer)
        {
            InitValue = 0;
            trigger OnValidate()
            begin
                if Rec.Despacho < 0 then
                    Error('No muede ser un valor negativo');
                ;
            end;
        }

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