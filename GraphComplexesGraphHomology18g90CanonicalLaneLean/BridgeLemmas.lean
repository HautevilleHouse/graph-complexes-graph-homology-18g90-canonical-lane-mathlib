import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse
