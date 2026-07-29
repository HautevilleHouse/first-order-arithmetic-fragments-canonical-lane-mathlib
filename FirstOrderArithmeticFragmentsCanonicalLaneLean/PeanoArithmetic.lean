import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure PeanoArithmeticPackage (A : AdmissibleClass) where
  inductionScheme : Prop
  successorInjectivity : Prop
  addZero : Prop
  addSucc : Prop
  mulZero : Prop
  mulSucc : Prop

def PeanoArithmeticClosed (P : PeanoArithmeticPackage A) : Prop :=
  P.inductionScheme ∧ P.successorInjectivity ∧ P.addZero ∧ P.addSucc ∧ P.mulZero ∧ P.mulSucc

structure PeanoArithmeticEvidence (P : PeanoArithmeticPackage A) where
  inductionSchemeClosed : P.inductionScheme
  successorInjectivityClosed : P.successorInjectivity
  addZeroClosed : P.addZero
  addSuccClosed : P.addSucc
  mulZeroClosed : P.mulZero
  mulSuccClosed : P.mulSucc

theorem peano_arithmetic_closed_from_evidence (P : PeanoArithmeticPackage A) (E : PeanoArithmeticEvidence P) :
    PeanoArithmeticClosed P := by
  exact And.intro E.inductionSchemeClosed
    (And.intro E.successorInjectivityClosed
      (And.intro E.addZeroClosed
        (And.intro E.addSuccClosed
          (And.intro E.mulZeroClosed E.mulSuccClosed))))

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse