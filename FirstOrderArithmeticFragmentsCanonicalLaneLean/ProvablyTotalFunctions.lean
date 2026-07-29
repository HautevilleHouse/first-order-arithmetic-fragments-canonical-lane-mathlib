import HautevilleHouse.FirstOrderArithmeticFragmentsCanonicalLaneLean.PeanoArithmeticFragments

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure ProvablyTotalFunctionsPackage {H : ArithmeticHierarchyPackage}
    {P : PeanoArithmeticFragmentsPackage H} where
  primitiveRecursiveTotal : Prop
  epsilonZeroTotal : Prop
  godelSecondIncompletenessConsistency : Prop

structure ProvablyTotalFunctionsEvidence {H : ArithmeticHierarchyPackage}
    {P : PeanoArithmeticFragmentsPackage H}
    (T : ProvablyTotalFunctionsPackage H P) where
  primitiveRecursiveTotalClosed : T.primitiveRecursiveTotal
  epsilonZeroTotalClosed : T.epsilonZeroTotal
  godelSecondIncompletenessConsistencyClosed : T.godelSecondIncompletenessConsistency

def ProvablyTotalFunctionsClosed {H : ArithmeticHierarchyPackage}
    {P : PeanoArithmeticFragmentsPackage H}
    (T : ProvablyTotalFunctionsPackage H P) : Prop :=
  T.primitiveRecursiveTotal ∧ T.epsilonZeroTotal ∧ T.godelSecondIncompletenessConsistency

theorem provably_total_functions_closed_from_evidence
    {H : ArithmeticHierarchyPackage} {P : PeanoArithmeticFragmentsPackage H}
    (T : ProvablyTotalFunctionsPackage H P)
    (E : ProvablyTotalFunctionsEvidence T) : ProvablyTotalFunctionsClosed T := by
  exact And.intro E.primitiveRecursiveTotalClosed
    (And.intro E.epsilonZeroTotalClosed E.godelSecondIncompletenessConsistencyClosed)

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse