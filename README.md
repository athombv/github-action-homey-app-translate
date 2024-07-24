# Homey App Translate

This GitHub Action will translate the current Homey app using OpenAI.

## Inputs

## openai_api_key

An OpenAI API Key. You can create an API Key on https://platform.openai.com/api-keys.

## Example usage

```name: Translate Homey App

on:
  push:
  pull_request:

jobs:  
    main:
      name: Translate Homey App
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v3
        - uses: athombv/github-action-homey-app-translate@master
          with:
            openai_api_key: '...'
```