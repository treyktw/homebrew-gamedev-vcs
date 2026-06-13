class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.407"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.407/zync-0.0.407-darwin-arm64.tar.gz"
      sha256 "92e0f1cbe81da408f7ad594c9db8fe8f088616f8afe6f6a7e30c5dd8b3386e94"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.407/zync-0.0.407-darwin-amd64.tar.gz"
      sha256 "bc64795299a039514da4e1342af2999402978b5bc48886600920494379a6f463"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
