class Zync < Formula
  desc "Zync - Game Development Version Control CLI"
  homepage "https://github.com/treyktw/zync-cli"
  version "0.0.317"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.317/zync-0.0.317-darwin-arm64.tar.gz"
      sha256 "eacda375ec89820a1af51aee297b1231b67b1db5ee75aa42abb3d3be0b554478"
    else
      url "https://github.com/treyktw/zync-cli/releases/download/v0.0.317/zync-0.0.317-darwin-amd64.tar.gz"
      sha256 "f55757cd47348381f48260f6d25e3cab4a74762ca934400390882486ac5b0a36"
    end
  end

  def install
    bin.install "zync"
  end

  test do
    system "#{bin}/zync", "--version"
  end
end
