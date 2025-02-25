# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Farma < Formula
  desc "farma is a Farcaster notification server."
  homepage "https://github.com/vrypan/farma"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vrypan/farma/releases/download/v0.3.1/farma_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "2daf62e506f389c300403a5ce7d4753b4630804b4a9406a3f9c22ca2c3576a4d"

      def install
        bin.install "farma"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vrypan/farma/releases/download/v0.3.1/farma_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "077306a614fe9ac90e98b15d4a4b2d5a54c9c461f8cfdd5c60c9450fc6193505"

      def install
        bin.install "farma"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/farma/releases/download/v0.3.1/farma_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "0b934104e697353ee2c76f80ad83e7e4e5188829f8e45a5af3640d1fcbd59fd1"

        def install
          bin.install "farma"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/farma/releases/download/v0.3.1/farma_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "d0312f42462f8d6da146f7cca8cf8f05e94c790e0cf59a33bf9a17ff4cb54d1e"

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
