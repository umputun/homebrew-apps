# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.8.0/tg-spam_v1.8.0_macos_arm64.tar.gz"
      sha256 "f45a8ad8407e8b490d35d48f591c67ff61fcaf0e6bd143aeed3d701e979234be"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.8.0/tg-spam_v1.8.0_macos_x86_64.tar.gz"
      sha256 "8c550a58b1c856c89d38ca693f857faea83387b03b82942b3343071293b67bb8"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.8.0/tg-spam_v1.8.0_linux_arm64.tar.gz"
      sha256 "e25a0f51bad58ba92197553f0ec8b9163b299abbc45d7049f254a777ba9214b2"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.8.0/tg-spam_v1.8.0_linux_x86_64.tar.gz"
      sha256 "0ef72282469779400aa1eced49aa3bf58bf1bf8a6650111cbf7c6c68175e8f63"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.8.0/tg-spam_v1.8.0_linux_arm.tar.gz"
      sha256 "f062e427870ce007fdb8b254783ef51824a24a06e0489c9b5a311c0a7b73d3ac"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
