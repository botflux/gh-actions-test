commit="$(git log -n 2 --pretty=format:%H -- CHANGELOG.md | tail -n +2)"

echo "commit: $commit"

changes="$(git diff $commit HEAD -- CHANGELOG.md | sed -n '/^diff/,/^diff/p' | grep "+" | tail -n +6 | awk '{print substr($0, 2)}')"

echo "changes: $changes"