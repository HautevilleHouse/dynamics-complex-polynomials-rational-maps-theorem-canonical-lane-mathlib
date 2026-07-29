import DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean

structure AdmissibleClass where
  lane : RationalMapEndgameState
  juliaSetDecidable : Decides lane.solver lane.juliaSetLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.juliaSetLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean
end HautevilleHouse