---
worth: later
where: Casks/revmux.rb:36
added: 2026-09-06
---
# revmux goreleaser hook regenerates the deprecated postflight stanza

PR #5 moved Casks/revmux.rb to `postflight_steps`, but the file is GoReleaser output. The stanza comes
from `homebrew_casks[].hooks.post.install` in umputun/revmux `.goreleaser.yml`, which GoReleaser wraps in
`postflight do`. The next revmux release rewrites the deprecated block and brew warns again on every
revmux install or upgrade.

GoReleaser cannot translate the Ruby body, so upgrading alone does not fix it. Upstream PR
goreleaser/goreleaser#6873 (issue 6870) adds `hooks.post.install_steps` and a `{{ .StagedPath }}`
template field that expands to `{{staged_path}}`; the legacy `install` hook keeps emitting `postflight`.
Once a GoReleaser release contains that change, switch the revmux config to:

```yaml
hooks:
  post:
    install_steps: |
      on_macos do
        run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{ .StagedPath }}/revmux"]
      end
```

Done when a revmux release regenerates Casks/revmux.rb here with `postflight_steps` intact.

The agterm cask is not exposed: agterm's release script edits only version and sha256 in place. Its
packaging/agterm.rb seed still has the old `postflight` and description, which matters only if the tap
cask is ever deleted and reseeded.
