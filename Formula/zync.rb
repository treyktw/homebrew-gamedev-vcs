class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.318"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.318/zync-0.0.318-darwin-arm64.tar.gz"
      sha256 "e6505e5bbe5696fef446ecc7f09b36502314aae7acd0fe240b094664d6446ce7"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.318/zync-0.0.318-darwin-amd64.tar.gz"
      sha256 "19ad44c28276e822edfd8f45f016e5fa720045ff4618a56459a3d9c574a6b6dd"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
