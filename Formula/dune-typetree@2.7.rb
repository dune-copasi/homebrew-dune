class DuneTypetreeAT27 < Formula
  desc "Packaging for dune-typetree: a toolbox for solving PDEs -- typed tree template library"
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-typetree/-/archive/v2.7.1/dune-typetree-v2.7.1.tar.gz"
  sha256 "74e392117fbcc7e001b4f1bfdf68d06827ce6cfa84f1e3eaf17faca8ad8c610e"
  license any_of: [
    "GPL-2.0-only" => { with: "DUNE-exception" },
    "LGPL-3-or-later"
  ]

  depends_on "dune-common@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
