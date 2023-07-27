# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spot < Formula
  desc "Spot (aka simplotask) is a powerful and easy-to-use tool for effortless deployment and configuration management."
  homepage "https://simplotask.com/"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/umputun/spot/releases/download/v1.10.0/spot_v1.10.0_macos_x86_64.tar.gz"
      sha256 "ca9ced8ac04922ccbf91058c1413262b55d6fff6f13468e54962af4006a95a5b"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/umputun/spot/releases/download/v1.10.0/spot_v1.10.0_macos_arm64.tar.gz"
      sha256 "970353bd7d4cd1f7f60f755917fcfe3e4e1f5d94dc283931feac44cfcf80a6b8"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/spot/releases/download/v1.10.0/spot_v1.10.0_linux_arm.tar.gz"
      sha256 "0a42d15b027ca32d55f8d33738092493a8040cd789a5383f011c99995f455117"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/spot/releases/download/v1.10.0/spot_v1.10.0_linux_x86_64.tar.gz"
      sha256 "8ae32c23913dcce7cb702412a8cb2870282bd4b01550a196c7fceb68c11ba675"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/spot/releases/download/v1.10.0/spot_v1.10.0_linux_arm64.tar.gz"
      sha256 "c62f5557e2883dfb1a7f754675724e8aea8c76cdf111621d56175d1bdb726310"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
  end
end
