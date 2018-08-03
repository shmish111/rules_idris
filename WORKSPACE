http_archive(
    name = "io_tweag_rules_nixpkgs",
    strip_prefix = "rules_nixpkgs-4575647f3795fee2a8b732f97076a363907f7248",
    urls = ["https://github.com/tweag/rules_nixpkgs/archive/4575647f3795fee2a8b732f97076a363907f7248.tar.gz"],
)

load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_git_repository", "nixpkgs_package")

nixpkgs_git_repository(
    name = "nixpkgs",
    revision = "da53c1248ba3c56d0ee67d8ab1d0849f9453bbb5", # Any tag or commit hash
    sha256 = "" # optional sha to verify package integrity!
)

nixpkgs_package(
    name = "idris",
    repository = "@nixpkgs",
    attribute_path = "idris"
)
