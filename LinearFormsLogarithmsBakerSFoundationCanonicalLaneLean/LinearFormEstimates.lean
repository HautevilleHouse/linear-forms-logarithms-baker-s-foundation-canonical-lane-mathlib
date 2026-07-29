import canonicalLaneMathlib.AdmissibleClass
import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.BakerTheoremPackage

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LinearFormEstimates {F : LinearFormsLogarithmsBakerFoundation}
    (B : BakerTheoremPackage F) where
  estimate : ℝ
  estimatePositive : estimate > 0

def LinearFormEstimatesClosed {F : LinearFormsLogarithmsBakerFoundation}
    {B : BakerTheoremPackage F} (L : LinearFormEstimates B) : Prop :=
  L.estimatePositive

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse