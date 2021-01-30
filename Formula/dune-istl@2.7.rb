class DuneIstlAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-istl/-/archive/releases/2.7/dune-istl-releases-2.7.tar.gz"
  sha256 "a8b191683ec221503ea19e1ab77010b090a41693f3a0618ddf86840f899e7b4a"
  license "GPL-2.0"

  depends_on "dune-copasi/dune/dune-common@2.7"
  depends_on "suite-sparse"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
