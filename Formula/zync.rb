class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.410"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.410/zync-0.0.410-darwin-arm64.tar.gz"
      sha256 "8fd53b66498596798ed588f41f897753e469fb10d2d3167fa315495bd010ddae"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.410/zync-0.0.410-darwin-amd64.tar.gz"
      sha256 "3aa8f728bb5fa05fcc6571c76bda4e4ea997328f2c82d17d42cbfd15a2f2b1c9"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
