class DuneMultidomaingridAT27 < Formula
  desc "Packaging for dune-multidomaingrid: a toolbox for solving PDEs -- convert grids into multidomain grids"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/copasi/dune-multidomaingrid/-/archive/dune-copasi-v0.3/dune-multidomaingrid-dune-copasi-v0.3.tar.gz"
  sha256 "6ef29d1090ed3865879c21fb8bb71eec076f5495c30afa46746a15589944a3e4"
  depends_on "dune-copasi/tap/dune-typetree@2.7"

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
