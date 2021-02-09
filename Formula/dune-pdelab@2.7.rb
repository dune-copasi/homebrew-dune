class DunePdelabAT27 < Formula
  desc "Packaging for dune-pdelab: a toolbox for solving PDEs -- discretization module"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/copasi/dune-pdelab/-/archive/dune-copasi-v0.3/dune-pdelab-dune-copasi-v0.3.tar.gz"
  sha256 "27e842896eb916c2725388014260676f1188cb2c041a6eb79e54965b1dfc0e29"
  depends_on "dune-copasi/tap/dune-typetree@2.7"
  depends_on "dune-copasi/tap/dune-functions@2.7"

  # license any_of: [
  #   "GPL-2.0-only" => { with: "DUNE-exception" },
  #   "LGPL-3.0-or-later"
  # ]

  depends_on "dune-istl@2.7"
  depends_on "eigen"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
