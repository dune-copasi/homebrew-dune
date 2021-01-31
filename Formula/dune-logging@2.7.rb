class DuneLoggingAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-logging/-/archive/releases/2.7/dune-logging-releases-2.7.tar.gz"
  sha256 "32b5d4b559d54d6ed6b8a1ebc8e0cff1c4113e03d5d129426b0c4c45e6f85da2"
  license any_of: [
    "GPL-2.0-only" => { with: "DUNE-exception" },
    "LGPL-3-or-later",
    "BSD-2-Clause"
  ]

  depends_on "dune-common@2.7"
  depends_on "fmt"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
