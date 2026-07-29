import HautevilleHouse.FirstOrderArithmeticFragmentsCanonicalLaneLean.ArithmeticHierarchy

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure PeanoArithmeticFragmentsPackage {H : ArithmeticHierarchyPackage} where
  iSigmaOneInduction : Prop
  iPiOneInduction : Prop
  iSigmaTwoInduction : Prop
  iPiTwoInduction : Prop
  exponentiationDefined : Prop

structure PeanoArithmeticFragmentsEvidence {H : ArithmeticHierarchyPackage}
    (P : PeanoArithmeticFragmentsPackage H) where
  iSigmaOneInductionClosed : P.iSigmaOneInduction
  iPiOneInductionClosed : P.iPiOneInduction
  iSigmaTwoInductionClosed : P.iSigmaTwoInduction
  iPiTwoInductionClosed : P.iPiTwoInduction
  exponentiationDefinedClosed : P.exponentiationDefined

def PeanoArithmeticFragmentsClosed {H : ArithmeticHierarchyPackage}
    (P : PeanoArithmeticFragmentsPackage H) : Prop :=
  P.iSigmaOneInduction ∧ P.iPiOneInduction ∧ P.iSigmaTwoInduction ∧ P.iPiTwoInduction ∧ P.exponentiationDefined

theorem peano_arithmetic_fragments_closed_from_evidence
    {H : ArithmeticHierarchyPackage} (P : PeanoArithmeticFragmentsPackage H)
    (E : PeanoArithmeticFragmentsEvidence P) : PeanoArithmeticFragmentsClosed P := by
  exact And.intro E.iSigmaOneInductionClosed
    (And.intro E.iPiOneInductionClosed
      (And.intro E.iSigmaTwoInductionClosed
        (And.intro E.iPiTwoInductionClosed E.exponentiationDefinedClosed)))

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse