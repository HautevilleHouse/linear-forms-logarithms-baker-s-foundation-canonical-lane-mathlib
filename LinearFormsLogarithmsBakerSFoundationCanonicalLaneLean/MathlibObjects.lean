import HautevilleHouse.LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LinearForm where
  variables : List ℕ
  coefficients : List ℤ

alias linearForm := LinearForm

structure Logarithm where
  base : ℚ
  argument : ℚ

alias logarithm := Logarithm

structure LinearFormLogarithmCombination where
  forms : List LinearForm
  logs : List Logarithm
  combination : ℚ → ℚ

alias linearFormLogarithmCombination := LinearFormLogarithmCombination

structure BakerObjectType where
  combination : LinearFormLogarithmCombination
  nonzeroCondition : Prop
  bound : ℚ

alias bakerObject := BakerObjectType

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse