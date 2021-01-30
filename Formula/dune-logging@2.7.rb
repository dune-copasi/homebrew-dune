class DuneGeometryAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-logging/-/archive/releases/2.7/dune-logging-releases-2.7.tar.gz"
  # sha256 "e3c43537ea4857699b860d3a39ef8ef0b3669f2f6755834fce775b11dacc81ad"
  license "GPL-2.0"

  depends_on "dune-copasi/dune/dune-common"
  depends_on "fmt"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
