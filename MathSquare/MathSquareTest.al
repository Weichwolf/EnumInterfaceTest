codeunit 50202 MathSquareTest
{
    Subtype = Test;

    var
        LibraryAssert_g: Codeunit "Library Assert";

    [Test]
    procedure TestSquareValues()
    var
        MathInterface_l: Interface MathInterface;           // defined in referenced application
        MathEnum_l: Enum MathEnum;                          // defined in referenced application
        MathSquare_l: Codeunit MathSquare;
    begin
        MathInterface_l := MathSquare_l;                    // works correctly
        //MathInterface_l := MathEnum_l::"Square Values";     // can not be published

        LibraryAssert_g.AreEqual(4, MathInterface_l.Calculate(2), '');
        LibraryAssert_g.AreEqual(36, MathInterface_l.Calculate(2, 3), '');
    end;
}