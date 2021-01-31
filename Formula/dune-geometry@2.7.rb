class DuneGeometryAT27 < Formula
  desc "Packaging for dune-geometry: a toolbox for solving PDEs -- geometry classes"
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-geometry/-/archive/v2.7.1/dune-geometry-v2.7.1.tar.gz"
  sha256 "1adae365a764c96fd318d60e2e8ebb0274e98f4d05b72596c5c855b7c57dbbc3"
  license "GPL-2.0-only" => { with: "DUNE-exception" }

  depends_on "dune-common@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
