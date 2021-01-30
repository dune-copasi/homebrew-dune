
class DuneCommonAT27 < Formula
  desc "DUNE Build system, infrastructure and foundation classes"
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-common/-/archive/aa689abb/dune-common-aa689abb.tar.gz"
  sha256 "d29beb3e51f97978f3726ec67b768b9a09f797c2e45f2a3536f34e4cba63fcfb"
  license "GPL-2.0"

  depends_on "cmake"
  depends_on "gcc"
  depends_on "pkg-config"
  depends_on "open-mpi"
  depends_on "python@3.9"
  depends_on "gmp"
  depends_on "superlu"
  depends_on "lapack"
  depends_on "openblas"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end

