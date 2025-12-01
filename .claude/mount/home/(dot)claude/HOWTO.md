# TLDR

1) copy paste repo
2) remove .git in project root, `git init` new project
3) spin up Dev Container in VS Code
4) run...

```bash
npm install -g @anthropic-ai/claude-code
claude migrate-installer
```

5) Start a new terminal and you're good to go!

---

# How To Setup This Repo

**Claude Code -- Dev Container Setup -- Persistent Login**

> **Warning:** Always add `<project repo>/.claude/mount/` to your `.gitignore`  
> It contains your Claude Code login information & authentication tokens.

## 1. Setup Persistent Storage Folder

We'll setup a folder in the host machine to store our Claude Code install and settings. That way if we rebuild or restart our Dev Container / Docker Image, we won't have to re-login every time.

**How it works:**

Host machine repo:
```
<project repo>/.claude/mount/home/(dot)claude/
```

becomes this in the Debian container (via a Docker "bind mount"):
```
~/.claude/
```

**Configure via:**
```
<project repo>/.devcontainer/devcontainer.json > "mounts" key
```

## 2. Configure ~/.bashrc

**2a)** Ensure this `.bashrc` in the host is bind mounted to `~/.bashrc`

**2b)** Ensure it sets:
```bash
export CLAUDE_CONFIG_DIR=/home/<your main login user>/.claude
```

## 3. Reopen Project in Dev Container

Reopen your VS Code project in a Dev Container (it'll automatically build / spin up a container if needed)

## 4. Run Installation Commands

Run these bash commands inside the container:

```bash
npm install -g @anthropic-ai/claude-code
claude migrate-installer
```

## 5. Reload and Finish

Reload your terminal or run `source ~/.bashrc`, and you're good to go!

Even if you rebuild the container, you'll still be logged in.