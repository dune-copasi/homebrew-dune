class DuneGridAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-grid/-/archive/b7741c65/dune-grid-b7741c65.tar.gz"
  sha256 "bae974fd113d5117d465360cf543f22c278b066b6586c72885862e4491bd1d32"
  license "GPL-2.0"

  depends_on "dune-copasi/dune/dune-common@2.7"
  depends_on "dune-copasi/dune/dune-geometry@2.7"
  depends_on "dune-copasi/dune/dune-uggrid@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
