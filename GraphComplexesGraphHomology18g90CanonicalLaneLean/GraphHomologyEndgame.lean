import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphComplexClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedGraphHomologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_homology_endgame (A : AdmissibleClass) :
    ConstrainedGraphHomologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse