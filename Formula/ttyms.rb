# typed: false
# frozen_string_literal: true

class Ttyms < Formula
  desc "A secure terminal client for Microsoft Teams"
  homepage "https://github.com/davidkaya/ttyms"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6a627d465580a3f7044f9a2c436f464a77dc68f5f90f5ba9545615c03bf8632a"
    end

    on_intel do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c3595fb86953dd7a553b3c9b440375aeaed5fc5c22d974e84f3564b662b8b105"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "760585a725c5299abad83bf784b77a8896319433c4f6f9a54c207cda2ce4a2bc"
    end

    on_intel do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "142a24f5f8f774077ca591e60d80c098b67537ff18d80bd40a159d419be646b4"
    end
  end

  def install
    bin.install "ttyms"
  end

  test do
    assert_match "ttyms", shell_output("#{bin}/ttyms --help")
  end
end
