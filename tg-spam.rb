# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.5.2/tg-spam_v1.5.2_macos_arm64.tar.gz"
      sha256 "cc90adfe3ab812d5bb85bb57ee6204facd3355c464af37aa2bddf6aa52bcf485"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.5.2/tg-spam_v1.5.2_macos_x86_64.tar.gz"
      sha256 "809f0856de7b121c32de9040fdb1a53fc12a11c0d2e64f79113c4bb9ae1384c1"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.5.2/tg-spam_v1.5.2_linux_arm64.tar.gz"
      sha256 "2c4a0d92a0cf5def3eef688b948678c7dc1f9e0d7b2116a1a94c06a550b7bd45"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.5.2/tg-spam_v1.5.2_linux_arm.tar.gz"
      sha256 "a030b385c0c9d02379402e31f891926781fa0bc9c904ca05ca93a8f7bd29f825"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.5.2/tg-spam_v1.5.2_linux_x86_64.tar.gz"
      sha256 "e2b3680c3dd66523aebff0065f95d0e839bf56a96b7503081f5f7d88c3d18d54"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
