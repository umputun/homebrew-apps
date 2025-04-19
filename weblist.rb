# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Weblist < Formula
  desc "weblist is a self-hosted web service to access local files and folders"
  homepage "https://weblist.umputun.dev"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/weblist/releases/download/v0.14.1/weblist_v0.14.1_macos_x86_64.tar.gz"
      sha256 "682a5b4333da041b774576e58fe050f317cfe0da1cf43d0c62e77e892fe1da99"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/weblist/releases/download/v0.14.1/weblist_v0.14.1_macos_arm64.tar.gz"
      sha256 "198307c8416cc51b9fd04f60598053e328e29ede214ea405a0618967dc67c3f1"

      def install
        bin.install "weblist"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/weblist/releases/download/v0.14.1/weblist_v0.14.1_linux_x86_64.tar.gz"
      sha256 "c59ae096e79440aebc316457cec24bf97c251798242e8919396f6f3aad0961d8"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/weblist/releases/download/v0.14.1/weblist_v0.14.1_linux_arm.tar.gz"
      sha256 "79ad28368b475aae6cff04f5eb959cbf984abf5b464ac0adc1c8413aea0642bd"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/weblist/releases/download/v0.14.1/weblist_v0.14.1_linux_arm64.tar.gz"
      sha256 "faff25a2189b0c41ecf7bf081596ca55079af0a8628923116ac018745a75b3ca"

      def install
        bin.install "weblist"
      end
    end
  end
end
