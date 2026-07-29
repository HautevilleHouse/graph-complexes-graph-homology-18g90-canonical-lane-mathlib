import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure AdmissibleClass where
  object : GraphAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse
