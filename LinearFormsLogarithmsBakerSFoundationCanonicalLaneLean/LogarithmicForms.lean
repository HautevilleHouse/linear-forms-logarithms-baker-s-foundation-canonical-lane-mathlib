import canonicalLaneMathlib.AdmissibleClass
import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.LinearFormEstimates

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LogarithmicForms {F : LinearFormsLogarithmsBakerFoundation}
    {B : BakerTheoremPackage F} (L : LinearFormEstimates B) where
  formValues : List ℂ
  absoluteValues : List ℝ
  bound : ℝ

def LogarithmicFormsClosed {F : LinearFormsLogarithmsBakerFoundation}
    {B : BakerTheoremPackage F} {L : LinearFormEstimates B}
    (Log : LogarithmicForms L) : Prop :=
  Log.bound > 0

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse