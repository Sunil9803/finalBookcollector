#!/usr/bin/env bash
# Generate 30 empty commits over the last 2 weeks with book-collector-specific messages.

# Array of sample messages for the Book Collector project
messages=(
  "Initialize Book Collector project"
  "Add Book model and schema"
  "Implement book listing view"
  "Fix book detail page layout"
  "Update search functionality"
  "Improve pagination for book list"
  "Add filter by genre feature"
  "Optimize database queries"
  "Refactor book service logic"
  "Write unit tests for book API"
  "Add cover image upload support"
  "Fix cover image rendering"
  "Update README with setup instructions"
  "Enhance UI for book cards"
  "Correct typo in book importer"
  "Add error handling for missing ISBN"
  "Improve responsiveness of book grid"
  "Update dependencies"
  "Clean up unused CSS"
  "Add sample data seeder"
  "Fix merge conflicts in collector module"
  "Adjust styling of search bar"
  "Add tags filtering support"
  "Improve accessibility of details page"
  "Refactor image upload component"
  "Fix warnings in console"
  "Optimize cover image compression"
  "Add logging for API errors"
  "Rename BookController methods"
  "Finalize Book Collector MVP"
)

# Number of commits to generate
count=30

echo "Generating $count book-collector commits spread over the past 2 weeks..."

for i in $(seq 1 $count); do
  # Random day offset (0–13 days)
  day_offset=$((RANDOM % 14))
  # Random time of day
  hour=$((RANDOM % 24))
  minute=$((RANDOM % 60))
  second=$((RANDOM % 60))
  # Build a commit date string
  commit_date=$(date -d "$day_offset days ago $hour:$minute:$second" --iso-8601=seconds)
  # Pick a random message
  msg="${messages[RANDOM % ${#messages[@]}]}"
  # Create an empty commit with the specified date and message
  git commit --allow-empty --date "$commit_date" -m "$msg"
done

echo "Done."
