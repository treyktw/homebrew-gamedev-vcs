class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.515"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.515/zync-0.0.515-darwin-arm64.tar.gz"
      sha256 "dbe1c08d659014062f41bfc5c599eacc8f9571b680778f16d180275e80bb3448"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.515/zync-0.0.515-darwin-amd64.tar.gz"
      sha256 "ce7844b0578e84871be86da2b70c58fa796890649d2548005137766addc19535"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
