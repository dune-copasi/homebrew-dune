class DuneLoggingAT27 < Formula
  option "with-support-dune-copasi-v0.3", "Support for dune-copasi v0.3"
  desc "Packaging for dune-pdelab: a toolbox for solving PDEs -- logging module"
  homepage "https://gitlab.dune-project.org"

  if build.with? "support-dune-copasi-v0.3"
    url "https://gitlab.dune-project.org/copasi/dune-logging/-/archive/support/dune-copasi-v0.3/dune-logging-support-dune-copasi-v0.3.tar.gz"
    sha256 "a0f155899630448c08f50c00edc304410df9b06178183e5ae2ca43779e1b3c39"
  else
    url "https://gitlab.dune-project.org/staging/dune-logging/-/archive/releases/2.7/dune-logging-releases-2.7.tar.gz"
    sha256 "32b5d4b559d54d6ed6b8a1ebc8e0cff1c4113e03d5d129426b0c4c45e6f85da2"
  end
    # license any_of: [
  #   "GPL-2.0-only" => { with: "DUNE-exception" },
  #   "LGPL-3.0-or-later",
  #   "BSD-2-Clause"
  # ]

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
