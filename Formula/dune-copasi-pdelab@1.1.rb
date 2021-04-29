require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneCopasiPdelabAT11 < Formula
  desc "Packaging for dune-pdelab: a toolbox for solving PDEs -- discretization module"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/copasi/dune-pdelab.git",
    using:    :git,
    tag:      "dune-copasi-v1.1.0",
    revision: "70b3512be66d3b77ea1ced44882d0b9811c7293f"

  license any_of: [
    { "GPL-2.0-only" => { with: "DUNE-exception" } },
    "LGPL-3.0-or-later"
  ]

  depends_on "dune-copasi-typetree@1.1"
  depends_on "dune-copasi-functions@1.1"
  depends_on "dune-istl@2.7"
  depends_on "eigen"

  conflicts_with "dune-pdelab"
  conflicts_with "dune-pdelab@2.7"
  conflicts_with "dune-copasi-pdelab@1.0"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
