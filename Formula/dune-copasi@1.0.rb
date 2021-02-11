require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneCopasiAT10 < Formula
  desc ""
  homepage "https://dune-copasi.netlify.app/"
  url "https://gitlab.dune-project.org/copasi/dune-copasi.git",
    using:    :git,
    tag:      "v1.0.0",
    revision: "3e8b69275b2cf0a30e1515f4f374c5d5dd05b62f"

  head "https://gitlab.dune-project.org/copasi/dune-copasi.git",
    using:    :git,
    branch:   "master"

  license "BSD-2-clause"

  option "with-devel", "Install development tools"

  depends_on "muparser"
  depends_on "libtiff"
  depends_on "open-mpi"

  if build.with? "devel"
    depends_on "cmake"
    depends_on "gcc"
    depends_on "dune-logging@2.7"
    depends_on "dune-copasi/tap/dune-copasi-multidomaingrid@1.0"
    depends_on "dune-copasi/tap/dune-copasi-pdelab@1.0"
  else
    depends_on "cmake" => :build
    depends_on "gcc" => :build
    depends_on "dune-logging@2.7" => :build
    depends_on "dune-copasi/tap/dune-copasi-multidomaingrid@1.0" => :build
    depends_on "dune-copasi/tap/dune-copasi-pdelab@1.0" => :build
  end

  def install
    ENV.deparallelize
    system "cmake",
      *std_cmake_args,
      *DuneCommonAT27.cmake_args,
      "-DDUNE_COPASI_SD_EXECUTABLE=ON",
      "-DDUNE_USE_FALLBACK_FILESYSTEM=ON",
      "."

    install_args = %W[
      --component Libraries
      --component Runtime
    ]
    install_args << "--component Development" if build.with? "devel"
    install_args << "--component Unspecified" if build.with? "devel"
    system "cmake", "--install", ".", *install_args
  end

  test do
    system "false"
  end
end
