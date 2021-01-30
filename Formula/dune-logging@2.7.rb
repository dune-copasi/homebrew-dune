class DuneLoggingAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-logging/-/archive/e60044ed/dune-logging-e60044ed.tar.gz"
  sha256 "32b5d4b559d54d6ed6b8a1ebc8e0cff1c4113e03d5d129426b0c4c45e6f85da2"
  license "GPL-2.0"

  depends_on "dune-copasi/dune/dune-common@2.7"
  depends_on "fmt"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
