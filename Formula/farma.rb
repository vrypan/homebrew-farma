# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Farma < Formula
  desc "farma is a Farcaster notification server."
  homepage "https://github.com/vrypan/farma"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vrypan/farma/releases/download/v0.4.1/farma_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "efb77dd0dafb3d1cda495dff1abb2c6cf0c2f00b58e6732c992039da91326e72"

      def install
        bin.install "farma"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vrypan/farma/releases/download/v0.4.1/farma_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "23e7bf252d467ef01fe7c8cef9f57ad6777fc2bda348dc2a34fe483b7c5ec85a"

      def install
        bin.install "farma"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/farma/releases/download/v0.4.1/farma_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "86f818bb2ea46476a69665f07543224646e2a56fae28ecb4a764350893e39c7a"

        def install
          bin.install "farma"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/farma/releases/download/v0.4.1/farma_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "787448fb9e08002cc8c0cf4dc77192339872516109a28415ad8f820a30a956ec"

        def install
          bin.install "farma"
        end
      end
    end
  end

  def caveats
    <<~EOS
      farma --help
    EOS
  end

  test do
    system "#{bin}/farma version"
  end
end
