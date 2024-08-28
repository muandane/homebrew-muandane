# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goji < Formula
  desc "Commitizen-like Emoji Commit Tool written in Go"
  homepage "https://github.com/muandane/homebrew-tap"
  version "0.1.3"

  depends_on "git"

  on_macos do
    url "https://github.com/muandane/goji/releases/download/v0.1.3/goji_v0.1.3_Darwin_all.tar.gz"
    sha256 "6f0a10ff57218b3626b3f7edfd8ce405bfbe92c24a01e1377ad8249ff7cf9f93"

    def install
      bin.install "goji"
      bash_completion.install "completions/goji.bash" => "goji"
      zsh_completion.install "completions/goji.zsh" => "_goji"
      fish_completion.install "completions/goji.fish"
      man1.install "manpages/goji.1.gz"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/muandane/goji/releases/download/v0.1.3/goji_v0.1.3_Linux_x86_64.tar.gz"
        sha256 "03824bc7feb4ced95902ec8a09c8f869452a3aeaaad5395e01dc9ee229d15a1d"

        def install
          bin.install "goji"
          bash_completion.install "completions/goji.bash" => "goji"
          zsh_completion.install "completions/goji.zsh" => "_goji"
          fish_completion.install "completions/goji.fish"
          man1.install "manpages/goji.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/muandane/goji/releases/download/v0.1.3/goji_v0.1.3_Linux_arm64.tar.gz"
        sha256 "442d0bcb0781d8f5a68744308961bdb6f768e5a5baffb24db3f96bf8eb0b61df"

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
end
