# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.6.1/tg-spam_v1.6.1_macos_x86_64.tar.gz"
      sha256 "78b929fd444b2f904bbab807733cbeed5d245057fb6541f7f389fe335049c419"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.6.1/tg-spam_v1.6.1_macos_arm64.tar.gz"
      sha256 "d7e5f497c3057f9322ba68c6df982418bb85b46d32903950a5b1e729ef148b57"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.6.1/tg-spam_v1.6.1_linux_arm.tar.gz"
      sha256 "6b56652a668d42bfde232f3dd85ebbed2a7762e65b750d926e62746fa130a80c"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.6.1/tg-spam_v1.6.1_linux_arm64.tar.gz"
      sha256 "300b9ea3bab2f7c475180e6cf288f16850fed57364eeb640c90c3138f2369aae"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.6.1/tg-spam_v1.6.1_linux_x86_64.tar.gz"
      sha256 "a42b59e9ce55eed59aeb91821e171ca4f028e4089d4a49313edeefce365d70ff"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
