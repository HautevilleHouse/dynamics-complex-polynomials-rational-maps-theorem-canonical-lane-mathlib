import DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean

structure CriticalOrbit where
  polynomial : ℂ → ℂ
  criticalPoints : List ℂ
  forwardOrbit : List ℂ
  boundedStatus : Bool

def orbitDecisionProcedure (p : ℂ → ℂ) (criticals : List ℂ) : DecisionProcedure where
  accepts x := (forwardImage p x).all (fun y => boundedStatus y)

def criticalOrbitBridge (O : CriticalOrbit) : Prop :=
  Decides (orbitDecisionProcedure O.polynomial O.criticalPoints) {x : ℂ | boundedOrbit O.polynomial x} ∧
  O.boundedStatus = true

end DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean
end HautevilleHouse