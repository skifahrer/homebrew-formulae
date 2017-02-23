require "tmpdir"

class NxtFantomDriver < Formula
  desc ""
  homepage "https://www.lego.com/mindstorms/"
  url "https://lc-www-live-s.legocdn.com/r/www/r/mindstorms/-/media/franchises/mindstorms%202014/downloads/firmware%20and%20software/nxt%20software/nxt%20fantom%20drivers%20v120.zip?l.r2=-964392510"
  sha256 "642d76a58650f0c0d2673be545e03370181c607500f906ec923efceb11831b34"

  def install
    dir = Dir.mktmpdir
    system "/usr/bin/unzip", "-d", dir, cached_download
    system "sudo", "/usr/sbin/installer", "-allowUntrusted", "-pkg", "#{dir}/NXT Fantom Drivers/MAC legodriver.pkg", "-target", "/"
    system "rm", "-rf", dir
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test nxt-fantom-driver`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
