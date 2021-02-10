require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneCopasiMultidomaingridAT03 < Formula
  desc "Packaging for dune-multidomaingrid: a toolbox for solving PDEs -- convert grids into multidomain grids"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/extensions/dune-multidomaingrid.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "cd5679974fe1c91b56e74022e95f01b1d2018c3b"

  license any_of: [
    { "GPL-2.0-only" => { with: "DUNE-exception" } },
    "LGPL-3.0-or-later"
  ]

  depends_on "dune-common@2.7"
  depends_on "dune-copasi-typetree@0.3"
  depends_on "dune-grid@2.7"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
