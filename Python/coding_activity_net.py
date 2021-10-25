from pydriller import Repository
url = ""
for commit in Repository(url).traverse_commits():
    print(commit.hash)