import DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.postcriticalSetFinite ∨ A.bridgeWitness

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean
end HautevilleHouse