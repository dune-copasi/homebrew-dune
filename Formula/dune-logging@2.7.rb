require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneLoggingAT27 < Formula
  desc "Packaging for dune-pdelab: a toolbox for solving PDEs -- logging module"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/staging/dune-logging.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "9737101b266dd21d60c1474991a282bf17133012"

  license any_of: [
    { "GPL-2.0-only" => { with: "DUNE-exception" } },
    "LGPL-3.0-or-later",
    "BSD-2-Clause"
  ]

  depends_on "dune-common@2.7"
  depends_on "fmt"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
