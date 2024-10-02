# ANuklear

Ada 2022 language bindings to the Nuklear UI library.

*Note*:

1. Currently, to build the lib, you need to comment out the ```private``` keyword from the ```SDL.C_Pointers``` package.
2. This only binds the SDL renderer as this is early stages.
3. They've changed the source in an compatible way with what I was doing. They now set a location for the SDL.h file, you might need to change this.

## What's next?

* Clean up the thin bindings and/or create a thick binding wrapping them and making the API sane.
* Port the SDL-Nuklear-Renderer to Ada so that it's *not* a binding.
* Add more demos.
* mgrojo (ASFML) could add an SFML rendering backend port.

## Copyright notice

See [LICENCE](./LICENCE) file.

## [Current version](http://www.semver.org)

See [alire.toml](./alire.toml)

## TODO's

* [ ] Create thick bindings, hiding the C API.
* [ ] Port Renderer to SDLAda.
* [ ] Need a clean way to handle the SDL header to the C source.
* [ ] Port the entire library so as to not depend on C at all.


