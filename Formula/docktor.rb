class Docktor < Formula
  desc "Docker + Doctor CLI for local Docker diagnostics"
  homepage "https://github.com/fullstack-sargis/docktor"
  version "1.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/fullstack-sargis/docktor/releases/download/v1.0.1/docktor-v1.0.1-macos-arm64.tar.gz"
    sha256 "4718a0cd3791baa5272e50f46e6f6dcfd3a8606aac535426d544ac0560bc0560"
  else
    url "https://github.com/fullstack-sargis/docktor/releases/download/v1.0.1/docktor-v1.0.1-macos-x64.tar.gz"
    sha256 "4f3c3c37b9b1c778b355688c0305ed480812b30116fffec90e594921662b05c8"
  end

  def install
    bin.install "docktor"
  end

  test do
    system "#{bin}/docktor", "--help"
  end
end