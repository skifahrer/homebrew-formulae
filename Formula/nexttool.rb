class Nexttool < Formula
  desc "Command-line program for LEGO Mindstorms NXT programmable brick"
  homepage "https://bricxcc.sourceforge.io/"
  url "http://bricxcc.sourceforge.net/nexttool_osx.zip"
  version "1.2.1.r5"
  sha256 "7d455fe10191f06cbccd69075449041663c7e98fed917f49d18f24ca1f87f6d6"

  def install
    system "/usr/bin/unzip", "-d", bin, cached_download
  end

  test do
    system "#{bin}/nexttool -help"
  end
end
