class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.501"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.501/zync-0.0.501-darwin-arm64.tar.gz"
      sha256 "b3af9241ca7de363ccfe74f0b2ace34ae79e6f40adf0f2f4ce8761e4f2b6b3b7"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.501/zync-0.0.501-darwin-amd64.tar.gz"
      sha256 "4f8e14d022db19d97b52ae4e584712477fc715855cade330f67ac3463233289b"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
