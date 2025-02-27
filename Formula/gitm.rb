# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitm < Formula
  desc "Git Manager CLI tool"
  homepage "https://github.com/alexDouze/git-manager"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alexDouze/git-manager/releases/download/v0.0.2/gitm_0.0.2_darwin_amd64"
      sha256 "d0ac306d902edd18fefca546c93a83bdf6680161c3a7947466f91a904e95083b"

      def install
        bin.install "gitm_0.0.2_darwin_amd64" => "gitm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/alexDouze/git-manager/releases/download/v0.0.2/gitm_0.0.2_darwin_arm64"
      sha256 "d64ee61197ab119274cdbf7836be1e0c4f2f8b5bd4cd6570edfd981b28df6e5f"

      def install
        bin.install "gitm_0.0.2_darwin_arm64" => "gitm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/alexDouze/git-manager/releases/download/v0.0.2/gitm_0.0.2_linux_amd64"
        sha256 "85392d5e2a5a072e66185598e90c5d5f4e9554c4b01d8a364dc63c62627aaf3e"

        def install
          bin.install "gitm_0.0.2_linux_amd64" => "gitm"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/alexDouze/git-manager/releases/download/v0.0.2/gitm_0.0.2_linux_arm64"
        sha256 "2819d32349ff3604cd86ded6ebbbc4e8859a4540682d80245450b43d143ebf84"

        def install
          bin.install "gitm_0.0.2_linux_arm64" => "gitm"
        end
      end
    end
  end

  test do
    system "#{bin}/gitm", "version"
  end
end
