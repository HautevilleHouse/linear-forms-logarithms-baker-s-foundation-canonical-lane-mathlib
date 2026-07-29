import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LinearFormsLogarithmsBakerFoundation where
  numberField : Type
  logarithms : List (ℂ × ℂ)
  linearForm : List ℂ → ℂ
  lowerBound : ℚ

def LinearFormsLogarithmsBakerFoundationClosed (F : LinearFormsLogarithmsBakerFoundation) : Prop :=
  F.lowerBound > 0

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse