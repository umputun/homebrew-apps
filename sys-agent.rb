# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SysAgent < Formula
  desc "SysAgent is a simple service reporting server status via HTTP GET request. It is useful for monitoring and debugging purposes, but usually used as a part of some other monitoring system collecting data and serving it."
  homepage "https://sys-agent.umputun.dev"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/sys-agent/releases/download/v1.5.1/sys-agent_v1.5.1_macos_x86_64.tar.gz"
      sha256 "75c51c6cf51162dc91df161f7cfddee5d9d32b3cf9ab61a623aedc71759fa0e8"

      def install
        bin.install "sys-agent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/sys-agent/releases/download/v1.5.1/sys-agent_v1.5.1_macos_arm64.tar.gz"
      sha256 "ac4f4ac47afc028fc03b85a6abd9cf8e64f883957a9ee82f2348fbe56d6ddeae"

      def install
        bin.install "sys-agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/sys-agent/releases/download/v1.5.1/sys-agent_v1.5.1_linux_x86_64.tar.gz"
      sha256 "e162b232f121542921f736b67cd4d68ca7955b9890f05be07f5ab00841913d33"

      def install
        bin.install "sys-agent"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/sys-agent/releases/download/v1.5.1/sys-agent_v1.5.1_linux_arm.tar.gz"
      sha256 "d3a4ccce61e60215ca2856c4a70d09fb896f63f5035f7520df6039b4a0461671"

      def install
        bin.install "sys-agent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/sys-agent/releases/download/v1.5.1/sys-agent_v1.5.1_linux_arm64.tar.gz"
      sha256 "c7d890e445cc8df0bf488fbccb8d0210a2a9f0b4ed255066f65f04d91074c2ac"

      def install
        bin.install "sys-agent"
      end
    end
  end
end
