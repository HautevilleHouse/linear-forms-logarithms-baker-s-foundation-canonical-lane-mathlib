import canonicalLaneMathlib.AdmissibleClass
import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.LinearFormsLogarithmsBakerFoundation

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure BakerTheoremPackage (F : LinearFormsLogarithmsBakerFoundation) where
  linearIndependence : Prop
  heightBound : ℕ
  measureEstimate : ℝ

def BakerTheoremClosed {F : LinearFormsLogarithmsBakerFoundation} (B : BakerTheoremPackage F) : Prop :=
  B.linearIndependence ∧ B.measureEstimate > 0

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse