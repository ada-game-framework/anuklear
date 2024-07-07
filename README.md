# ANuklear

Ada 2022 language bindings to the Nuklear UI library.

*Note*:

1. Currently, to build the lib, you need to comment out the ```private``` keyword from the ```SDL.C_Pointers``` package.
2. This only binds the SDL renderer as this is early stages.

## What's next?

* Clean up the thin bindings and/or create a thick binding wrapping them and making the API sane.
* Port the SDL-Nuklear-Renderer to Ada so that it's *not* a binding.
* Add more demos.
* mgrojo (ASFML) could add an SFML rendering backend port.

## Copyright notice

See [LICENCE](./LICENCE) file.

## [Current version](http://www.semver.org)

See [alire.toml](./alire.toml)
