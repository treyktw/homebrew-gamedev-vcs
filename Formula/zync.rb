class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.409"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.409/zync-0.0.409-darwin-arm64.tar.gz"
      sha256 "0c2d49a704bcc00560db3045d06e09c992301f3c6f68ed54425c811935905f3b"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.409/zync-0.0.409-darwin-amd64.tar.gz"
      sha256 "f8bec8a892e31da49df11751bb46564e681e38dd8fc45eae4534236e34e5f506"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
