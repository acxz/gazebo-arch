# Gazebo for Arch Linux
This repository hosts a collection of [Arch Linux](https://www.archlinux.org/)
[PKGBUILDs](https://wiki.archlinux.org/index.php/PKGBUILD) for the
[Gazebo](https://gazebosim.org/home) related packages.

## Installation
The Arch Linux packages for Gazebo are available on the
[AUR](https://wiki.archlinux.org/index.php/Arch_User_Repository).
Since many packages will be installed, it is recommended to use an
[AUR helper](https://wiki.archlinux.org/index.php/AUR_helpers)
like [`paru`](https://aur.archlinux.org/packages/paru/).

To install Gazebo Classic, use
```bash
paru -S gazebo
```

To install Gazebo Sim, use
```bash
paru -S ignition-gazebo
```

## Discussions/Support/Issues
For general concerns/comments/support we use
[Discussions](https://github.com/acxz/gazebo-arch/discussions).
If you have issues specific to your setup or are having difficulties
getting something to work, feel free to post there.

Use the [issue tracker](https://github.com/acxz/gazebo-arch/issues) to report
problems with the AUR packages.

## Contributing
Your contribution is always welcome. Before making a pull request, please open
an issue at the [issue tracker](https://github.com/acxz/gazebo-arch/issues)
to report the problem with build/error logs.
For most packages, you have to update `pkgver` and `sha256sums`.
Before you commit your changes you will need to generate `.SRCINFO` from the
updated `PKGBUILD`:
```bash
makepkg --printsrcinfo > .SRCINFO
```
and add it to your commit.
As we want to bring Gazebo into `community` we require that the package builds
in a [clean chroot](https://wiki.archlinux.org/index.php/DeveloperWiki:Building_in_a_clean_chroot).
