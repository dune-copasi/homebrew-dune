class DuneIstlAT27 < Formula
  desc "Packaging for dune-istl: a toolbox for solving PDEs -- iterative solvers"
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-istl/-/archive/v2.7.1/dune-istl-v2.7.1.tar.gz"
  sha256 "352c16b57be8601e05d066e171832daf79694b02c67545e3c866defa9730bc38"
  license "GPL-2.0-only" => { with: "DUNE-exception" }

  depends_on "dune-common@2.7"
  depends_on "suite-sparse"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
