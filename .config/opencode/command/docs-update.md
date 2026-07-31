---
description: Update the local reference codebases
---

Update all linked local codebases to their latest upstream versions.

Run this command:

```bash
/run/media/hbt/work/01-better-agents-codebases/scripts/update.sh
```

The script updates:

- Effect: `/run/media/hbt/work/01-better-agents-codebases/resources/effect`
- Svelte docs: `/run/media/hbt/work/01-better-agents-codebases/resources/svelte.dev`
- OpenCode: `/run/media/hbt/work/01-better-agents-codebases/resources/opencode`

If a pull fails because of local changes or divergent history, stop and ask the user how to proceed.
