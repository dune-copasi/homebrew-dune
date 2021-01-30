class DuneFunctionsAT27 < Formula
  desc ""
  homepage "https://gitlab.dune-project.org"
  url "https://gitlab.dune-project.org/staging/dune-functions/-/archive/v2.7.1/dune-functions-v2.7.1.tar.gz"
  sha256 "b24f401081e7a77aea1a918f1fd2f01138c6c7955d487edc32826813401076f7"
  license "GPL-2.0"

  depends_on "dune-copasi/dune/dune-common@2.7"
  depends_on "dune-copasi/dune/dune-grid@2.7"
  depends_on "dune-copasi/dune/dune-istl@2.7"
  depends_on "dune-copasi/dune/dune-typetree@2.7"

  def install
    system "cmake", "-DBUILD_SHARED_LIBS=1", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
