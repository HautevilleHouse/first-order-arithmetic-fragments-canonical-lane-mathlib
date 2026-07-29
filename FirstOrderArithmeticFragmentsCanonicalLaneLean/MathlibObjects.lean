import FirstOrderArithmeticFragmentsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ArithmeticStructure where
  carrier : Type
  language : List (String × Nat)

inductive Formula : Type
| equal (t1 t2 : Term) : Formula
| less (t1 t2 : Term) : Formula
| and (f g : Formula) : Formula
| or (f g : Formula) : Formula
| not (f : Formula) : Formula
| forall (v : String) (f : Formula) : Formula
| exists (v : String) (f : Formula) : Formula

inductive Term : Type
| var (v : String) : Term
| zero : Term
| succ (t : Term) : Term
| add (t1 t2 : Term) : Term
| mul (t1 t2 : Term) : Term

structure ArithmeticAdmittedObject where
  structure : ArithmeticStructure
  inductionAxiom : Prop
  endAxiom : Prop
  conclusion : inductionAxiom → endAxiom

def ArithmeticWitnessClosed (O : ArithmeticAdmittedObject) : Prop :=
  O.inductionAxiom

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse
