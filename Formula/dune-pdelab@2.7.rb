class DunePdelabAT27 < Formula
  desc "Packaging for dune-pdelab: a toolbox for solving PDEs -- discretization module"
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/pdelab/dune-pdelab/-/archive/releases/2.7/dune-pdelab-releases-2.7.tar.gz"
  sha256 "e0d82fa43c744bcab0f486e69f421553f3329771cd1162bd738831e148ead1e2"
  # license any_of: [
  #   "GPL-2.0-only" => { with: "DUNE-exception" },
  #   "LGPL-3.0-or-later"
  # ]

  depends_on "dune-common@2.7"
  depends_on "dune-grid@2.7"
  depends_on "dune-istl@2.7"
  depends_on "dune-typetree@2.7"
  depends_on "dune-localfunctions@2.7"
  depends_on "dune-functions@2.7"
  depends_on "eigen"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
