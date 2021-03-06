require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneTypetreeAT27 < Formula
  desc "Packaging for dune-typetree: a toolbox for solving PDEs -- typed tree template library"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/staging/dune-typetree.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "50603353e821c1139f74871b575011fa44d13701"

  license any_of: [
    { "GPL-2.0-only" => { with: "DUNE-exception" } },
    "LGPL-3.0-or-later"
  ]

  depends_on "dune-common@2.7"

  conflicts_with "dune-copasi-typetree@0.3"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
