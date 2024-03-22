# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.11.1/tg-spam_v1.11.1_macos_arm64.tar.gz"
      sha256 "ae007a9ee247aed41a1c535bde78d2513f57ca712dec8a0101cc0994e5ebce46"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.11.1/tg-spam_v1.11.1_macos_x86_64.tar.gz"
      sha256 "32a46226266ccc7a6bb491c36b89fe1538bf6b217acb45c7f118f79863742083"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.11.1/tg-spam_v1.11.1_linux_arm64.tar.gz"
      sha256 "a8bd236c5960ec3cb7b4fd165c1e862376906caa7bdf3175c09f2de2c64b15c5"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.11.1/tg-spam_v1.11.1_linux_x86_64.tar.gz"
      sha256 "43565e9105256771f054f3ae981a342fc20ebc69ddd92ea4796bdf76fb087a4a"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.11.1/tg-spam_v1.11.1_linux_arm.tar.gz"
      sha256 "3f9f0811ab5ef79b8c012636459c6d8fe7847a3f4dd637fe36fab7011008feb0"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
