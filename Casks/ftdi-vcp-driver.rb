cask 'ftdi-vcp-driver' do
  version '2.3'
  sha256 '08e7fab56d20832ea609bfb2758130279ba49722084298a952796a009b82442d'

  url 'http://www.ftdichip.com/Drivers/VCP/MacOSX/FTDIUSBSerialDriver_v2_3.dmg'
  name 'FTDI VCP Driver'
  homepage 'http://www.ftdichip.com/Drivers/VCP.htm'

  pkg 'FTDIUSBSerial.pkg'
  uninstall :pkgutil => 'com.FTDI.driver.FTDIUSBSerialDriver'
end
