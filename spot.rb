# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spot < Formula
  desc "Spot (aka simplotask) is a powerful and easy-to-use tool for effortless deployment and configuration management."
  homepage "https://simplotask.com/"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/umputun/spot/releases/download/v1.5.0/spot_v1.5.0_macos_arm64.tar.gz"
      sha256 "16d2120bca1803b1932e070fbe4d9c7536a6433891a73f08482d854bf49b33a8"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/spot/releases/download/v1.5.0/spot_v1.5.0_macos_x86_64.tar.gz"
      sha256 "11b6eefe226fb1788e1c81c09ff6a746c8334cf4727d38c2a62b7b4de9529c32"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/spot/releases/download/v1.5.0/spot_v1.5.0_linux_arm.tar.gz"
      sha256 "bb23abdcc78e6e960c839b76daa7bb6c94c373a040613ecc1ebfc7c85292dfbf"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/umputun/spot/releases/download/v1.5.0/spot_v1.5.0_linux_x86_64.tar.gz"
      sha256 "88885084ac2e1719280b0c9b44c5323ba963a4bcf92a2cdcf0ffcfb27f69985d"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/umputun/spot/releases/download/v1.5.0/spot_v1.5.0_linux_arm64.tar.gz"
      sha256 "b65eb7140b69b7957e223b81a8c0391345aa8684a436e2cd17fe5116a8cc8fdd"

      def install
        bin.install "spot"
        bin.install "spot-secrets"
      end
    end
  end
end
