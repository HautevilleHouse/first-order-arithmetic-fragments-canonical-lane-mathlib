import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure IndependenceResultSignature where
  baseTheory : String
  statement : String
  unprovable : Prop
  consistencyStrength : Prop

structure IndependenceResultPackage (Σ : IndependenceResultSignature) where
  baseTheoryFormalized : Prop
  unprovableClosed : Σ.unprovable
  consistencyStrengthClosed : Σ.consistencyStrength

structure IndependenceResultEvidence {Σ : IndependenceResultSignature} (R : IndependenceResultPackage Σ) where
  baseTheoryFormalizedClosed : R.baseTheoryFormalized
  unprovableClosedClosed : R.unprovableClosed
  consistencyStrengthClosedClosed : R.consistencyStrengthClosed

def IndependenceResultClosed {Σ : IndependenceResultSignature} (R : IndependenceResultPackage Σ) : Prop :=
  R.baseTheoryFormalized ∧ R.unprovableClosed ∧ R.consistencyStrengthClosed

theorem independence_result_closed_from_evidence
    {Σ : IndependenceResultSignature} (R : IndependenceResultPackage Σ) (E : IndependenceResultEvidence R) :
    IndependenceResultClosed R := by
  exact And.intro E.baseTheoryFormalizedClosed (And.intro E.unprovableClosedClosed E.consistencyStrengthClosedClosed)

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse