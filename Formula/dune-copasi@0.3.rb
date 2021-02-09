class DuneCopasiAT03 < Formula
  desc ""
  homepage "https://dune-copasi.netlify.app/"
  url "https://gitlab.dune-project.org/copasi/dune-copasi.git",
    using:    :git,
    tag:      "v0.3.0",
    revision: "787ed2ded6bdeaac69406710525d382e6d7b1178"

  head "https://gitlab.dune-project.org/copasi/dune-copasi.git"

  license "BSD-2-clause"

  depends_on "muparser"
  depends_on "libtiff"
  depends_on "cmake" => :build
  depends_on "dune-copasi/tap/dune-pdelab@2.7" => :build
  depends_on "dune-copasi/tap/dune-logging@2.7" => :build
  depends_on "dune-copasi/tap/dune-multidomaingrid@2.7" => :build

  def install
    system "cmake", "-DCMAKE_CXX_STANDARD=17", "-DDUNE_COPASI_SD_EXECUTABLE=1", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
