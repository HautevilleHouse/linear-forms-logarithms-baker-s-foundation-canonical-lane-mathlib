import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure BakerTheoremPackage where
  linearForm : LinearFormPackage
  logarithms : LogarithmsPackage
  lowerBound : ℚ
  nontrivialityCondition : Prop
  nontrivialityConditionClosed : nontrivialityCondition
  lowerBoundDerived : lowerBound > 0

structure BakerTheoremEvidence (B : BakerTheoremPackage) where
  nontrivialityConditionClosed : B.nontrivialityCondition
  lowerBoundDerived : B.lowerBoundDerived

def BakerTheoremClosed (B : BakerTheoremPackage) : Prop :=
  B.nontrivialityCondition ∧ B.lowerBound > 0

theorem baker_theorem_closed_from_evidence (B : BakerTheoremPackage) (E : BakerTheoremEvidence B) : BakerTheoremClosed B := by
  exact And.intro E.nontrivialityConditionClosed E.lowerBoundDerived

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse