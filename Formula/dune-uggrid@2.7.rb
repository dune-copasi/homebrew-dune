class DuneUggridAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-uggrid/-/archive/releases/2.7/dune-uggrid-releases-2.7.tar.gz"
  sha256 "bae974fd113d5117d465360cf543f22c278b066b6586c72885862e4491bd1d32"
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
