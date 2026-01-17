# LeetCode Wrong-Answer Notebook 

This repo is my personal LeetCode **wrong-answer notebook**: after each practice session, I write down what I got wrong, what I learned, and how I would solve it next time (with screenshots when helpful).

## How to read

- **Daily entries** live in `days/YYYY-MM-DD/`.
- Each day contains one or more problem notes like `lc3047.md`.
- Screenshots live next to the note in `days/YYYY-MM-DD/images/` and are referenced with **relative paths** so GitHub renders them.

Start here:
- `days/README.md`

## Recommended workflow (daily)

1. Create today's folder:

```bash
./scripts/new_day.sh
```

2. Add a new problem note (copy from template):

```bash
cp templates/problem.md days/YYYY-MM-DD/lcXXXX.md
```

3. Put screenshots under `days/YYYY-MM-DD/images/` and reference them like:

```md
![Short description](./images/screenshot.png)
```

4. Commit + push (example):

```bash
git add .
git commit -m "Add notes for 2026-01-17"
git push
```

## Folder structure

```
days/
  2026-01-17/
    lc3047.md
    images/
      lc3047.png
templates/
scripts/
```

## Notes

- GitHub renders Markdown + images automatically as long as the image file is committed and the path is correct.
- There is also an older folder naming style like `Jan17th2026/`. Prefer `days/YYYY-MM-DD/` for consistency.

