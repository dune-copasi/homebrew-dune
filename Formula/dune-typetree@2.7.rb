class DuneTypetreeAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-typetree/-/archive/v2.7.1/dune-typetree-v2.7.1.tar.gz"
  sha256 "74e392117fbcc7e001b4f1bfdf68d06827ce6cfa84f1e3eaf17faca8ad8c610e"
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
