import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.LinearForms

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LogarithmicForm (α : Type) [AddCommGroup α] [Module ℚ α] where
  linearForm : LinearForm α
  base : ℕ
  exponent : ℚ
  logValue : ℚ
  logBase : logValue = Real.log (base : ℝ) := by
    exact Real.log_natCast base

structure BakerLogarithmEstimate where
  linearForm : LinearForm ℚ
  lowerBound : ℚ
  lowerBoundPositive : lowerBound > 0
  structuralConstant : ℚ
  structuralConstantPositive : structuralConstant > 0
  estimate : linearForm.value ≥ structuralConstant * lowerBound

def BakerLogEstimateFromConstants (c : ℚ) (h : c > 0) : BakerLogarithmEstimate :=
  { linearForm := { coefficients := [1], argument := 0, value := c, nontrivial := by decide, integrality := by intro c hc; simp at hc; exact Nat.one_ne_zero ℕ },
    lowerBound := c,
    lowerBoundPositive := h,
    structuralConstant := 1,
    structuralConstantPositive := by norm_num,
    estimate := by
      -- c ≥ 1 * c
      simp
  }

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse