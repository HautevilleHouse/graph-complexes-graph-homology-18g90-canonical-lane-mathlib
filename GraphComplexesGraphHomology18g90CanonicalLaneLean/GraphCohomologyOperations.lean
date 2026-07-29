import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphComplexesObjects

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure CohomologyOperation where
  name : String
  domain : Type
  codomain : Type
  map : domain → codomain
  naturality : Prop
  respectsDifferential : Prop

structure OperationPackage where
  cupProduct : CohomologyOperation
  steenrodOperations : List CohomologyOperation
  operationRelations : Prop

structure OperationEvidence (O : OperationPackage) where
  cupProductNaturalityClosed : O.cupProduct.naturality
  cupProductRespectsDifferentialClosed : O.cupProduct.respectsDifferential
  steenrodNaturalityClosed : ∀ (op : CohomologyOperation), op ∈ O.steenrodOperations → op.naturality
  operationRelationsClosed : O.operationRelations

def OperationClosed (O : OperationPackage) : Prop :=
  O.cupProduct.naturality ∧ O.cupProduct.respectsDifferential ∧
  (∀ (op : CohomologyOperation), op ∈ O.steenrodOperations → op.naturality) ∧
  O.operationRelations

theorem operation_closed_from_evidence (O : OperationPackage) (E : OperationEvidence O) :
    OperationClosed O := by
  exact And.intro E.cupProductNaturalityClosed
    (And.intro E.cupProductRespectsDifferentialClosed
      (And.intro E.steenrodNaturalityClosed E.operationRelationsClosed))

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse