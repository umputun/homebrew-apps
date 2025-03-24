# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Weblist < Formula
  desc "weblist is a self-hosted web service to access local files and folders"
  homepage "https://weblist.umputun.dev"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/weblist/releases/download/v0.5.1/weblist_v0.5.1_macos_x86_64.tar.gz"
      sha256 "526912b508d262ffad3ae7d688620a972965db437c38b3a0ebd79ff99a9cebdd"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/weblist/releases/download/v0.5.1/weblist_v0.5.1_macos_arm64.tar.gz"
      sha256 "8bb080dd8cdf8bf978cdd02c268a592ca981a3ea4db4e283979d71858ec2f382"

      def install
        bin.install "weblist"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/weblist/releases/download/v0.5.1/weblist_v0.5.1_linux_x86_64.tar.gz"
      sha256 "c1b03716bfe53aa17ff2a4164db10e68929107e9b0c600faa70d5e1b00fdce25"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/weblist/releases/download/v0.5.1/weblist_v0.5.1_linux_arm.tar.gz"
      sha256 "844a549535522a129f28c5da5fc60a30684a8dde2ee9363570e9b3ec261a806c"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/weblist/releases/download/v0.5.1/weblist_v0.5.1_linux_arm64.tar.gz"
      sha256 "c37386c87b85f85df08bc3fa043e5ab197206764427b5a209c397e10628f8417"

      def install
        bin.install "weblist"
      end
    end
  end
end
