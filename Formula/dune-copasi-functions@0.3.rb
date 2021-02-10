require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneCopasiFunctionsAT03 < Formula
  desc "Packaging for dune-functions: toolbox for solving PDEs -- extended interface for discrete functions"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/staging/dune-functions.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "534900aa256aeef9d025d5b8776ff1c0f0e144da"

  license any_of: [
    { "GPL-2.0-only" => { with: "DUNE-exception" } },
    "LGPL-3.0-or-later"
  ]

  depends_on "dune-common@2.7"
  depends_on "dune-grid@2.7"
  depends_on "dune-istl@2.7"
  depends_on "dune-localfunctions@2.7"
  depends_on "dune-copasi-typetree@0.3"

  conflicts_with "dune-functions"
  conflicts_with "dune-functions@2.7"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
