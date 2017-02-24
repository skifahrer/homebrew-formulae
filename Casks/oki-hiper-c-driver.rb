cask 'oki-hiper-c-driver' do
  version '2.0.0'
  sha256 '5cc1eb9f2717f924248320a1217309cf93fe2350850bad72e3c853ecb46ca305'

  url 'http://www5.okidata.co.jp/JSHIS163.nsf/SearchView/7BF3B295CBFB44F349257ACC00285CAE/$File/OKI_MXMLion_DHC_ww_A1.dmg'
  name 'OKI C511dn/C312dn/C301dn Printer Driver'
  homepage 'http://www5.okidata.co.jp/JSHIS163.nsf/SearchView/7BF3B295CBFB44F349257ACC00285CAE?OpenDocument&charset=Shift_JIS'

  pkg 'Installer for OS X.pkg'
  uninstall :pkgutil => 'com.okidata.hipercDriver.*'
end
