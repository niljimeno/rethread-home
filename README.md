Alternative homepage for the
[Rethread browser](https://github.com/veilm/rethread),
using duckduckgo instead of google.

Hosted at [niljimeno.github.io/rethread-home](https://niljimeno.github.io/rethread-home/).

## Setup
To change the main page,
you need to run `rethread browser`
with the `--url` argument:

```sh
rethread browser --url niljimeno.github.io/rethread-home
```

It's better to run this as a script or an alias.

Change the configuration in `~/.config/rethread/`
to modify the default newtab url:

```sh
# before
rethread bind --ctrl --key t "$E rethread tabs open 'https://veilm.github.io/rethread/' ; $peek"
rethread bind --alt --shift --key o "$E rethread tabs open 'https://veilm.github.io/rethread/' ; $peek"
```

```sh
# after
rethread bind --ctrl --key t "$E rethread tabs open 'https://niljimeno.github.io/rethread-home/' ; $peek"
rethread bind --alt --shift --key o "$E rethread tabs open 'https://niljimeno.github.io/rethread-home/' ; $peek"
```

## Building the website
To edit the javascript,
edit `docs/redirect.js` manually.

For everything else:
modify the appropiate .janet files
and run:

```sh
jpm deps # install dependencies (requires Janet)
make run
```
