class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.312"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.312/vsc-0.0.312-darwin-arm64.tar.gz"
      sha256 "442fc7f8b14765db355c4a7106129fbed7788b92bf5cd5e9654930772881733d"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.312/vsc-0.0.312-darwin-amd64.tar.gz"
      sha256 "2c231531f9009dd3625120ff8eca19981b46143efedc7b74ef41e725843375b4"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
