# Contributing to SQL Fix Lab

Thanks for helping! Follow these steps in order. Replace the words in `<angle brackets>` with your own values, without the brackets.

## 1. Claim an issue

1. Open the **Issues** tab of this repository.
2. Pick an open issue that nobody has claimed yet, for example *Fix errors in 06_where_and_or.sql*. (`00_demo.sql` is reserved for the maintainer.)
3. Comment on it: **"I'd like to work on this."**
4. Wait for the maintainer to assign it to you. One person per file, please.

## 2. Fork the repository

Click **Fork** (top right of this page), then **Create fork**. You now have your own copy at `github.com/<your-username>/sql-fix-lab`.

## 3. Clone your fork

Make sure you're cloning **your fork**, not the original repository.

```bash
git clone https://github.com/<your-username>/sql-fix-lab.git
cd sql-fix-lab
```

Link the original repository as `upstream`, so you can pull in other people's changes later:

```bash
git remote add upstream https://github.com/<maintainer-username>/sql-fix-lab.git
git remote -v
```

You should see `origin` (your fork) and `upstream` (the original).

## 4. Create a branch

Never work directly on `main`. Name the branch after your file:

```bash
git checkout -b fix/06-where-and-or
```

## 5. Fix the file

Open your file in `queries/` and fix the errors. Every file has **2 mistakes**: things like spelling mistakes, a missing `=` sign, a missing `;`, quote mark or bracket.

Rules:

- Fix the bugs. **Don't delete queries** to make the errors go away; the check will fail if a file has fewer than 3 queries.
- Change **only your file**. Don't edit `data/`, `scripts/` or `.github/`.
- Keep the comments that describe each query. They tell you what the query is meant to do.

### Test on your computer (optional but recommended)

In MySQL Workbench, or any MySQL 8 client, run these three files in order:

1. `data/schema.sql` (creates the `shop` database)
2. `data/seed.sql` (adds the sample data)
3. your file in `queries/`

If MySQL shows no errors, you're done. No MySQL? Skip this; the automated check on your pull request will test it for you.

## 6. Commit and push

```bash
git status
git add queries/06_where_and_or.sql
git commit -m "Fix errors in 06_where_and_or.sql"
git push -u origin fix/06-where-and-or
```

Good commit messages say *what* you changed, in the present tense: "Fix AND typo and missing = in 06_where_and_or.sql".

## 7. Open a pull request

1. Go to your fork on GitHub. You'll see a yellow banner: **Compare & pull request**. Click it.
2. Check the top of the page: the **base repository** should be the maintainer's `sql-fix-lab`, branch `main`. The **head repository** should be your fork, with your branch.
3. Fill in the template. Put `Fixes #<issue-number>` in the description, so the issue closes when your pull request is merged.
4. Click **Create pull request**.

## 8. Watch the automated check

Scroll to the bottom of your pull request.

- ⏳ **Waiting for approval**: for first-time contributors, the maintainer has to click *Approve and run*. Just wait.
- ✅ **Passed**: wait for a review.
- ❌ **Failed**: click **Details**, read the MySQL error, fix your file, then commit and push again **to the same branch**. The pull request updates itself and the check reruns. Don't open a new pull request.

## 9. Respond to review

The maintainer may ask for changes. Make them on the same branch, commit, push, and reply to the comment. Once approved, the maintainer merges your pull request. 🎉

## 10. Clean up (after the merge)

```bash
git checkout main
git pull upstream main
git push origin main
git branch -d fix/06-where-and-or
```

Your fork is now up to date with everyone's fixes.
