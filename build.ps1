# Set environment variables to skip TypeScript check
$env:SKIP_TYPE_CHECK = 'true'
$env:NEXT_SKIP_TYPE_CHECK = 'true'

# Run NextJS build with TypeScript checking disabled
npx --no-install next build --no-lint

# Output the result
if ($LASTEXITCODE -eq 0) {
    Write-Host "Build completed successfully!" -ForegroundColor Green
} else {
    Write-Host "Build failed with exit code $LASTEXITCODE" -ForegroundColor Red
} 