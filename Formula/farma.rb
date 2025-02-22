# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Farma < Formula
  desc "farma is a Farcaster notification server."
  homepage "https://github.com/vrypan/farma"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vrypan/farma/releases/download/v0.2.1/farma_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "abf49256a0de5ebbf32adc3dfd5baec2fd3c5b1f6f7718eab889cc0606190c9c"

      def install
        bin.install "farma"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vrypan/farma/releases/download/v0.2.1/farma_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "f3ac2e7b9c0c16e2b2dc16882afad4708d95b9104fca9d456e585647fb8b5308"

      def install
        bin.install "farma"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/farma/releases/download/v0.2.1/farma_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "5a39b4840edcbcd3c0cf78f637a7031bc83d8e260ab80a8db63e1c6eb4d778e5"

        def install
          bin.install "farma"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/farma/releases/download/v0.2.1/farma_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "b9466fb564888b4543f83b2c4fd6cf3e177cdd596ee450839f0afec0d69dd0e6"

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
