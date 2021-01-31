class DuneGridAT27 < Formula
  desc "Packaging for dune-grid: a toolbox for solving PDEs -- grid interface"
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-grid/-/archive/v2.7.1/dune-grid-v2.7.1.tar.gz"
  sha256 "dfd8872772d56deb0ba7e97387598cd98854d789c1b148573f9b3506df3d6c2d"
  license "GPL-2.0-only" => { with: "DUNE-exception" }

  depends_on "dune-common@2.7"
  depends_on "dune-geometry@2.7"
  depends_on "dune-uggrid@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
