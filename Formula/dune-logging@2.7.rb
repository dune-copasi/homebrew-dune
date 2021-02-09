class DuneLoggingAT27 < Formula
  option "with-support-dune-copasi-v0.3", "Support for dune-copasi v0.3"
  desc "Packaging for dune-pdelab: a toolbox for solving PDEs -- logging module"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/copasi/dune-logging/-/archive/support/dune-copasi-v0.3/dune-logging-support-dune-copasi-v0.3.tar.gz"
  sha256 "a0f155899630448c08f50c00edc304410df9b06178183e5ae2ca43779e1b3c39"

  # license any_of: [
  #   "GPL-2.0-only" => { with: "DUNE-exception" },
  #   "LGPL-3.0-or-later",
  #   "BSD-2-Clause"
  # ]

  depends_on "dune-common@2.7"
  depends_on "fmt"

  def install
    system "cmake", "-DCMAKE_CXX_STANDARD=17", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
