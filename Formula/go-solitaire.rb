class GoSolitaire < Formula
  desc "Console-based version of Solitaire written in Go."
  homepage "https://github.com/nirasan/go-solitaire"
  url "https://github.com/ngs/go-solitaire/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "dc25dcebba46eacbc42fad6b398736fb1b647e23cf968073f7093a3395939e43"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    gopkg = "github.com/nirasan/go-solitaire"
    srcpath = buildpath/"src/#{gopkg}"
    srcpath.install buildpath.children

    cd "#{srcpath}/cmd/solitaire" do
      system "go", "get", "-d", "-t", "."
      system "go", "build", "."
      bin.install "solitaire"
    end
  end

  test do
    system "#{bin}/solitaire", "-help"
  end
end
