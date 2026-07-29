import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure PresburgerArithmeticPackage (A : AdmissibleClass) where
  linearOrder : Prop
  addCommutative : Prop
  addAssociative : Prop
  addZero : Prop
  addSucc : Prop
  inductionScheme : Prop

def PresburgerArithmeticClosed (P : PresburgerArithmeticPackage A) : Prop :=
  P.linearOrder ∧ P.addCommutative ∧ P.addAssociative ∧ P.addZero ∧ P.addSucc ∧ P.inductionScheme

structure PresburgerArithmeticEvidence (P : PresburgerArithmeticPackage A) where
  linearOrderClosed : P.linearOrder
  addCommutativeClosed : P.addCommutative
  addAssociativeClosed : P.addAssociative
  addZeroClosed : P.addZero
  addSuccClosed : P.addSucc
  inductionSchemeClosed : P.inductionScheme

theorem presburger_arithmetic_closed_from_evidence (P : PresburgerArithmeticPackage A) (E : PresburgerArithmeticEvidence P) :
    PresburgerArithmeticClosed P := by
  exact And.intro E.linearOrderClosed
    (And.intro E.addCommutativeClosed
      (And.intro E.addAssociativeClosed
        (And.intro E.addZeroClosed
          (And.intro E.addSuccClosed E.inductionSchemeClosed))))

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse