codeunit 50203 MathSquareRootTest
{
    Subtype = Test;

    var
        LibraryAssert_g: Codeunit "Library Assert";

    [Test]
    procedure TestSquareValues()
    var
        MathInterface_l: Interface MathInterface;           // defined in referenced application
        MathEnum_l: Enum MathEnum;                          // defined in referenced application
        MathSquareRoot_l: Codeunit MathSquareRoot;
    begin
        MathInterface_l := MathSquareRoot_l;                    // works correctly
        //MathInterface_l := MathEnum_l::"Square Root Values";     // can not be published

        LibraryAssert_g.AreEqual(3, MathInterface_l.Calculate(9), '');
        LibraryAssert_g.AreEqual(12, MathInterface_l.Calculate(9, 16), '');
    end;
}