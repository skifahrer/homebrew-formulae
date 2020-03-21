cask 'nxt-fantom-driver' do
  version '1.2.0'
  sha256 '642d76a58650f0c0d2673be545e03370181c607500f906ec923efceb11831b34'

  url 'https://raw.githubusercontent.com/skifahrer/nxt-fantom-driver/master/nxt-fantom-drivers-120.zip'
  name 'NXT Fantom Drivers'
  homepage 'https://www.lego.com/mindstorms/downloads'

  pkg 'NXT Fantom Drivers/MAC legodriver.pkg'
  uninstall :pkgutil => 'com.ni.pkg.legodriver'
end
