import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure ProvablyRecursiveSignature where
  theory : String
  functionClass : Type
  total : Prop
  provablyTotal : Prop
  characterization : Prop

structure ProvablyRecursivePackage (Σ : ProvablyRecursiveSignature) where
  theoryFormalized : Prop
  totalClosed : Σ.total
  provablyTotalClosed : Σ.provablyTotal
  characterizationClosed : Σ.characterization

structure ProvablyRecursiveEvidence {Σ : ProvablyRecursiveSignature} (P : ProvablyRecursivePackage Σ) where
  theoryFormalizedClosed : P.theoryFormalized
  totalClosedClosed : P.totalClosed
  provablyTotalClosedClosed : P.provablyTotalClosed
  characterizationClosedClosed : P.characterizationClosed

def ProvablyRecursiveClosed {Σ : ProvablyRecursiveSignature} (P : ProvablyRecursivePackage Σ) : Prop :=
  P.theoryFormalized ∧ P.totalClosed ∧ P.provablyTotalClosed ∧ P.characterizationClosed

theorem provably_recursive_closed_from_evidence
    {Σ : ProvablyRecursiveSignature} (P : ProvablyRecursivePackage Σ) (E : ProvablyRecursiveEvidence P) :
    ProvablyRecursiveClosed P := by
  exact And.intro E.theoryFormalizedClosed (And.intro E.totalClosedClosed (And.intro E.provablyTotalClosedClosed E.characterizationClosedClosed))

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse