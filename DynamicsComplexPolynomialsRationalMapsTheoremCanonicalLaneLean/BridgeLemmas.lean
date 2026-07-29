import DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean.ComplexDynamicsAdmissibleClass

namespace HautevilleHouse
namespace DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.functionalEquationSatisfied ∧ A.criticalOrbitFinite

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.functionalEquationSatisfied A.criticalOrbitFinite

end DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean
end HautevilleHouse