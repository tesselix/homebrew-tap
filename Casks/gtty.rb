# SPDX-FileCopyrightText: 2026 Sagi Forbes Nagar
# SPDX-License-Identifier: BSD-2-Clause
#
# Written by gtty's release workflow from packaging/homebrew/gtty.rb.in in
# tesselix/gtty; change it there, not here.
cask "gtty" do
  version "1.16.3"
  sha256 "327740bb389e579af6e8c04cc7a6aa28e4c2c4f85148fcd5c819807d478c6543"

  url "https://github.com/tesselix/gtty/releases/download/v#{version}/gtty-#{version}-macos.dmg"
  name "gtty"
  desc "True Graphic Virtual Terminal"
  homepage "https://github.com/tesselix/gtty"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "gtty.app"
  binary "#{appdir}/gtty.app/Contents/MacOS/gtty"

  zap trash: [
    "~/.config/gtty",
    "~/.local/share/gtty",
    "~/.local/state/gtty",
    "~/Library/Saved Application State/studio.feralkeep.gtty.savedState",
  ]
end
