require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneUggridAT27 < Formula
  desc "Packaging for dune-uggrid: a toolbox for solving PDEs -- UG grid manager"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/staging/dune-uggrid.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "d214484ccef1a474fa283ad8f9c0e39873e5f34c"

  license "LGPL-2.1-only"

  depends_on "dune-common@2.7"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
