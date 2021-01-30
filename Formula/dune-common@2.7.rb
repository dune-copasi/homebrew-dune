
class DuneCommonAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-common/-/archive/v2.7.1/dune-common-v2.7.1.tar.gz"
  sha256 "50cc87de79922d332d193c00f14cdb520169244ffaca23785b44f98d4eb6a0e8"
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

