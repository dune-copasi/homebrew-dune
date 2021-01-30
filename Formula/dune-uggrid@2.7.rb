class DuneUggridAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-uggrid/-/archive/d214484c/dune-uggrid-d214484c.tar.gz"
  sha256 "3d58cf7a61e3eb8f668aa62d30cc565d2c9b673fe2eedcd37a3bdb432f41cb0f"
  license "GPL-2.0"

  depends_on "dune-copasi/dune/dune-common@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
