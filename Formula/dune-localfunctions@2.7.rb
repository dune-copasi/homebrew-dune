class DuneLocalfunctionsAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/core/dune-localfunctions/-/archive/releases/2.7/dune-localfunctions-releases-2.7.tar.gz"
  sha256 "f3092ec08ffaa44d5cf12f70b09361f48dd7d370c2eb2cb4308df5a74407bd75"
  license "GPL-2.0"

  depends_on "dune-copasi/dune/dune-common@2.7"
  depends_on "dune-copasi/dune/dune-geometry@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
