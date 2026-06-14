class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.504"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.504/zync-0.0.504-darwin-arm64.tar.gz"
      sha256 "b4bb631e3730708702519bef05a723d00e0720f3abd1d493636e698042f9aa60"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.504/zync-0.0.504-darwin-amd64.tar.gz"
      sha256 "7366e7a1e35992eca65e967cd01e00daacba5385c58572270b77cb5f935d4c44"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
