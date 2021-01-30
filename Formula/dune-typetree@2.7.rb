class DuneTypetreeAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-typetree/-/archive/50603353/dune-typetree-50603353.tar.gz"
  sha256 "06c5a5d86b097a2a5b0e1721509c274edefc8e8829248fb678d9912cfc13d55a"
  license "GPL-2.0"

  depends_on "dune-copasi/dune/dune-common@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
