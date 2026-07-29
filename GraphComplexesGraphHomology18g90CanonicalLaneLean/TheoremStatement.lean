import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : GraphTheoremStatement := {
  sourceKey := "graph-complexes-graph-homology-18g90",
  theoremName := "graph-complexes-graph-homology-18g90",
  theoremObject := "Graph complexes and graph homology (18G90)",
  classicalBoundary := "unrestricted classical closure remains carried",
  manifoldConstrainedStatement := "admissible-class closure via graph complexes",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried in formalization"
}

def GraphWitnessClosed (O : GraphAdmittedObject) : Prop :=
  O.conclusion

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse
