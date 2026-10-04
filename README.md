# MJL Resume

Source code for my resume written in LaTeX using [moderncv](https://github.com/moderncv/moderncv).

## Download

[**Download latest resume**](../../releases/latest/download/mjl-resume.pdf)

All versions are available in [Releases](../../releases).

## Make targets

### mjl-resume.pdf

This target uses local LaTeX commands. By default `pdflatex` is used, but you can override it by setting the `LATEX` variable.

```sh
make mjl-resume.pdf
```

Override:
```sh
LATEX=xelatex make mjl-resume.pdf
```

### in-docker

Builds the resume using the [TeX Live Docker image](https://hub.docker.com/r/texlive/texlive), so you don't need LaTeX installed locally.

```sh
make in-docker
```

### release

Tag the commit at HEAD with a version in the format `vYYYY.M.D` (e.g., `v2026.10.4`).
This creates an annotated git tag, pushes it to origin, and triggers the Release Resume GitHub Actions workflow to build and publish the PDF as a release.

```sh
make release
```

