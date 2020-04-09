codeunit 50201 MathSquareRoot implements MathInterface
{
    procedure Calculate(a: Integer): Integer
    begin
        exit(Power(a, 0.5));
    end;


    procedure Calculate(a: Integer; b: Integer): Integer
    begin
        exit(Calculate(a) * Calculate(b));
    end;
}