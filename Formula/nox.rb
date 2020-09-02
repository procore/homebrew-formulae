# This file was generated by GoReleaser. DO NOT EDIT.
class Nox < Formula
  desc "A grand unified Elasticsearch infrastructure management cli"
  homepage ""
  version "0.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/procore/nox/releases/download/v0.1.4/nox_0.1.4_64-bit_macOS.tar.gz"
    sha256 "3ee8bfb8a9f9ffe83de7c682eada35c0105bffa0304b43172915e045abf214c2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/procore/nox/releases/download/v0.1.4/nox_0.1.4_64-bit_linux.tar.gz"
      sha256 "f7156ff9873534f0e31ef1e0bf8ee6cb15f5b7d98f764e221b47cd64df794277"
    end
  end

  def install
    bin.install "nox"
  end

  test do
    system "#{bin}/nox --help"
  end
end
