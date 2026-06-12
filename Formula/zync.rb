class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/gamedev-vcs"
  version "0.0.313"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-arm64.tar.gz"
      sha256 "6d686da4c8fd4da1c68968428be8756ed2a11fd1b760322a85dcdc393cc307d1"
    else
      url "https://github.com/treyktw/gamedev-vcs/releases/download/v0.0.313/zync-0.0.313-darwin-amd64.tar.gz"
      sha256 "a4ec6c5aa7dc898de62fd390b4db7d4e07f7b3ccb4871777bd199f7ef7e71a1e"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
