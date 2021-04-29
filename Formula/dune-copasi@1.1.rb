require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneCopasiAT11 < Formula
  desc ""
  homepage "https://dune-copasi.netlify.app/"
  url "https://gitlab.dune-project.org/copasi/dune-copasi.git",
    using:    :git,
    tag:      "v1.1.0",
    revision: "38f318bc28c947a406eda4aa6d891a57b21861b0"

  head "https://gitlab.dune-project.org/copasi/dune-copasi.git",
    using:    :git,
    branch:   "master"

  license "BSD-2-clause"

  option "with-devel", "Install C++ header files"

  depends_on "muparser"
  depends_on "libtiff"
  depends_on "open-mpi"
  depends_on "cmake" => [(build.with? "devel") ? :recommended : :build]
  depends_on "gcc" => [(build.with? "devel") ? :recommended : :build]
  depends_on "dune-logging@2.7" => [(build.with? "devel") ? :recommended : :build]
  depends_on "dune-copasi/tap/dune-copasi-multidomaingrid@1.1" => [(build.with? "devel") ? :recommended : :build]
  depends_on "dune-copasi/tap/dune-copasi-pdelab@1.1" => [(build.with? "devel") ? :recommended : :build]

  def install
    ENV.deparallelize
    system "cmake",
      *std_cmake_args,
      *DuneCommonAT27.cmake_args,
      "-DDUNE_COPASI_SD_EXECUTABLE=ON",
      "-DDUNE_COPASI_MD_EXECUTABLE=ON",
      "-DDUNE_USE_FALLBACK_FILESYSTEM=ON",
      "."

    system "cmake", "--build", "."

    install_comp = [
      '--component Libraries',
      '--component Runtime'
    ]
    install_comp << "--component Development" if build.with? "devel"
    install_comp << "--component Unspecified" if build.with? "devel"
    system "cmake", "--install", "."
  end

  test do
    system "false"
  end
end
