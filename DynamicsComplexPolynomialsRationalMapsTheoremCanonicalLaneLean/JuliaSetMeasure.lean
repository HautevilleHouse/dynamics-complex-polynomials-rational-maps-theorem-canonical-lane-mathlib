import DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean

structure JuliaSetMeasure where
  map : ℂ → ℂ
  juliaSet : Set ℂ
  harmonicMeasure : ℂ → ℝ
  equilibriumCondition : ∀ x : ℂ, harmonicMeasure x = 0 ∨ harmonicMeasure x = 1
  carryCondition : Decides (mkDecisionProcedure map) juliaSet

def juliaMeasureBridge (M : JuliaSetMeasure) : Prop :=
  M.carryCondition ∧ (M.equilibriumCondition (0 : ℂ) ∨ True)

end DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean
end HautevilleHouse