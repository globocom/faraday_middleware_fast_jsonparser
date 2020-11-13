# Contributing

The workflow follows four simple rules:

1. master is always deployable
2. always rebase
3. short-lived branches
4. rebase branch before Merge Request

## Commit Style Guide:

### Template

    type: Capitalized, short summary of changes (no period at the end)

    More detailed explanatory text, if necessary.  Wrap it to about 72
    characters or so.  In some contexts, the first line is treated as the
    subject of an email and the rest of the text as the body.  The blank
    line separating the summary from the body is critical (unless you omit
    the body entirely); tools like rebase can get confused if you run the
    two together.

    Write your commit message in the imperative: "Fix bug" and not "Fixed bug"
    or "Fixes bug." This convention matches up with commit messages generated
    by commands like git merge and git revert.

    Further paragraphs come after blank lines.

    - Bullet points are okay, too

    - Typically a hyphen or asterisk is used for the bullet, followed by a
      single space, with blank lines in between, but conventions vary here

    - Use a hanging indent

    Tags: refactor,or-any-other-comma-separated-tag
    Issue: or reference to an issue

### Types

- feature: Change behavior, interface or adds new functionality
- fix: Fix bugs
- doc: Change to documentation, README, CHANGELOG etc
- style: Format, missing semi colons, changes in whitespace, coding style in general
- refactor: Refactor production code, no functionality or behavior change
- test: Add missing tests, refactoring tests; no production code change
- chore: Update gems; no production code change

Check the existing commits for examples of each type.

### Examples

    feature: Add search videos page
    fix: Stop ignoring keywords when searching
    doc: Add examples to the contributing guide
    style: Remove empty line
    refactor: Move related methods close together
    test: Add scenario for parser with options
    chore: Remove hardcoded port in favor of $PORT

### References

- <http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html>
- <http://karma-runner.github.io/0.10/dev/git-commit-msg.html>
- <https://github.com/agis-/git-style-guide>


## Visual changes:

When opening a merge request that contains visual changes, it is recommended to add an image or a GIF of the change.
Giphy Capture can be used: <https://giphy.com/apps/giphycapture> 
