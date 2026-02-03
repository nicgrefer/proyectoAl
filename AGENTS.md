# AGENTS.md - Business Central AL Development Guidelines

## Build/Lint/Test Commands

### Building the Project
```bash
# Build the AL project
al-compile --project . --output "output/.navx"

# Package for deployment
al-package --project . --output "output/app.app"
```

### Running Tests
This project uses standard Business Central testing. Tests are typically run through:
```bash
# Run all tests (requires Business Central Server instance)
Publish-NAVApp -ServerInstance BC140 -Path "output/app.app"
Invoke-NAVCodeunit -ServerInstance BC140 -CodeunitId 130404 -CompanyName "CRONUS International Ltd."
```

### Code Quality
No specific linting tools configured in this project. Follow AL coding standards below.

## Code Style Guidelines

### Language and Framework
- **Language**: AL (Application Language) for Microsoft Dynamics 365 Business Central
- **Platform Version**: 23.0.0.0
- **Runtime**: 12.0
- **Target**: Business Central SaaS/on-premises extension

### File Structure and Naming
```
tables/          - Table objects (50100-50149)
page/            - Page objects (50100-50149)
codeunits/       - Codeunit objects (50101-50103)
enum/            - Enum definitions (50100-50101)
```

### Object Numbering Convention
- **Tables**: 50100-50149 (within range defined in app.json)
- **Pages**: Match corresponding table numbers
- **Codeunits**: 50101+ (install codeunits use 50101)
- **Enums**: 50100-50101

### Table Design Patterns
- Use Spanish field names and captions (educational context)
- Primary keys are always clustered
- Include at least primary key and commonly used secondary keys
- Use `DataClassification = ToBeClassified` for all tables
- Set appropriate `InitValue` for numeric fields (typically 0)

### Field Validation Patterns
```al
trigger OnValidate()
begin
    if Rec.FieldName = '' then
        Error('El campo no puede estar vacío.');
end;
```

### FlowFields Implementation
- Use FlowFields for calculated fields
- FlowFilter for dynamic filtering
- Set `Editable = false` for calculated fields
- Example: count related records with filters

### Data Type Conventions
- **Codes**: Use `Code[3]` or `Code[4]` for identifiers
- **Text**: Use `Text[30]` for names, `Text[50]` for addresses
- **Decimals**: Use `DecimalPlaces = 2` for monetary values
- **Dates**: Use `Date` type for dates, `Time` for hours
- **Enums**: Create separate enum objects for option sets

### Naming Conventions
- **Field Names**: Spanish, descriptive, with spaces in captions
- **Variables**: Clear descriptive names, avoid abbreviations
- **Procedures**: Use `Insertar[Tabla]` for data insertion procedures
- **Objects**: Use Spanish names matching business domain

### Error Handling
- Validate required fields with `Error()` function
- Use positive value validation (MinValue = 0)
- Provide clear Spanish error messages
- Use `Confirm()` for destructive operations

### Code Organization
- Group related procedures in codeunits
- Use local procedures for internal logic
- Separate data insertion logic from business logic
- Include installation codeunit for automatic data setup

### Enum Definition Patterns
```al
enum 50100 SexoEnum
{
    Extensible = true;
    value(0; Blanco) { Caption = ' '; }
    value(1; Masculino) { Caption = 'Masculino'; }
    value(2; Femenino) { Caption = 'Femenino'; }
}
```

### Page Design
- Use `PageType = List` for list pages
- Set `ApplicationArea = All` and `UsageCategory = Lists`
- Include `ToolTip` for all fields
- Use Spanish captions throughout

### Special Considerations
- All text content in Spanish (educational context)
- Focus on educational institution management
- Include calculated fields for business metrics
- Support for department-based organization structure
- Automatic data loading on installation

### Testing Approach
- Use standard Business Central testing framework
- Test data insertion through dedicated codeunits
- Validate calculated fields and relationships
- Test FlowField calculations with various filters

This project manages educational data including courses, departments, students, faculty, and enrollment information for a teaching center migrating from an EDUCA database to Business Central.