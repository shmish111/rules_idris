load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_git_repository", "nixpkgs_package")

load(":private/idris_loader_impl.bzl", "loadScala")

def loadIdris(localIdrisInstallation=None):
  loadScala()
  nixpkgs_git_repository(
      name = "nixpkgs",
      revision = "3a393eecafb3fcd9db5ff94783ddab0c55d15860", # Any tag or commit hash
      sha256 = "" # optional sha to verify package integrity!
  )
  nixpkgs_package(
      name = "idris",
      repository = "@nixpkgs",
      attribute_path = "idris"
  )
