import DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.Complex.Basic

namespace HautevilleHouse
namespace DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DecisionProcedure where
  accepts : ℂ → Bool

structure JuliaSetLanguage where
  isBounded : ℂ → Prop

def Decides (M : DecisionProcedure) (L : JuliaSetLanguage) : Prop :=
  forall x : ℂ, M.accepts x = true ↔ L.isBounded x

structure PolynomialEndgameState where
  admittedObject : RationalMapEndgameState
  juliaSetLanguage : JuliaSetLanguage
  solver : DecisionProcedure

structure RationalMapEndgameState where
  polynomial : ℂ → ℂ
  degree : ℕ
  criticalPoints : List ℂ
  juliaMeasure : ℂ → ℝ
  carryLanguage : JuliaSetLanguage
  solver : DecisionProcedure

def mkDecisionProcedure (f : ℂ → ℂ) : DecisionProcedure where
  accepts x := f x = 0

end DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean
end HautevilleHouse