# Homey App Translate

This GitHub Action will translate the current Homey app using OpenAI.

## Inputs

### openai_api_key

An OpenAI API Key. You can create an API Key on https://platform.openai.com/api-keys.

## Example usage

The workflow has to be created on GitHub or checked in to the folder `.github/workflows` on the ***default*** branch, in order to be manually triggered.

```YAML
name: Translate Homey App

on:
  workflow_dispatch:

jobs:  
    main:
      name: Translate App
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v3
        - name: Translate Homey App 
          uses: athombv/github-action-homey-app-translate@master
          with:
            openai_api_key: ${{ secrets.OPENAI_API_KEY }}

        - name: Commit, Push & Create Pull Request
          env:
            GH_TOKEN: ${{ github.token }}
          run: |
            git config --local user.email "sysadmin+githubactions@athom.com"
            git config --local user.name "Homey Github Actions Bot"
            
            git checkout -b feature/openai-translations
            
            git add -A
            git commit -m "Automatic translations with OpenAI"
            git push --set-upstream origin feature/openai-translations

            gh pr create --fill
```