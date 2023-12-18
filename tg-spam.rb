# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TgSpam < Formula
  desc "tg-spam is a self-hosted Telegram bot fighting spam like no tomorrow."
  homepage "https://tg-spam.umputun.dev"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.2.3/tg-spam_v1.2.3_macos_x86_64.tar.gz"
      sha256 "5e3840f0cac67afaa11e4ffb6af2a065169acdcffe2b55f73d37d809e2427ed9"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/tg-spam/releases/download/v1.2.3/tg-spam_v1.2.3_macos_arm64.tar.gz"
      sha256 "dcdf4389b7f1c6859fe926a622af5703acf439fff94e4585204834c8217ba723"

      def install
        bin.install "tg-spam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.2.3/tg-spam_v1.2.3_linux_arm64.tar.gz"
      sha256 "be8c5258209d9004db416e498dff798ee881a245105888442f57eddf82852046"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/tg-spam/releases/download/v1.2.3/tg-spam_v1.2.3_linux_x86_64.tar.gz"
      sha256 "6f2c41f60ba7b40418b394e21d904f952eea339ded5770dce28c3a322f8cce1f"

      def install
        bin.install "tg-spam"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/tg-spam/releases/download/v1.2.3/tg-spam_v1.2.3_linux_arm.tar.gz"
      sha256 "9f117cf8a03b2d6b46231a4f8a230c180dc557216f0616a0d4f48aa2eb40e009"

      def install
        bin.install "tg-spam"
      end
    end
  end
end
