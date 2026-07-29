import canonicalLaneMathlib.AdmissibleClass
import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.LogarithmicForms

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure HeightLowerBound {F : LinearFormsLogarithmsBakerFoundation}
    {B : BakerTheoremPackage F} {L : LinearFormEstimates B}
    (Log : LogarithmicForms L) where
  lowerBound : ℝ
  lowerBoundPositive : lowerBound > 0

def HeightLowerBoundClosed {F : LinearFormsLogarithmsBakerFoundation}
    {B : BakerTheoremPackage F} {L : LinearFormEstimates B}
    {Log : LogarithmicForms L} (H : HeightLowerBound Log) : Prop :=
  H.lowerBoundPositive

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse