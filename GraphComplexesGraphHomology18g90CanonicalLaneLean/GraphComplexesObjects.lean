import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphComplexSpace where
  carrier : Type
  chainGroups : Nat → Type
  differential : (n : Nat) → chainGroups n → chainGroups (n-1)
  differentialSquared : (n : Nat) (x : chainGroups n) → differential (n-1) (differential n x) = 0

structure AdmittedGraphObject where
  space : GraphComplexSpace
  finiteDimensional : Prop
  homologyFinitelyGenerated : Prop
  spectralSequenceConverges : Prop
  conclusion : finiteDimensional ∧ homologyFinitelyGenerated ∧ spectralSequenceConverges

structure GraphEndgameState where
  object : AdmittedGraphObject

def GraphWitnessClosed (O : AdmittedGraphObject) : Prop :=
  O.finiteDimensional ∧ O.homologyFinitelyGenerated ∧ O.spectralSequenceConverges

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse