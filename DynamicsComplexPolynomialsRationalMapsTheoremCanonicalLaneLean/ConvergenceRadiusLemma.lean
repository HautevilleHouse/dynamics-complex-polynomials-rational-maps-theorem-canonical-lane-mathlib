import DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean

structure ConvergenceRadiusLemma where
  map : ℂ → ℂ
  criticalValue : ℂ
  radius : ℝ
  boundProperty : radius > 0
  bridgeCondition : Decides (mkDecisionProcedure map) {x : ℂ | abs x ≤ radius}
  remainder : Prop

def convergenceLemmaBridge (L : ConvergenceRadiusLemma) : Prop :=
  L.bridgeCondition ∧ (L.boundProperty ∨ L.remainder)

end DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean
end HautevilleHouse