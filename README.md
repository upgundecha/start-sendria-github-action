# Sendira SMTP Server Action

Run Marcin Sztolcman's [Sendria](https://github.com/msztolcman/sendria) SMTP server in your GitHub Actions. Sendria can be used as a fake smtp server to catch and test emails from the application in testing workflows.

## Inputs

## `smtp-port`

**Optional** The smtp port. Default `1025`.

## `http-port`

**Optional** The http port for UI and API. Default `1080`.

## `sendria-version`

**Optional** The Sendria docker image version. Default `v2.2.2.0`. 

## Example usage

```
uses: upgundecha/start-sendria-github-action@v1.0.0
with:
  smtp-port: 1025
  http-port: 1080
```