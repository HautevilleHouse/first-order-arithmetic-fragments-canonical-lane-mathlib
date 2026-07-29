import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure GoodsteinSequenceSignature where
  baseTheory : String
  statement : Prop
  trueInStandardModel : Prop
  unprovableInPA : Prop
  proofUsesInduction : Prop

structure GoodsteinSequencePackage (Σ : GoodsteinSequenceSignature) where
  baseTheoryFormalized : Prop
  trueInStandardModelClosed : Σ.trueInStandardModel
  unprovableInPAClosed : Σ.unprovableInPA
  proofUsesInductionClosed : Σ.proofUsesInduction

structure GoodsteinSequenceEvidence {Σ : GoodsteinSequenceSignature} (G : GoodsteinSequencePackage Σ) where
  baseTheoryFormalizedClosed : G.baseTheoryFormalized
  trueInStandardModelClosedClosed : G.trueInStandardModelClosed
  unprovableInPAClosedClosed : G.unprovableInPAClosed
  proofUsesInductionClosedClosed : G.proofUsesInductionClosed

def GoodsteinSequenceClosed {Σ : GoodsteinSequenceSignature} (G : GoodsteinSequencePackage Σ) : Prop :=
  G.baseTheoryFormalized ∧ G.trueInStandardModelClosed ∧ G.unprovableInPAClosed ∧ G.proofUsesInductionClosed

theorem goodstein_sequence_closed_from_evidence
    {Σ : GoodsteinSequenceSignature} (G : GoodsteinSequencePackage Σ) (E : GoodsteinSequenceEvidence G) :
    GoodsteinSequenceClosed G := by
  exact And.intro E.baseTheoryFormalizedClosed (And.intro E.trueInStandardModelClosedClosed (And.intro E.unprovableInPAClosedClosed E.proofUsesInductionClosedClosed))

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse