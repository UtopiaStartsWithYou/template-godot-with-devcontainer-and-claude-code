# Makefile

.PHONY: git_history_stop_tracking git_history_start_tracking

git_history_stop_tracking:
	@echo "Stopping git tracking of .bash_history..."
	@git update-index --skip-worktree .devcontainer/mount/home/.bash_history
	@echo "✓ .bash_history will no longer appear in git status/diffs"

git_history_start_tracking:
	@echo "Resuming git tracking of .bash_history..."
	@git update-index --no-skip-worktree .devcontainer/mount/home/.bash_history
	@echo "✓ .bash_history is now tracked again"
