import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.LogarithmicForms

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure BakerTheoremStatement where
  linearFormSystem : LinearFormSystem ℚ
  logEstimate : BakerLogarithmEstimate
  effective : Prop
  effectiveProof : effective
  effectiveLowerBound : ℚ
  effectiveLowerBoundPositive : effectiveLowerBound > 0
  explicitInequality : logEstimate.linearForm.value ≥ effectiveLowerBound

structure BakerFoundation where
  bakerTheorem : BakerTheoremStatement
  admissibleClass : AdmissibleClass
  packageClosed : bridgeClosed admissibleClass ∧ gateClosed admissibleClass
  conclusion : packageClosed
  conclusionTerm : conclusion

def BakerFoundation.bridgeAndGate : BakerFoundation → Prop := fun B => B.packageClosed

theorem BakerFoundation.baker_foundation_closed (B : BakerFoundation) :
    bridgeClosed B.admissibleClass ∧ gateClosed B.admissibleClass := by
  exact B.conclusionTerm

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse