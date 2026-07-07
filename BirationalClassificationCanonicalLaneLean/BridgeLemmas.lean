import BirationalClassificationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace BirationalClassificationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

end BirationalClassificationCanonicalLaneLean
end HautevilleHouse
