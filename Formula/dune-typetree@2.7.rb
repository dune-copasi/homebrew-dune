class DuneTypetreeAT27 < Formula
  desc "Packaging for dune-typetree: a toolbox for solving PDEs -- typed tree template library"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/copasi/dune-typetree/-/archive/dune-copasi-v0.3/dune-typetree-dune-copasi-v0.3.tar.gz"
  sha256 "e4be8734093506bf5c81bf227bfb4f5a7cc2286cbc730ec024f6a088032fc771"

  # license any_of: [
  #   "GPL-2.0-only" => { with: "DUNE-exception" },
  #   "LGPL-3.0-or-later"
  # ]

  depends_on "dune-common@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
