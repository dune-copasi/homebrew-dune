class DuneUggridAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-uggrid/-/archive/v2.7.1/dune-uggrid-v2.7.1.tar.gz"
  sha256 "f8a4da02c9718b1ae2cc035ae412a5e5ce4ba173e1e9deb0f169d0ad33906840"
  license "LGPL-2.1-only"

  depends_on "dune-common@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
