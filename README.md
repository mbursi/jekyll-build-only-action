# Jekyll build-only Action

A simple GitHub action to simply build your Jekyll website.
It simply builds the website without publishing it anywhere. The output of the 
build is the standard ```_site``` folder.

In the example usage below we checkout the code, build it and push it to an S3
bucket. The usage of this action is on line 10-11.

## Usage

```yaml
name: jekyll build
on:
  push
jobs:
  jekyll-build:
    runs-on: ubuntu-latest
    steps:
      - name: checkout
        uses: actions/checkout@v2
      - name: jekyll build
        uses: mbursi/jekyll-build-only-action@v1.0.0
      - name: deploy
        uses: jakejarvis/s3-sync-action@master
        with:
          args: --follow-symlinks --delete
        env:
          AWS_S3_BUCKET: ${{ secrets.AWS_S3_BUCKET }}
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_REGION: ${{ secrets.AWS_S3_BUCKET_REGION }}
          SOURCE_DIR: './_site'
```