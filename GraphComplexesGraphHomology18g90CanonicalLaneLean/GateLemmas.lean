import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse
