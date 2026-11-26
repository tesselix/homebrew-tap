# SPDX-FileCopyrightText: 2026 Sagi Forbes Nagar
# SPDX-License-Identifier: BSD-2-Clause
#
# Written by gtty's release workflow from packaging/homebrew/gtty.rb.in in
# tesselix/gtty; change it there, not here.
cask "gtty" do
  version "1.16.9"
  sha256 "ed7ded99b00ea71879b3df8c67e474c1050ee0b0f012a72011f534b31c9ddccd"

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
