cask 'hhkb-pro' do
  version '3.0.1,201609'
  sha256 '91d549cc88b690a04d30c5939029e7b46a1a22e16b17d1821665b9c2f0da46ea'

  url "http://www.pfu.fujitsu.com/hhkeyboard/downloads/HHKBProMac#{version.after_comma}.dmg"
  name 'HHKB Pro'
  homepage 'http://www.pfu.fujitsu.com/hhkeyboard/macdownload.html'

  pkg 'for X/HHKB Pro Installer.app/Contents/Resources/10_6/HHKeyboardPro.pkg'
end
