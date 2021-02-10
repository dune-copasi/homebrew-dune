class DuneCommonAT27 < Formula
  desc "Packaging for dune-common: a toolbox for solving PDEs -- basic classes"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/core/dune-common.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "aa689abba532f40db8f5663fa379ea77211c1953"

  license all_of: [
    { "GPL-2.0-only" => { with: "DUNE-exception" } },
    "FSFAP",
    "BSD-3-clause",
    "other"
  ]

  depends_on "cmake"
  depends_on "gcc"
  depends_on "pkg-config"
  depends_on "open-mpi"
  depends_on "gmp"
  depends_on "superlu"

  # cmake arguments for all dune modules
  def self.cmake_args
    args = %W[
      -DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON
      -DBUILD_SHARED_LIBS=1
      -DCMAKE_CXX_STANDARD=17
    ]
    args
  end

  stable do
    patch do
      url "https://gitlab.dune-project.org/copasi/dune-copasi/-/raw/90a852a9e40175c8c874746cb8c7440a8cffd4de/.ci/dune-common.patch"
      sha256 "771de47ac8a1681a62bff7996e91a80d74a213b2c74c96370ec6ce87170d8d99"
    end
  end

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
