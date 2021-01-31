class DuneCopasiAT03 < Formula
  desc ""
  homepage "https://dune-copasi.netlify.app/"
  url "https://gitlab.dune-project.org/copasi/dune-copasi/-/archive/v0.3.0/dune-copasi-v0.3.0.tar.gz"
  sha256 "18b5bf3562d148486cfd922fecd92a64e5412589f2d96fa86e1792352f9d8f98"
  license "BSD-2-clause"

  depends_on "dune-pdelab@2.7" => "with-support-dune-copasi-v0.3"
  depends_on "dune-logging@2.7" => "with-support-dune-copasi-v0.3"
  depends_on "dune-multidomaingrid@2.7" => "with-support-dune-copasi-v0.3"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
