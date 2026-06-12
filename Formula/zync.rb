class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.314"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.314/zync-0.0.314-darwin-arm64.tar.gz"
      sha256 "edf327ec0b9e967719122de5f84124e0f99e1624969d69c6bfe96a7b3963d1e5"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.314/zync-0.0.314-darwin-amd64.tar.gz"
      sha256 "74cf5471856b712473029a60becca1add0e8d0e8e02ec69f33478acdbaf19220"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
