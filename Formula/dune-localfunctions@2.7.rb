require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneLocalfunctionsAT27 < Formula
  desc "Packaging for dune-localfunctions: a toolbox for solving PDEs -- local basis"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/core/dune-localfunctions.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "68f1bcf32d9068c258707d241624a08b771b6fde"

  license "GPL-2.0-only" => { with: "DUNE-exception" }

  depends_on "dune-common@2.7"
  depends_on "dune-geometry@2.7"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
