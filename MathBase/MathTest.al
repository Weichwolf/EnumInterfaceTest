codeunit 50102 MathTest
{
    Subtype = Test;

    var
        LibraryAssert_g: Codeunit "Library Assert";
        MathEnum_g: Enum MathEnum;

    [Test]
    procedure TestSumValues()
    var
        MathInterface_l: Interface MathInterface;
    begin
        MathInterface_l := MathEnum_g::"Sum Values";

        LibraryAssert_g.AreEqual(2, MathInterface_l.Calculate(2), '');
        LibraryAssert_g.AreEqual(5, MathInterface_l.Calculate(2, 3), '');
    end;

    [Test]
    procedure TestMultiplyValues()
    var
        MathInterface_l: Interface MathInterface;
    begin
        MathInterface_l := MathEnum_g::"Multiply Values";

        LibraryAssert_g.AreEqual(2, MathInterface_l.Calculate(2), '');
        LibraryAssert_g.AreEqual(6, MathInterface_l.Calculate(2, 3), '');
    end;
}