import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LinearFormPackage where
  coefficients : List ℤ
  arguments : List ℂ
  linearForm : ℂ
  nonZero : linearForm ≠ 0
  integrality : Prop

structure BakerLinearFormEvidence (L : LinearFormPackage) where
  nonZeroClosed : L.nonZero
  integralityClosed : L.integrality

def BakerLinearFormClosed (L : LinearFormPackage) : Prop :=
  L.nonZero ∧ L.integrality

theorem baker_linear_form_closed_from_evidence (L : LinearFormPackage) (E : BakerLinearFormEvidence L) :
    BakerLinearFormClosed L := by
  exact And.intro E.nonZeroClosed E.integralityClosed

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse