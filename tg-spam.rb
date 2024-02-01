# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.10.0/tg-spam_v1.10.0_macos_x86_64.tar.gz"
      sha256 "ce80184b98ece0cc5b82c11adda7aa1a2665dd79c74fea39e79bd4809c1df6df"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.10.0/tg-spam_v1.10.0_macos_arm64.tar.gz"
      sha256 "9fbcad8b4f7393c53e741f70b64d4276bb4a3b2f6c4d4147f9944291e92fd36a"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.10.0/tg-spam_v1.10.0_linux_arm.tar.gz"
      sha256 "f7d30906f657b4c4bd67c73dbfbd719d30715e22f2f7707cfe799edb28e33768"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.10.0/tg-spam_v1.10.0_linux_arm64.tar.gz"
      sha256 "94c64605934cc71b398bf73659f3e8bd2c8058176d3e580d2668954c5ccc9ad4"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.10.0/tg-spam_v1.10.0_linux_x86_64.tar.gz"
      sha256 "4d3b8b83c8a55dcd227bdc7283a1028ec085e9af547564c6da81e28fe629f03c"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
