# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v0.2.3/tg-spam_v0.2.3_macos_x86_64.tar.gz"
      sha256 "e11ca8e98ef2028d98505ed5f67eb428a87c21bc49da28f623f0375fecb357a0"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v0.2.3/tg-spam_v0.2.3_macos_arm64.tar.gz"
      sha256 "8771efa72c0bab8c93d50b2c3bbdf915b9127ce0f9b223a7cd85cf9394e109f5"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v0.2.3/tg-spam_v0.2.3_linux_arm.tar.gz"
      sha256 "c23886e4695a91d55e7a1fb25eabd66efb385c62001d0a7f0779411fcd5e1ee3"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v0.2.3/tg-spam_v0.2.3_linux_arm64.tar.gz"
      sha256 "92d8b4bd816b19b658cc9814c606125fc56667e4b7b2634ee947c2ee96003d71"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v0.2.3/tg-spam_v0.2.3_linux_x86_64.tar.gz"
      sha256 "a7d4941a85b2cf52489a1e42ccf68df0f5c6b19267109fde9bb44996fa35e22d"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
