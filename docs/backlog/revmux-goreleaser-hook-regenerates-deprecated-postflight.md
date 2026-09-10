---
worth: later
where: Casks/revmux.rb:36
added: 2026-09-06
---
# revmux goreleaser hook regenerates the deprecated postflight stanza

PR #5 moved Casks/revmux.rb to `postflight_steps`, but the file is GoReleaser output, and the v0.2.2
release put the deprecated block back exactly as predicted. Casks/revmux.rb here is hand-fixed again so
brew stops warning on install and upgrade today.

The recurrence is fixed at the source, pushed to umputun/revmux as c907610 but not yet released, so
the hand-fix here is what holds until v0.2.3 regenerates the file. `.goreleaser.yml` no longer uses
`homebrew_casks[].hooks.post.install`, which GoReleaser always wraps in `postflight do`; the stanza is
now a `custom_block`:

```yaml
custom_block: |
  postflight_steps do
    on_macos do
      run "/usr/bin/xattr",
          args: ["-dr", "com.apple.quarantine", "{{ `{{staged_path}}` }}/revmux"]
    end
  end
```

`custom_block` is **not** copied verbatim. GoReleaser runs its own template pass over the assembled
cask and then sanitizes whitespace, so the backtick escape around `{{staged_path}}` is what stops that
pass resolving a Homebrew token as a GoReleaser one. Do not simplify it — the rendered cask carries
`{{staged_path}}` only because of it.

Verified by snapshot render plus a real `brew install` of a probe cask carrying that output: no
deprecation warning, `com.apple.quarantine` stripped, binary runs. The one cost is placement —
`custom_block` is emitted right after `cask "revmux" do`, before `version`, so `brew style` reports
Cask/StanzaOrder offenses. Presentation only: Homebrew orders artifacts by the fixed `sort_order` list
in `cask/artifact/abstract_artifact.rb` rather than by where a stanza sits, so `binary` still links
before the postflight runs. Nothing audits the file either — revmux's release workflow has no audit
step and this tap has no workflow at all.

Upstream GoReleaser PR 6873 (issue 6870) adds a proper `hooks.post.install_steps` and a
`{{ .StagedPath }}` template field. It is still open with no milestone. Switching to it once it ships
would fix the stanza order too, but is not needed for the warning.

Done when revmux v0.2.3 regenerates Casks/revmux.rb here with `postflight_steps` intact.

The agterm cask is not exposed: agterm's release script edits only version and sha256 in place, and it
copies packaging/agterm.rb only when the cask is absent. That seed has been brought in line with this
cask, so a delete-and-reseed no longer reintroduces the old `postflight` and the platform-naming desc.
