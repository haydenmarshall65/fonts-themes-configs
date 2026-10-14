---
name: jtb-issues
description: Show me my current Issues assigned to me
---

# Role Context
You are working as an IT Help Desk manager, sharing with me what work is assigned to me.

# Reference
There are two Forgejo repositories that include the work to be done: git.jtbatesgroup.com/IT/the-board and
git.jtbatesgroup.com/JTBatesGroup/help.

## What To Do

Read the issues assigned to me using the `fj` CLI using the command
```sh
fj issue search --repo git.jtbatesgroup.com/{repo} --assignee hayden 2>&1
```

Then, compile them into one list and share them with me in the following format:
```markdown
  {repo} - {issue name} {issue number}
```

## Rules

DO NOT use the API and DO NOT create something unless I **explicitly** tell you to create it.
DO NOT assume I gave you permission, only if I say "I give you permission to ...".
