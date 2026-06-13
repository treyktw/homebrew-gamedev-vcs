class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.410"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.410/zync-0.0.410-darwin-arm64.tar.gz"
      sha256 "49ad1394cf49781676406c2b152aaa8461148262cfa38b463300fe57f57483f4"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.410/zync-0.0.410-darwin-amd64.tar.gz"
      sha256 "c2efa6b6beca135734c3445e9963142900c76cc422e2ac92d89c0954862a4796"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
