import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LinearForm (α : Type) [AddCommGroup α] [Module ℚ α] where
  coefficients : List ℤ
  argument : α
  value : ℚ
  nontrivial : coefficients ≠ []
  integrality : ∀ c ∈ coefficients, c ≠ 0

def LinearFormValue (L : LinearForm α) : ℚ :=
  L.value

structure LinearFormSystem (α : Type) [AddCommGroup α] [Module ℚ α] where
  forms : List (LinearForm α)
  independence : Prop
  rank : ℕ

structure LinearFormLogEstimate where
  bound : ℚ
  positive : bound > 0
  explicit : bound = 1/2

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse