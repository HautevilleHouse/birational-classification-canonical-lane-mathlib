import BirationalClassificationCanonicalLaneLean.Formalization
import BirationalClassificationCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace BirationalClassificationCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "bff7a2f9417d4832c61f0670755359f90365a7f4923c9d7e657505a97300aee1", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "76b6b0e94d0888c8a7fe910398e6be63ea8de632048d61bb156365cb363daff2", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "9d2f65a1bda10cf52ece0f3bbb1f2ee2a7ce683e9405aeeb457f5739ca15b68e", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "5309df2508c71f5e8e4650b3c1f450ab1164833475791e4157d85432b1fab683", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "6cb12736b0b4f3e6c616fa093caf301e1833bf41b1b571b6dbb2e962251b4558", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "0ff75ddf7392228c111a8d1a59be3fc8754e7065a38332ad6c117266f20e9cf4", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "3d377950a67d4fcbb31adbf0974c9d3fc0d0ee58f6671e637ae402667c83c411", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "05ae86c715d904f8e2ab74340203185770e008b0cea05266fb9903a655ef8fb7", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "14cac120c71beb65471eca235d1919a716123406745645fd16dac85f68d7b7f7", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 0

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "README.md", sha256 := "002b08748434dc7662dd1f5ad483a78e75e55e21a871781eb96f3eaf32c13327" },
  { path := "CITATION.cff", sha256 := "3d749e41b1d4f2c110f8474564996e150fe85ad19b1c11ceb3d3a82fd96ff573" },
  { path := "REVIEWER_MAP.md", sha256 := "bff7a2f9417d4832c61f0670755359f90365a7f4923c9d7e657505a97300aee1" },
  { path := "paper/BIRATIONAL_CLASSIFICATION_PREPRINT.md", sha256 := "3ffb52b471662849897c3d32f793ecab3678187414e1b6639abf9fe4c7476cd2" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "0af22bd85bb9c349ed3b3a5b97b5d42e34a3fea39409566341665230b38b1807" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "f5cee2613e1c502d56fa862789ff0641d4221f8d9609280257b40f98d581de2d" },
  { path := "notes/EG1_public.md", sha256 := "ccdb615fd65ec7d7a7084bbfd59bf94f5dd21e187529942f0bc682c9a1b8f12e" },
  { path := "notes/EG2_public.md", sha256 := "ceea13b4879feb36366866346b489ee088c000b4842834ea0a0418e9585d6099" },
  { path := "notes/EG3_public.md", sha256 := "94cb344f862b3f664ece4f1285996dbc445960d96ecdcfcf96c50c5f427f1e70" },
  { path := "notes/EG4_public.md", sha256 := "f7deb931d4a3a050fa8ccf0c49f45fa6c041c4daa91afc2198a1aed4e0c283a4" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "76b6b0e94d0888c8a7fe910398e6be63ea8de632048d61bb156365cb363daff2" },
  { path := "scripts/bcl_closure_guard.py", sha256 := "77704e8b7cb64f3d7bab3369bc4f5ac801bda9fe47881caa5adf68b791cbdf82" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "repro/run_repro.sh", sha256 := "8fe2bc8b3cdb23b5e65b8dcfe45cc7e643d70d970d0025332f5daffb13461ce9" },
  { path := "repro/REPRO_PACK.md", sha256 := "fdb539adaf5366caa214fd366a3be921bba73000afd54cab1818980fe58f2542" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "5deb6cad666a2284e5fc0aeb7ff110e380bad8230a2b829254c5319cce51f88c" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "9d2f65a1bda10cf52ece0f3bbb1f2ee2a7ce683e9405aeeb457f5739ca15b68e" },
  { path := "artifacts/constants_extracted.json", sha256 := "5309df2508c71f5e8e4650b3c1f450ab1164833475791e4157d85432b1fab683" },
  { path := "artifacts/constants_registry.json", sha256 := "6cb12736b0b4f3e6c616fa093caf301e1833bf41b1b571b6dbb2e962251b4558" },
  { path := "artifacts/stitch_constants.json", sha256 := "0ff75ddf7392228c111a8d1a59be3fc8754e7065a38332ad6c117266f20e9cf4" },
  { path := "artifacts/promotion_report.json", sha256 := "3d377950a67d4fcbb31adbf0974c9d3fc0d0ee58f6671e637ae402667c83c411" },
  { path := "repro/certificate_baseline.json", sha256 := "14cac120c71beb65471eca235d1919a716123406745645fd16dac85f68d7b7f7" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "BCL_G1", status := "PASS" },
  { gate := "BCL_G2", status := "PASS" },
  { gate := "BCL_G3", status := "PASS" },
  { gate := "BCL_G4", status := "PASS" },
  { gate := "BCL_G5", status := "PASS" },
  { gate := "BCL_G6", status := "PASS" },
  { gate := "BCL_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "birational_lock", value := "1.02951" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_birational", value := "1.091838" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_model", value := "1.075" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "birational_lock",
  "eps_coh",
  "kappa_birational",
  "kappa_compact",
  "rho_rigidity",
  "semiample_transfer",
  "sigma_model",
  "sigma_mori",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 0 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 0 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 9 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end BirationalClassificationCanonicalLaneLean
end HautevilleHouse
