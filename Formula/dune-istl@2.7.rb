require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneIstlAT27 < Formula
  desc "Packaging for dune-istl: a toolbox for solving PDEs -- iterative solvers"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/core/dune-istl.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "761b28aa1deaa786ec55584ace99667545f1b493"

  license "GPL-2.0-only" => { with: "DUNE-exception" }

  depends_on "dune-common@2.7"
  depends_on "suite-sparse"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
