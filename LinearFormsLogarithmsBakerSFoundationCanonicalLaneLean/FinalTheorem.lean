import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

def ConstrainedBakerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_baker_endgame (A : AdmissibleClass) :
    ConstrainedBakerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse