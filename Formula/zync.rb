class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.5/zync-0.0.5-darwin-arm64.tar.gz"
      sha256 "04ebaca566271d6e360b04096780558379a4da7c3ebefcdde156829cf898fc9c"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.5/zync-0.0.5-darwin-amd64.tar.gz"
      sha256 "8f2501ec6af0d5d34b64f6451f9a54e567dba7fa585740b626ff88b9eef90713"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
