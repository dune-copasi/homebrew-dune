require File.expand_path(File.dirname(__FILE__) + '/dune-common@2.7.rb')

class DuneGeometryAT27 < Formula
  desc "Packaging for dune-geometry: a toolbox for solving PDEs -- geometry classes"
  homepage "https://gitlab.dune-project.org"

  url "https://gitlab.dune-project.org/core/dune-geometry.git",
    using:    :git,
    tag:      "v2.7.1",
    revision: "9d56be3e286bc761dd5d453332a8d793eff00cbe"

  license "GPL-2.0-only" => { with: "DUNE-exception" }

  depends_on "dune-common@2.7"

  def install
    system "cmake", ".", *std_cmake_args, *DuneCommonAT27.cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
