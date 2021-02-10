require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneCopasiPdelabAT03 < Formula
  desc "Packaging for dune-pdelab: a toolbox for solving PDEs -- discretization module"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/copasi/dune-pdelab.git",
    using:    :git,
    tag:      "dune-copasi-v0.3",
    revision: "e0485457c1916ee9e4146c911c4335273f060de1"

  license any_of: [
    { "GPL-2.0-only" => { with: "DUNE-exception" } },
    "LGPL-3.0-or-later"
  ]

  depends_on "dune-copasi-typetree@0.3"
  depends_on "dune-copasi-functions@0.3"
  depends_on "dune-istl@2.7"
  depends_on "eigen"

  conflicts_with "dune-pdelab"
  conflicts_with "dune-pdelab@2.7"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
