class DuneLocalfunctionsAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-localfunctions/-/archive/v2.7.1/dune-localfunctions-v2.7.1.tar.gz"
  sha256 "3db323cb6690d5e3eb5c50392fddd4d3e433b9fa465498821a708c051c3f5f3d"
  license "GPL-2.0-only" => { with: "DUNE-exception" }

  depends_on "dune-common@2.7"
  depends_on "dune-geometry@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
