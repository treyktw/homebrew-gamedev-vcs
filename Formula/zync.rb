class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.4/zync-0.0.4-darwin-arm64.tar.gz"
      sha256 "b7cf92eceb1908058f0489f3296582878955e3db44ccf3249e57aca9e19ac729"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.4/zync-0.0.4-darwin-amd64.tar.gz"
      sha256 "d4c06cd7d7644653bcbfbb44b5460e9c85aa7424e5d682ab269eca8594919dde"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
