import FirstOrderArithmeticFragmentsCanonicalLaneLean.InductionSchemas

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure CollectingLemmaPackage {I : InductionSchemaPackage} where
  collectionAxiom : Prop
  boundedCollection : Prop
  applicationDomain : Prop

structure CollectingLemmaEvidence {I : InductionSchemaPackage}
    (C : CollectingLemmaPackage) where
  collectionAxiomClosed : C.collectionAxiom
  boundedCollectionClosed : C.boundedCollection
  applicationDomainClosed : C.applicationDomain

def CollectingLemmaClosed {I : InductionSchemaPackage} (C : CollectingLemmaPackage) : Prop :=
  C.collectionAxiom ∧ C.boundedCollection ∧ C.applicationDomain

theorem collecting_lemma_closed_from_evidence {I : InductionSchemaPackage}
    (C : CollectingLemmaPackage) (E : CollectingLemmaEvidence C) : CollectingLemmaClosed C := by
  exact And.intro E.collectionAxiomClosed (And.intro E.boundedCollectionClosed E.applicationDomainClosed)

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse