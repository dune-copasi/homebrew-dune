require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneCopasiTypetreeAT03 < Formula
  desc "Packaging for dune-typetree: a toolbox for solving PDEs -- typed tree template library"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/copasi/dune-typetree.git",
    using:    :git,
    tag:      "dune-copasi-v0.3",
    revision: "af0b27a8d30115d58e5fefcc02342afba322864a"

  license any_of: [
    { "GPL-2.0-only" => { with: "DUNE-exception" } },
    "LGPL-3.0-or-later"
  ]

  depends_on "dune-common@2.7"

  conflicts_with "dune-typetree"
  conflicts_with "dune-typetree@2.7"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
