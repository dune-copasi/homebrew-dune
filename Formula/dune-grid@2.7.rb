require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneGridAT27 < Formula
  desc "Packaging for dune-grid: a toolbox for solving PDEs -- grid interface"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/core/dune-grid.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "b7741c6599528bc42017e25f70eb6dd3b5780277"

  license "GPL-2.0-only" => { with: "DUNE-exception" }

  depends_on "dune-common@2.7"
  depends_on "dune-geometry@2.7"
  depends_on "dune-uggrid@2.7"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
