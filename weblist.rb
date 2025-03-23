# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Weblist < Formula
  desc "weblist is a self-hosted web service to access local files and folders"
  homepage "https://weblist.umputun.dev"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/weblist/releases/download/v0.4.2/weblist_v0.4.2_macos_x86_64.tar.gz"
      sha256 "ad16acebe85e3c1fa4706f5fb11398345bbd1f331ce81a7e6a929fd2398e4940"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/weblist/releases/download/v0.4.2/weblist_v0.4.2_macos_arm64.tar.gz"
      sha256 "1578746080bcd20a574b45bdcc762f0553716cdaf2759024900f79c675068801"

      def install
        bin.install "weblist"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/weblist/releases/download/v0.4.2/weblist_v0.4.2_linux_x86_64.tar.gz"
      sha256 "a99137c122a2169299af653258e3a6b78501c93fc5c8f1864b03d6c04db2d2f2"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/weblist/releases/download/v0.4.2/weblist_v0.4.2_linux_arm.tar.gz"
      sha256 "938ac53aeea8066d959e22421a2cb13fe501ed9f0e1a8abe6a27724b02864296"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/weblist/releases/download/v0.4.2/weblist_v0.4.2_linux_arm64.tar.gz"
      sha256 "b4877e0764c1fa7094d8218a3d014c81a15670675fb81dd6a6467ae40402238c"

      def install
        bin.install "weblist"
      end
    end
  end
end
