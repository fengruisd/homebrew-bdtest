# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Bytracetest < Formula
  desc ""
  homepage ""
  url "http://tosv.byted.org/obj/diggo/bytracetest-002.tar.xz"
  sha256 "831dafd38abf4606dfac59abbd4f7e1f719c97c32df5e4314bf7dbd07109c494"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    bin.install "bytracetest.py" => "bytracetest"
    bin.install "bytracetest_util" => "bytracetest_util"
    bin.install "bytracetest_util2" => "bytracetest_util2"
  end
end
