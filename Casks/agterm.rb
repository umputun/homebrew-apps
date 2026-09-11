# Source-of-truth Homebrew cask for agterm. scripts/release.sh seeds this into
# umputun/homebrew-apps (Casks/agterm.rb) on first publish and rewrites the
# version + sha256 lines on every release.
cask "agterm" do
  version "0.29.1"
  sha256 "a703fc4da26014b1ab156bab7a134d0e893e6299422d9bec21024fa97a4b9ef5"

  url "https://github.com/umputun/agterm/releases/download/v#{version}/agterm-#{version}.dmg"
  name "agterm"
  desc "Terminal on libghostty with a workspace/session sidebar"
  homepage "https://github.com/umputun/agterm"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "agterm.app"
  binary "#{appdir}/agterm.app/Contents/MacOS/agtermctl", target: "agtermctl"

  # strip Homebrew's com.apple.quarantine so brew install/upgrade opens with no
  # "downloaded from the internet" prompt. the app is Developer ID signed, notarized,
  # and stapled, but that only removes the unidentified-developer block and the online
  # check - Gatekeeper still shows the first-launch confirm whenever the quarantine attr
  # is present, and brew re-stamps it on every fresh bundle.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/agterm.app"]
  end

  zap trash: [
    "~/Library/Application Support/agterm",
    "~/Library/Preferences/com.umputun.agterm.plist",
    "~/Library/Saved Application State/com.umputun.agterm.savedState",
  ]
end
