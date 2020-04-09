codeunit 50200 MathSquare implements MathInterface
{
    procedure Calculate(a: Integer): Integer
    begin
        exit(a * a);
    end;


    procedure Calculate(a: Integer; b: Integer): Integer
    begin
        exit(Calculate(a) * Calculate(b));
    end;
}