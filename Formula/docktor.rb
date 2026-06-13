class Docktor < Formula
  desc "QEMU-based Docker VM CLI for macOS"
  homepage "https://github.com/fullstack-sargis/docktor"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/fullstack-sargis/docktor/releases/download/v1.0.0/docktor-v1.0.0-macos-arm64.tar.gz"
    sha256 "59b1a9e2ca70a564b66eb0db2f233c2258d2675ef89bb2a4def76b4fec786edd"
  else
    url "https://github.com/fullstack-sargis/docktor/releases/download/v1.0.0/docktor-v1.0.0-macos-x64.tar.gz"
    sha256 "fdad10d55fb83eb34a222a1b4a86388b9d4661a21cfca9b4788d229450b7914b"
  end

  def install
    bin.install "docktor"
  end

  test do
    system "#{bin}/docktor", "--help"
  end
end
