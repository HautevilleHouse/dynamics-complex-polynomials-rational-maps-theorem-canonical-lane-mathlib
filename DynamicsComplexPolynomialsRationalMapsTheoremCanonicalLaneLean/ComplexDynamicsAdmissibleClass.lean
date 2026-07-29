import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean

structure RationalMap where
  deg : Nat
  coeffs : List ℂ

def functionalEquation (f : RationalMap) : Prop := 
  f.deg > 0

structure JuliaSet where
  isCompact : Prop
  forwardInvariant : Prop

structure AdmissibleClass where
  lane : RationalMap
  functionalEquationSatisfied : functionalEquation lane
  juliaSet : JuliaSet
  criticalOrbitFinite : Prop
  postcriticalSetFinite : Prop
  bridgeWitness : Prop
  gateWitness : Prop

def admittedClosure (A : AdmissibleClass) : Prop :=
  functionalEquation A.lane ∧ A.criticalOrbitFinite ∧ A.postcriticalSetFinite

end DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean
end HautevilleHouse