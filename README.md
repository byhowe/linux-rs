# Linux Bindings for Rust

The idea of the project is to have a file that defines all system calls that the Linux kernel supports. Then, this file can be used to generate bindings for any language, not just Rust. This was inspired from the `wayland.xml` file that the Wayland project has. In Wayland, you don't have to use a library, you can just generate the bindings. And the `.xml` file is quite expressive too.
