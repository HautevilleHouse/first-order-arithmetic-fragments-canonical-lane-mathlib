import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure RobinsonArithmeticSignature where
  constantZero : Type
  successorFunction : Type
  additionFunction : Type
  multiplicationFunction : Type
  signatureConsistent : Prop

structure RobinsonArithmeticAxioms (Σ : RobinsonArithmeticSignature) where
  zeroNotSuccessor : Prop
  successorInjective : Prop
  additionDefined : Prop
  multiplicationDefined : Prop
  inductionRestricted : Prop
  axiomsConsistent : Prop

structure RobinsonArithmeticPackage (Σ : RobinsonArithmeticSignature) where
  axioms : RobinsonArithmeticAxioms Σ
  standardModel : Type
  modelSatisfiesQ : Prop

structure RobinsonArithmeticEvidence {Σ : RobinsonArithmeticSignature} (Q : RobinsonArithmeticPackage Σ) where
  axiomsConsistentClosed : Q.axioms.axiomsConsistent
  modelSatisfiesQClosed : Q.modelSatisfiesQ

def RobinsonArithmeticClosed {Σ : RobinsonArithmeticSignature} (Q : RobinsonArithmeticPackage Σ) : Prop :=
  Q.axioms.axiomsConsistent ∧ Q.modelSatisfiesQ

theorem robinson_arithmetic_closed_from_evidence
    {Σ : RobinsonArithmeticSignature} (Q : RobinsonArithmeticPackage Σ) (E : RobinsonArithmeticEvidence Q) :
    RobinsonArithmeticClosed Q := by
  exact And.intro E.axiomsConsistentClosed E.modelSatisfiesQClosed

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse