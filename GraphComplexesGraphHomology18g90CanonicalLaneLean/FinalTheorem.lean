import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

def ConstrainedGraphComplexesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_complexes_endgame (A : AdmissibleClass) :
    ConstrainedGraphComplexesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse