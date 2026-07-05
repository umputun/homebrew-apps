# Source-of-truth Homebrew cask for agterm. scripts/release.sh seeds this into
# umputun/homebrew-apps (Casks/agterm.rb) on first publish and rewrites the
# version + sha256 lines on every release.
cask "agterm" do
  version "0.7.1"
  sha256 "50aee83ac966bb03cdfa9fb9b8debd3bde39d52d2176fd8028e26ee7cb33dcac"

  url "https://github.com/umputun/agterm/releases/download/v#{version}/agterm-#{version}.dmg"
  name "agterm"
  desc "Native macOS terminal on libghostty with a workspace/session sidebar"
  homepage "https://github.com/umputun/agterm"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "agterm.app"
  binary "#{appdir}/agterm.app/Contents/MacOS/agtermctl", target: "agtermctl"

  # interim: agterm is ad-hoc signed but not yet Apple-notarized, so first launch
  # would hit a Gatekeeper block. Strip the quarantine xattr on install so the app
  # opens with no prompt. Remove this once notarized releases ship.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/agterm.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/agterm",
    "~/Library/Preferences/com.umputun.agterm.plist",
    "~/Library/Saved Application State/com.umputun.agterm.savedState",
  ]
end
