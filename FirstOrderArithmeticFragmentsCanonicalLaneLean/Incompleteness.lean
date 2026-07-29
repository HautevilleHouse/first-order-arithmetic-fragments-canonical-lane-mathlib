import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure IncompletenessPackage (A : AdmissibleClass) where
  godelSentence : Prop
  firstIncompleteness : Prop
  secondIncompleteness : Prop
  rossersTheorem : Prop

def IncompletenessClosed (I : IncompletenessPackage A) : Prop :=
  I.godelSentence ∧ I.firstIncompleteness ∧ I.secondIncompleteness ∧ I.rossersTheorem

structure IncompletenessEvidence (I : IncompletenessPackage A) where
  godelSentenceClosed : I.godelSentence
  firstIncompletenessClosed : I.firstIncompleteness
  secondIncompletenessClosed : I.secondIncompleteness
  rossersTheoremClosed : I.rossersTheorem

theorem incompleteness_closed_from_evidence (I : IncompletenessPackage A) (E : IncompletenessEvidence I) :
    IncompletenessClosed I := by
  exact And.intro E.godelSentenceClosed
    (And.intro E.firstIncompletenessClosed
      (And.intro E.secondIncompletenessClosed E.rossersTheoremClosed))

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse