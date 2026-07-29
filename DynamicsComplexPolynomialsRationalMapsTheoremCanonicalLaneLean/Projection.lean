import DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def rationalMapProjection : Projection RationalMapEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem rational_map_projection_idempotent (x : RationalMapEndgameState) :
    rationalMapProjection.toFun (rationalMapProjection.toFun x) = rationalMapProjection.toFun x := by
  exact rationalMapProjection.idempotent x

end DynamicsComplexPolynomialsRationalMapsTheoremCanonicalLaneLean
end HautevilleHouse