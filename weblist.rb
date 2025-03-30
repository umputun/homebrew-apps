# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Weblist < Formula
  desc "weblist is a self-hosted web service to access local files and folders"
  homepage "https://weblist.umputun.dev"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/weblist/releases/download/v0.10.2/weblist_v0.10.2_macos_x86_64.tar.gz"
      sha256 "2cbcae3a7bcafd4ff504e6d63943498fec371d9edec4da625797c5c401715f5a"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/weblist/releases/download/v0.10.2/weblist_v0.10.2_macos_arm64.tar.gz"
      sha256 "ea0fbdd14265bf7d3532f34a2995bb8b319cee9d06bbaf7b1c1dc56ece5349d5"

      def install
        bin.install "weblist"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/weblist/releases/download/v0.10.2/weblist_v0.10.2_linux_x86_64.tar.gz"
      sha256 "a9b7cbb336a08fbbadf84ee2e4b772135d6e0823b956da6329416573326a6cc5"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/weblist/releases/download/v0.10.2/weblist_v0.10.2_linux_arm.tar.gz"
      sha256 "38717b24b1404ed54639f97705f78f2e1e7c9f4e8b91b50c6876352d6966d4f3"

      def install
        bin.install "weblist"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/weblist/releases/download/v0.10.2/weblist_v0.10.2_linux_arm64.tar.gz"
      sha256 "4f4f1e8fd7288494106d91074c7db104dbb279546b0d86d713af1a266ce9c25d"

      def install
        bin.install "weblist"
      end
    end
  end
end
