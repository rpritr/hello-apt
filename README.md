# Hello APT — Simple C++ App Packaged as a Debian `.deb` Package

**Hello APT** is a minimal example project that demonstrates:

- a simple C++ program
- a Makefile build system
- how to package the compiled binary into a Debian/Ubuntu `.deb` package
- how to install the package via `apt` or `dpkg`

This repository serves as a template for developers and students who want to learn how Debian packaging works.

---

## Features

- Simple C++ application (`hello-app`)
- Makefile with:
  - `make` — compile the program  
  - `make install` — install binary to `/usr/local/bin`  
  - `make uninstall` — remove installed binary  
  - `make deb` — build a `.deb` package
- Debian package structure following official packaging conventions

---

## Project Structure

```
hello-apt/
│
├── src/
│   └── main.cpp
│
├── Makefile
│
└── package/
    ├── usr/local/bin/hello-app
    └── DEBIAN/control
```

---

## Build the Project

### Compile program

```bash
make
```

Output binary:

```
build/hello-app
```

### Run

```bash
./build/hello-app
```

---

## Local Install (without `.deb`)

Install:

```bash
sudo make install
```

Run:

```bash
hello-app
```

Uninstall:

```bash
sudo make uninstall
```

---

## Build the `.deb` Package

```bash
make deb
```

Result:

```
hello-app.deb
```

Install:

```bash
sudo apt install ./hello-app.deb
```

Remove:

```bash
sudo apt remove hello-app
```

---

## Debian Control File

```
Package: hello-app
Version: 1.0
Section: utils
Priority: optional
Architecture: amd64
Maintainer: Robi Pritržnik <robi@pritrznik.si>
Description: Example C++ app packaged as a Debian .deb package.
 A minimal program that prints a greeting message.
```

---

## Requirements

Install build tools:

```bash
sudo apt install build-essential dpkg-dev
```

---

## Program Output

```
Hello from APT package.
```

---

## Future Improvements

- Automatic `.deb` builds with GitHub Actions
- GPG signing for repository publishing
- Full APT repository hosted on Cloudflare Pages or GitHub Releases

---

## License

This project is public domain / unlicensed.
Feel free to reuse it for teaching, demos, or your own projects.
