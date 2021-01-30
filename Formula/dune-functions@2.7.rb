class DuneFunctionsAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-functions/-/archive/releases/2.7/dune-functions-releases-2.7.tar.gz"
  sha256 "5f3363087603468e69cd7f743420b1f533fc851e0d6db56b934b1e2595197582"
  license "GPL-2.0"

  depends_on "dune-copasi/dune/dune-common@2.7"
  depends_on "dune-copasi/dune/dune-grid@2.7"
  depends_on "dune-copasi/dune/dune-istl@2.7"
  depends_on "dune-copasi/dune/dune-typetree@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
