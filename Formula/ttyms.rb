# typed: false
# frozen_string_literal: true

class Ttyms < Formula
  desc "A secure terminal client for Microsoft Teams"
  homepage "https://github.com/davidkaya/ttyms"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "58121a4b90d675c653da4df4e881bc8792418f12209118401ea56907f22bf39e"
    end

    on_intel do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "83cee38c561cc68ee35768a94d062a451114ea16b900fc78d4fb9b4fcce099f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c90b325595962ccd2a848e235ae82f86059100313399c0b2b086a50aed721c64"
    end

    on_intel do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7e0ff9f79f1950c1cf44d3cdfe1d6699577d856a467d11a3266113b53c72356"
    end
  end

  def install
    bin.install "ttyms"
  end

  test do
    assert_match "ttyms", shell_output("#{bin}/ttyms --help")
  end
end
