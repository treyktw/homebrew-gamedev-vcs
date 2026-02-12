class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.312"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.312/vsc-0.0.312-darwin-arm64.tar.gz"
      sha256 "76c7788cb5ed892c4968ba2af9beb09cf79fe2f23aa60f5fd443a5b45feed083"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.312/vsc-0.0.312-darwin-amd64.tar.gz"
      sha256 "5d7c84b4e5c18cf9da55cae18d873ee268da582448c3138f330ca54cac0311b6"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
