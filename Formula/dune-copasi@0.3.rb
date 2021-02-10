require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneCopasiAT03 < Formula
  desc ""
  homepage "https://dune-copasi.netlify.app/"
  url "https://gitlab.dune-project.org/copasi/dune-copasi.git",
    using:    :git,
    tag:      "v0.3.0",
    revision: "787ed2ded6bdeaac69406710525d382e6d7b1178"

  head "https://gitlab.dune-project.org/copasi/dune-copasi.git",
    using:    :git,
    branch:   "master"

  # license "BSD-2-clause"

  depends_on "muparser"
  depends_on "libtiff"
  depends_on "open-mpi"
  depends_on "cmake" => :build
  depends_on "gcc" => :build
  depends_on "dune-logging@2.7" => :build
  depends_on "dune-copasi/tap/dune-copasi-multidomaingrid@0.3" => :build
  depends_on "dune-copasi/tap/dune-copasi-pdelab@0.3" => :build

  def install
    ENV.deparallelize
    system "cmake",
    *std_cmake_args,
    *DuneCommonAT27.cmake_args,
    "-DDUNE_COPASI_SD_EXECUTABLE=ON",
    "-DDUNE_USE_FALLBACK_FILESYSTEM=ON",
    "."
    system "make", "install"
  end

  test do
    system "false"
  end
end
