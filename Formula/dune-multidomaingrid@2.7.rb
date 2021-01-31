class DuneMultidomaingridAT27 < Formula
  option "with-support-dune-copasi-v0.3", "Support for dune-copasi v0.3"
  desc "Packaging for dune-multidomaingrid: a toolbox for solving PDEs -- convert grids into multidomain grids"
  homepage "https://gitlab.dune-project.org"

  if build.with? "support-dune-copasi-v0.3"
    url "https://gitlab.dune-project.org/copasi/dune-multidomaingrid/-/archive/dune-copasi-v0.3/dune-multidomaingrid-dune-copasi-v0.3.tar.gz"
    sha256 "6ef29d1090ed3865879c21fb8bb71eec076f5495c30afa46746a15589944a3e4"
    depends_on "dune-copasi/tap/dune-typetree@2.7" => "with-support-dune-copasi-v0.3"
  else
    url "https://gitlab.dune-project.org/extensions/dune-multidomaingrid/-/archive/v2.7.0/dune-multidomaingrid-v2.7.0.tar.gz"
    sha256 "0898f43737f70d090ae95db91303bb8112534974c178d5a593c4d7e154f0ad16"
    depends_on "dune-typetree@2.7"
  end
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
