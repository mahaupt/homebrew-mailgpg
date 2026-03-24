# This file is the initial template for the mahaupt/homebrew-mailgpg tap.
# Copy it to: mahaupt/homebrew-mailgpg/Casks/mailgpg.rb
# Version and sha256 are updated automatically by the release GitHub Action.

cask "mailgpg" do
  version "0.1.4"
  sha256 "1d93d2d1cadfd2f86e9ea1e957015fecd8925b75215c1b2e8a4e40c6b1eae79e"

  url "https://github.com/mahaupt/mailgpg/releases/download/v#{version}/MailGPG-#{version}.dmg"
  name "MailGPG"
  desc "Native macOS Mail extension for GPG email encryption and signing"
  homepage "https://github.com/mahaupt/mailgpg"

  # Minimum macOS version for Mail extensions
  depends_on macos: ">= :monterey"

  # GPG binary and GUI-compatible pinentry are required for all operations
  depends_on formula: "gnupg"
  depends_on formula: "pinentry-mac"

  app "MailGPG.app"

  caveats <<~EOS
    To finish setup:
      1. Open MailGPG once — it registers itself as a login item automatically.
      2. Enable the Mail extension:
           System Settings → Privacy & Security → Extensions → Mail Extensions → MailGPG ✓
      3. Restart Mail if it was already open.
  EOS
end
