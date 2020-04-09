codeunit 50100 MathSum implements MathInterface
{
    procedure Calculate(a: Integer): Integer
    begin
        exit(a);
    end;


    procedure Calculate(a: Integer; b: Integer): Integer
    begin
        exit(a + b);
    end;
}