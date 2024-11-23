# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.14.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.14.3/tg-spam_v1.14.3_macos_x86_64.tar.gz"
      sha256 "bdefe6bfe8c373f7f6f10c4854de99723423d1f12e48f4595d7db797e645ce67"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.14.3/tg-spam_v1.14.3_macos_arm64.tar.gz"
      sha256 "c1a9f80d90d6cf72d89b766b61a3109e34955f10daf9d40d2befaabc1c25c35c"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.14.3/tg-spam_v1.14.3_linux_x86_64.tar.gz"
      sha256 "79d2bdc5f3da529048e2fca47970cf5453f23d67745154fc2763413fcacdf414"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.14.3/tg-spam_v1.14.3_linux_arm.tar.gz"
      sha256 "6f4fd84bed97997ec8810f4e8cbd3e4a51f21c2a91cbcaad3e471dafb24e9522"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.14.3/tg-spam_v1.14.3_linux_arm64.tar.gz"
      sha256 "ea9b67962084ea48067022ddd36ef08bbaad8453c4055eec3e4d8361cb5672e5"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
