require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneCopasiTypetreeAT11 < Formula
  desc "Packaging for dune-typetree: a toolbox for solving PDEs -- typed tree template library"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/copasi/dune-typetree.git",
    using:    :git,
    tag:      "dune-copasi-v1.1.0",
    revision: "c1f032954e29b44a562b07d33048680e5f8192ce"

  license any_of: [
    { "GPL-2.0-only" => { with: "DUNE-exception" } },
    "LGPL-3.0-or-later"
  ]

  depends_on "dune-common@2.7"

  conflicts_with "dune-typetree"
  conflicts_with "dune-typetree@2.7"
  conflicts_with "dune-copasi-typetree@1.0"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
