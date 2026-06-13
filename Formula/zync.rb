class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.318"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.318/zync-0.0.318-darwin-arm64.tar.gz"
      sha256 "7533b104df58be1acc112a95c7331832f257a1a26471785585e45112fd2281ae"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.318/zync-0.0.318-darwin-amd64.tar.gz"
      sha256 "dc4b7b34c7ce060d78242e39b9fdebf60621c10ce4d90773a4928d62d8492650"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
