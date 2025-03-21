# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.17.0/tg-spam_v1.17.0_macos_x86_64.tar.gz"
      sha256 "fd1898119f1b407455e9360e7b21a8aa91d9b60717418b06f6a15b5d4ede104d"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.17.0/tg-spam_v1.17.0_macos_arm64.tar.gz"
      sha256 "5766d332a0cc72f34ca935b2bdc1fdb8d2e0491aac075deace1a14e89c87032c"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.17.0/tg-spam_v1.17.0_linux_x86_64.tar.gz"
      sha256 "e5d36e53cd7899152fb26c44c23aa9a96bc50e73835acd00ddb29b35bce532aa"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.17.0/tg-spam_v1.17.0_linux_arm.tar.gz"
      sha256 "ee82e139e878c611ff5e538a7624026106fd523714b25af5f9fce9fe0910d63e"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.17.0/tg-spam_v1.17.0_linux_arm64.tar.gz"
      sha256 "b29633a1bde73ef83c41c11971b16d57ebb695d8ee11a55171e13dd04c384564"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
