# Create a note about the fix
$fixMessage = "Removing .babelrc file to fix Vercel deployment issue with next/font"
Set-Content -Path "fix-vercel-note.txt" -Value $fixMessage

# Add the file
git add fix-vercel-note.txt

# Commit the change
git commit -m "Remove .babelrc to fix Vercel deployment"

# Push to GitHub
git push origin master 