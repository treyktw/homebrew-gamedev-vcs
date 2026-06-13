class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.318"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.318/zync-0.0.318-darwin-arm64.tar.gz"
      sha256 "fd8d84d0f19e7fa7a8e0bfbdee6a1d24a57a662ee1efcc5e0c65a6c6bbfefc4c"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.318/zync-0.0.318-darwin-amd64.tar.gz"
      sha256 "e27898430927ca2cbd6dfa049601b1959db9ee36117305c961298076d7f20941"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
