# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.3.0/tg-spam_v1.3.0_macos_arm64.tar.gz"
      sha256 "56c7e944501d15efc6335a063cf1ed295a43c4b3ea46aa7b694b02f9e612256a"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.3.0/tg-spam_v1.3.0_macos_x86_64.tar.gz"
      sha256 "3ac1e3bfaf31a010b9f70b666ada2a0bac7163e60162e76d22091a009d0a1cc2"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.3.0/tg-spam_v1.3.0_linux_arm.tar.gz"
      sha256 "51162c350fc2177c6a38c16ba561067d9582a93e59f532fcce1485dd915e52dc"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.3.0/tg-spam_v1.3.0_linux_x86_64.tar.gz"
      sha256 "18f720c5ee2d2dab39b89940e1af16a7c1942b9b0f9b31f9aa95abaf0ea13290"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.3.0/tg-spam_v1.3.0_linux_arm64.tar.gz"
      sha256 "19876a89230d008b68842f6efe480925e60b8e6ef4c2b3f9afb606f040324912"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
