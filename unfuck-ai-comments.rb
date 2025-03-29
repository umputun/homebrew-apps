# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class UnfuckAiComments < Formula
  desc "unfuck-ai-comments is a tool that converts all comments inside Go functions to lowercase"
  homepage "https://unfuck-ai-comments.umputun.dev"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/unfuck-ai-comments/releases/download/v0.9.1/unfuck-ai-comments_v0.9.1_macos_x86_64.tar.gz"
      sha256 "892af199f610a78136ac037e175461d8cc61e3ac041f259450856d194190e3ad"

      def install
        bin.install "unfuck-ai-comments"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/unfuck-ai-comments/releases/download/v0.9.1/unfuck-ai-comments_v0.9.1_macos_arm64.tar.gz"
      sha256 "fd11c2e0a92ae028f22ed061f21dd653f10e85416142a4679bada6ebaf04abbe"

      def install
        bin.install "unfuck-ai-comments"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/unfuck-ai-comments/releases/download/v0.9.1/unfuck-ai-comments_v0.9.1_linux_x86_64.tar.gz"
      sha256 "3d8016f52d8802a65ab422e44a784f8d76254ef76e52e7127c2536f2d16a7e5f"

      def install
        bin.install "unfuck-ai-comments"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/unfuck-ai-comments/releases/download/v0.9.1/unfuck-ai-comments_v0.9.1_linux_arm.tar.gz"
      sha256 "0ec2bd2d6c1f2e943fbf032ce561c4b7bb4877070d87ca0387091e25f8fecc5c"

      def install
        bin.install "unfuck-ai-comments"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/unfuck-ai-comments/releases/download/v0.9.1/unfuck-ai-comments_v0.9.1_linux_arm64.tar.gz"
      sha256 "ea47a8aa274cfa9166d169b7f623f3c2fe6ab32b7c4aab5307cb8e47363784ae"

      def install
        bin.install "unfuck-ai-comments"
      end
    end
  end
end
