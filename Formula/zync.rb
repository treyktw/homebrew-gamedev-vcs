class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.4/zync-0.0.4-darwin-arm64.tar.gz"
      sha256 "d0684ee6f3a20fcec91d21e7be1082b6d6012e864c9c92256bd8b1071aae0a44"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.4/zync-0.0.4-darwin-amd64.tar.gz"
      sha256 "dd726436be2f36b9a85bc47fcf0b6669a17ff8f64105190ba8e76c522d1187e6"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
