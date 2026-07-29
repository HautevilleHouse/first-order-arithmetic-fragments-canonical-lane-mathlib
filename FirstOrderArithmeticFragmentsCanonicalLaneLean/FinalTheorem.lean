import FirstOrderArithmeticFragmentsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

def ConstrainedArithmeticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_arithmetic_endgame (A : AdmissibleClass) :
    ConstrainedArithmeticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse
