import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bakerProjection : Projection BakerEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem baker_projection_idempotent (x : BakerEndgameState) :
    bakerProjection.toFun (bakerProjection.toFun x) = bakerProjection.toFun x := by
  exact bakerProjection.idempotent x

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse