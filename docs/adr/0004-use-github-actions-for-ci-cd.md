# 4. Use Github Actions for CI/CD

Date: 2020-08-25

## Status

Accepted

## Context

We wish to make use of CI/CD tooling for automation around validation of changes (testing, linting etc) as well as automation of deployment.

It is beneficial for us to use as few dependencies as possible to minimise the complexity of this project, ideally we also want to make use of tooling that fits well within our mono-repo structure (ie. tooling should be configurable via code / DSL).

## Decision

We will make use of [Github Actions](https://docs.github.com/en/actions) as our CI/CD tooling.

## Consequences

Github actions should be used as our tooling for CI/CD.

Configuration will live inside this repository within the [workflows](.github/workflows) directory.
