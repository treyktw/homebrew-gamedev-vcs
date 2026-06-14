class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.410"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.410/zync-0.0.410-darwin-arm64.tar.gz"
      sha256 "c68b91d4e30a8396f640bcc91c6f0cbe42937465f59045ba354b9c3af36048fa"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.410/zync-0.0.410-darwin-amd64.tar.gz"
      sha256 "154f98fc93fd5d78214a1152fc70746f9471da4577a1867f422e6b5ec09bc778"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
