# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mpt < Formula
  desc "MPT is a command-line utility that sends prompts to multiple AI language model providers in parallel and combines the results"
  homepage "https://github.com/umputun/mpt"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/mpt/releases/download/v0.10.0/mpt_v0.10.0_macos_x86_64.tar.gz"
      sha256 "0e20375873edc17f5bda310dbbe25bf4809d201a30927e2c10236ed2e602ce42"

      def install
        bin.install "mpt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/mpt/releases/download/v0.10.0/mpt_v0.10.0_macos_arm64.tar.gz"
      sha256 "96dce6a72a35391e7f1047f7ca23cd0cb48aef3f94416d63438d2dd72465da81"

      def install
        bin.install "mpt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/mpt/releases/download/v0.10.0/mpt_v0.10.0_linux_x86_64.tar.gz"
      sha256 "e8d20f1e16442448a68b0b450e9b384c41a194d56fccc40c9c8785ffdc3a0155"

      def install
        bin.install "mpt"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/mpt/releases/download/v0.10.0/mpt_v0.10.0_linux_arm.tar.gz"
      sha256 "fa220031feebe3909d4faf08e7002f6f9db1ea3721213151cf7c9efbc5b45cd7"

      def install
        bin.install "mpt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/mpt/releases/download/v0.10.0/mpt_v0.10.0_linux_arm64.tar.gz"
      sha256 "55a33edbe7e141e5424e9736bb08c535029853d328f3765c5060367aa5e0ad6b"

      def install
        bin.install "mpt"
      end
    end
  end
end
