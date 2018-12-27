load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def loadIdrisPackagerRepositories():
  rules_scala_version="4be50865a332aef46c46c94b345c320c3353e9e1"
  http_archive(
    name = "io_bazel_rules_scala",
    url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip"%rules_scala_version,
    type = "zip",
    strip_prefix= "rules_scala-%s" % rules_scala_version
  )
  git_repository(
    name = "idris_packager",
    commit = "b8359edbf551173024b7e57f23da0ad88efd4f69",
    remote = "https://github.com/shmish111/idris_packager.git"
  )

def loadNixRepositories():
  http_archive(
    name = "io_tweag_rules_nixpkgs",
    strip_prefix = "rules_nixpkgs-674766086cda88976394fbd608620740857e2535",
    urls = ["https://github.com/tweag/rules_nixpkgs/archive/674766086cda88976394fbd608620740857e2535.tar.gz"],
  )

def loadIdrisRepositories():
  loadNixRepositories()
  loadIdrisPackagerRepositories()
