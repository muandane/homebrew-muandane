# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goji < Formula
  desc ""
  homepage "https://github.com/muandane/homebrew-tap"
  version "0.1.0"

  depends_on "git"

  on_macos do
    url "https://github.com/muandane/goji/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "00b95d773b16cd0dbe7e044062635aaf2a6f852322c506279cdae2eb91f8b307"

    def install
      bin.install "goji"
      bash_completion.install "completions/goji.bash" => "goji"
      zsh_completion.install "completions/goji.zsh" => "_goji"
      fish_completion.install "completions/goji.fish"
      man1.install "manpages/goji.1.gz"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/muandane/goji/releases/download/v0.0.8/goji_v0.0.8_Linux_x86_64.tar.gz"
      sha256 "0317d4ee8787074c8f18ebf88985c473f288434653ec1a97fbd501f1bba51b61"

      def install
        bin.install "goji"
        bash_completion.install "completions/goji.bash" => "goji"
        zsh_completion.install "completions/goji.zsh" => "_goji"
        fish_completion.install "completions/goji.fish"
        man1.install "manpages/goji.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/muandane/goji/releases/download/v0.0.8/goji_v0.0.8_Linux_arm64.tar.gz"
      sha256 "103999ca7be906a4c952747d1060b8d208c883043fec39680c0574a54094501f"

      def install
        bin.install "goji"
        bash_completion.install "completions/goji.bash" => "goji"
        zsh_completion.install "completions/goji.zsh" => "_goji"
        fish_completion.install "completions/goji.fish"
        man1.install "manpages/goji.1.gz"
      end
    end
  end
end
