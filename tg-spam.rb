# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.4.0/tg-spam_v1.4.0_macos_arm64.tar.gz"
      sha256 "256f7e809641d492a2a2dcc43f44fb872d5798c2c82a8219c17af792c5010c2a"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.4.0/tg-spam_v1.4.0_macos_x86_64.tar.gz"
      sha256 "86320f8f5f63c5937b4b018c7e1e01176d0097dacdb931c6b090e00fa6e1f46e"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.4.0/tg-spam_v1.4.0_linux_arm.tar.gz"
      sha256 "0fcfbfd4865d65cd58e0acaf1dfbbabf12b3c3394bee7dac15d0731cf01c7590"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.4.0/tg-spam_v1.4.0_linux_arm64.tar.gz"
      sha256 "c92ffb80f8b00df5f099b4788410aa57c2d963d622ac984341468a14295ae199"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.4.0/tg-spam_v1.4.0_linux_x86_64.tar.gz"
      sha256 "823b09256eaaaa4b2e1084d9dc24a615bf4f26efb1a11ce320f68471253d58ba"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
