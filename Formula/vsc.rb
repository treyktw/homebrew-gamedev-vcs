class Vsc < Formula
  desc "VSC - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.312"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.312/vsc-0.0.312-darwin-arm64.tar.gz"
      sha256 "d26583e1f9b744ffd5b02f4472f0c4d09f9d56bbdc74294e0f885b9c3c37fb4d"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.312/vsc-0.0.312-darwin-amd64.tar.gz"
      sha256 "22c5f783c19460f5aa462ec06a00184241eca251e4a871af36582cfdaab6df9b"
    end
  end

  def install
    bin.install "vsc"
  end

  test do
    system "#{bin}/vsc", "--version"
  end
end
