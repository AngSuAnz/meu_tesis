# Build distill site
rmarkdown::render_site()

# Stage all changes
system('git add .')

# Ask for commit message
commit_msg <- readline(prompt = "Commit message: ")

# Commit and push
system(paste('git commit -m', shQuote(commit_msg)))
system('git push')

