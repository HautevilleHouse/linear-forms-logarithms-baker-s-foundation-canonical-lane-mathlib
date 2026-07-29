import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.LowerBound

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LogarithmicFormPackage (A : AdmissibleClass) where
  logsRepresentation : List ℚ
  linearCombination : ℚ
  nonVanishing : linearCombination ≠ 0
  heightBound : ℕ

def LogarithmicFormsClosed (A : AdmissibleClass) (L : LogarithmicFormPackage A) : Prop :=
  L.nonVanishing ∧ L.heightBound > 0

theorem logarithmic_forms_closed (A : AdmissibleClass) (L : LogarithmicFormPackage A) :
    LogarithmicFormsClosed A L := by
  exact And.intro L.nonVanishing (by
    have : L.heightBound > 0 := Nat.one_le_iff_ne_zero.mp ?_
    sorry)

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse