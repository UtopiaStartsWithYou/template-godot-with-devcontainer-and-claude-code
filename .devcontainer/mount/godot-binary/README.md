# How to Mount Godot Binary into the Devcontainer

> **Note:** Manually download the linux Godot binary and place here, then update the `devcontainer.json` to bind mount it into the Docker Container.

## 1. Download Godot Binary

Download the official `Godot_v4.5-stable_linux.x86_64` binary.

## 2. Place Binary in Mount Directory

Place the binary here:
```
.devcontainer/mount/godot-binary/Godot_v4.5-stable_linux.x86_64
```

## 3. Update devcontainer.json

Update `.devcontainer/devcontainer.json`'s `"mounts": [ .. ]` like this:
```json
// .devcontainer/devcontainer.json
{
	"name": "You've Got Packages - Devcontainer",
	"build": {
		"dockerfile": "Dockerfile"
	},	
	// ..
	"mounts": [
		// ..

		// ---------------------------------------------------------------------------------------------------
		// mount Godot binary
		// ---------------------------------------------------------------------------------------------------
		// "source=${localWorkspaceFolder}/.devcontainer/mount/godot-binary/Godot_v4.4.1-stable_linux.x86_64,target=/usr/local/bin/godot,type=bind,consistency=cached",
		"source=${localWorkspaceFolder}/.devcontainer/mount/godot-binary/Godot_v4.5-stable_linux.x86_64,target=/usr/local/bin/godot,type=bind,consistency=cached"
	]
}
```

## How It Works

This will mount the host machine's:
```
<<You've Got Packages project>>/.devcontainer/mount/godot-binary/Godot_v4.5-stable_linux.x86_64
```

into the devcontainer's `godot` command (regardless of version) by bind mounting it to this location:
```
/usr/local/bin/godot
```

Allowing Claude Code to simply run `godot --headless -s <path-to-scene-or-script>` from any directory.
