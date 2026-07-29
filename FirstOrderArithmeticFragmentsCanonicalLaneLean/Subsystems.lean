import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure SubsystemsPackage (A : AdmissibleClass) where
  rca0 : Prop
  wkl0 : Prop
  aca0 : Prop
  atr0 : Prop
  pi11ca0 : Prop

def SubsystemsClosed (S : SubsystemsPackage A) : Prop :=
  S.rca0 ∧ S.wkl0 ∧ S.aca0 ∧ S.atr0 ∧ S.pi11ca0

structure SubsystemsEvidence (S : SubsystemsPackage A) where
  rca0Closed : S.rca0
  wkl0Closed : S.wkl0
  aca0Closed : S.aca0
  atr0Closed : S.atr0
  pi11ca0Closed : S.pi11ca0

theorem subsystems_closed_from_evidence (S : SubsystemsPackage A) (E : SubsystemsEvidence S) :
    SubsystemsClosed S := by
  exact And.intro E.rca0Closed
    (And.intro E.wkl0Closed
      (And.intro E.aca0Closed
        (And.intro E.atr0Closed E.pi11ca0Closed)))

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse