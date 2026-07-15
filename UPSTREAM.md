# Upstream maintenance

Lumen TV Browser is derived from [TV Bro](https://github.com/truefedex/tv-bro).

The fork intentionally keeps the original Kotlin package namespace and source layout so upstream updates remain reviewable. Distribution identity is isolated through a new application ID, name, artwork, version line, repository links, and release process.

## Syncing upstream

```bash
git remote add upstream https://github.com/truefedex/tv-bro.git
git fetch upstream
git switch master
git merge --no-ff upstream/master
```

After merging, verify that the Lumen application ID, branding assets, About attribution, disabled upstream updater, and CI workflow are still intact.
