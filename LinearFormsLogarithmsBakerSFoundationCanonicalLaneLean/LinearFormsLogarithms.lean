import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LinearFormPackage where
  coefficients : List ℚ
  point : List ℚ
  linearForm : ℚ
  linearFormDefined : Prop
  linearFormDefinedTerm : linearFormDefined

structure LinearFormEvidence (L : LinearFormPackage) where
  linearFormDefinedClosed : L.linearFormDefined

def LinearFormClosed (L : LinearFormPackage) : Prop :=
  L.linearFormDefined

theorem linear_form_closed_from_evidence (L : LinearFormPackage) (E : LinearFormEvidence L) : LinearFormClosed L := by
  exact E.linearFormDefinedClosed

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse