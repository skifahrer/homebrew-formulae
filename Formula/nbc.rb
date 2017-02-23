require "tmpdir"

class Nbc < Formula
  desc "Next Byte Codes (NBC), a programming language to program Mindstorms NXT"
  homepage "https://bricxcc.sourceforge.io/nbc/"
  url "https://downloads.sourceforge.net/project/bricxcc/NBC_NXC/NBC%20release%201.2.1%20r4/nbc-1.2.1.r4.osx.tgz"
  version "1.2.1.r4"
  sha256 "8f6c904b28ce8daca595c4dd07ae6b0b4acabb481586d000d3b3ef76ba67fa2c"

  def install
    dir = Dir.mktmpdir
    mkdir bin
    system "/usr/bin/tar", "-C", dir, "-xvf", cached_download
    mv "#{dir}/NXT/nbc", bin
  end

  test do
    IO.write "sample.nxc", "task main() {}"
    system "#{bin}/nbc", "-O=sample.rxe", "sample.nxc"
  end
end
