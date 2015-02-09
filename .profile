# Usage:
#   `git-pull-all` to pull all your local branches from origin
#   `git-pull-all remote` to pull all your local branches from a named remote

function git-pull-all() {
    START=$(git symbolic-ref --short -q HEAD);
    for branch in $(git branch | sed 's/^.//'); do
        git checkout $branch;
        git pull ${1:-origin} $branch || break;
    done;
    git checkout $START;
};

function git-push-all() {
    git push --all ${1:-origin};
};

