# typed: false
# frozen_string_literal: true

class Ttyms < Formula
  desc "A secure terminal client for Microsoft Teams"
  homepage "https://github.com/davidkaya/ttyms"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d8cb5f1d05bee54ca9cbb58fe07533399bfceb5a3baefe2e453b2ba41cb103f5"
    end

    on_intel do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7e4e6bc55a7963eaa70d5f1a949d29e76091bb9f7cd2f12330c63eb16efaf4e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49d2592309c01182e16c34716712190eeb12f435866381e111b1f0a1203c9354"
    end

    on_intel do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac097a292d21a042cca0404b32e057611ea23048caddba6de3fa2bd144a375e1"
    end
  end

  def install
    bin.install "ttyms"
  end

  test do
    assert_match "ttyms", shell_output("#{bin}/ttyms --help")
  end
end
