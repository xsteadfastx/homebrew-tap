# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class WgQuicker < Formula
  desc ""
  homepage "https://git.xsfx.dev/xsteadfastx/wg-quicker"
  version "0.3.5"
  bottle :unneeded
  depends_on :linux

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/xsteadfastx/wg-quicker/releases/download/v0.3.5/wg-quicker_0.3.5_linux_amd64.tar.gz"
    sha256 "8b921be421f573708a6715cc457a8402301d9f169554854c610b5056f7753d6d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/xsteadfastx/wg-quicker/releases/download/v0.3.5/wg-quicker_0.3.5_linux_armv6.tar.gz"
    sha256 "5dddbbf256f206c7f5053eba484e0944fbaecd5330ade2cddd266018dd9e4dac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/xsteadfastx/wg-quicker/releases/download/v0.3.5/wg-quicker_0.3.5_linux_arm64.tar.gz"
    sha256 "46f75f6a2f02d9afeade7fcf96746c3bdcb044e88a2c166c52062959be269996"
  end

  def install
    bin.install "wg-quicker"
  end

  test do
    system "#{bin}/wg-quicker version"
  end
end
