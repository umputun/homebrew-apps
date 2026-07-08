# Source-of-truth Homebrew cask for agterm. scripts/release.sh seeds this into
# umputun/homebrew-apps (Casks/agterm.rb) on first publish and rewrites the
# version + sha256 lines on every release.
cask "agterm" do
  version "0.9.0"
  sha256 "6a3409ead3136e964d1436caa93478f3992d67f24b31cf8dde7467c74cf025d1"

  url "https://github.com/umputun/agterm/releases/download/v#{version}/agterm-#{version}.dmg"
  name "agterm"
  desc "Native macOS terminal on libghostty with a workspace/session sidebar"
  homepage "https://github.com/umputun/agterm"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "agterm.app"
  binary "#{appdir}/agterm.app/Contents/MacOS/agtermctl", target: "agtermctl"

  zap trash: [
    "~/Library/Application Support/agterm",
    "~/Library/Preferences/com.umputun.agterm.plist",
    "~/Library/Saved Application State/com.umputun.agterm.savedState",
  ]
end
