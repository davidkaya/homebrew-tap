# typed: false
# frozen_string_literal: true

class Ttyms < Formula
  desc "A secure terminal client for Microsoft Teams"
  homepage "https://github.com/davidkaya/ttyms"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "91f1044df31493d80e4010f0a62d56641606ce8f6675290d3ba43a54eb3e4e52"
    end

    on_intel do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "22b0d56d7525c88e72f860baf325f1b31eba36cc7dfc3f95b33bcca6b70e4de8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f4d6dfc286e4c375f70a27f38d1949663b9d09f6a0a0fceff53ac406ca9c798"
    end

    on_intel do
      url "https://github.com/davidkaya/ttyms/releases/download/v#{version}/ttyms-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "143e50077fa7e087082a0c76181b679e585697e18316034cdbcbed645a1b6a83"
    end
  end

  def install
    bin.install "ttyms"
  end

  test do
    assert_match "ttyms", shell_output("#{bin}/ttyms --help")
  end
end
