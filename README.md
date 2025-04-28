# GitHub Actions Templates for Windows on Arm64

A collection of reusable GitHub Actions workflows and scripts to automate building Windows on Arm64
(WoA) projects. These templates are designed to simplify CI/CD for open source and
cross-platform development.

## Contents

### [clangarm64-msys2-package.yml](https://github.com/Windows-on-ARM-Experiments/github-actions-templates/blob/main/.github/workflows/clangarm64-msys2-package.yml)

This workflow builds an MSYS2 package using the Clang compiler in the `CLANGARM64` environment.
It checks out both your repository and the MSYS2 packages repository, installs dependencies,
enables ccache, builds the package, and uploads the resulting artifacts.

#### Inputs
 - `package_name` (string): Package name to build (default: `mingw-w64-zlib`)
 - `packages_repository` (string): MSYS2 packages repository to build from (default: `msys2/MINGW-packages`)
 - `packages_branch` (string): MSYS2 packages branch to build from (default: `master`)
 - `dependencies` (string): Additional dependencies to install (default: empty)

#### Outputs
 - Built package artifact (`*.pkg.tar.zst`)
 - Build folder (on failure)

#### Scripts
The workflow uses helper scripts in `.github/scripts/msys2/`:
 - `install-dependencies.sh`: Installs additional dependencies via `pacman`.
 - `enable-ccache.sh`: Sets up `ccache` for faster builds and applies required patches.
 - `build-package.sh`: Runs the package build process using `makepkg-mingw` or `makepkg`.
