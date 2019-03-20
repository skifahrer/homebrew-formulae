cask 'oki-hiper-c-driver' do
  version '2.0.5'
  sha256 '837ee5f4539f63728de2663fdace584a8c1a2d3de75029b65f147fcb4facfdb5'

  url 'https://www.oki.com/jp/printing/download/C511_C312_C301_HC_OSX_020005_132163.dmg'
  name 'OKI C511dn/C312dn/C301dn Printer Driver'
  homepage 'https://www.oki.com/jp/printing/support/drivers-and-utilities/?id=46259001FZ01&tab=drivers-and-utilities&productCategory=color&sku=C511DN&os=ab53&lang=ac1'

  pkg 'Installer for OSX10.5-10.12.pkg'
  uninstall :pkgutil => 'com.okidata.hipercDriver.*'
end
