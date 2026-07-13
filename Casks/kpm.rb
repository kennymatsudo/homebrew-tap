cask "kpm" do
  version "0.10.16"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/kennymatsudo/kpm/releases/download/v#{version}/kpm-#{version}-arm64-mac.zip"
  name "KPM - Planning Workbench"
  desc "Codebase-aware planning workbench for developers"
  homepage "https://github.com/kennymatsudo/kpm"

  depends_on macos: :any
  depends_on arch: :arm64

  app "KPM - Planning Workbench.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/KPM - Planning Workbench.app"]
  end

  zap trash: [
    "~/Library/Application Support/KPM - Planning Workbench",
    "~/Library/Preferences/com.klaviyo.kpm.plist",
  ]
end
