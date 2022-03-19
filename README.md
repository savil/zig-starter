# zig-starter

`zig-starter` was borne out of some frustration with finding an easy setup
for [`jaggery`](https://github.com/savil/jaggery). I want a simple code-build-test-debug loop.

`jaggery` libraries come with lots of tests, and are my primary (only?) way of exercising the code.

Specifically, the `build.zig` in `zig-starter` also installs a test binary
i.e. a binary that also has the test code. The `vscode/launch.json` hooks that binary up to the lldb debugger.
Most of the references below don't explain how to do this for a test-binary.

With the project settings here, I am able to:
- `cmd + shift + B` to build
- `F5` to run in debugger
- set breakpoints within the code, including test codes.

## Assumptions

- I assume you have `zig` installed in your system and in your `PATH`.
- I assume you are using vscode. Ref. "easy setup".
- I assume you've installed `zls-vscode` and `vscode-zig` extensions in vscode.
These are useful for being able to step into zig library code, and get tooltips
and so on.
- I assume you are using vimbindings in vscode. Clearly the best.

## Tip

In vscode, doing `cmd + shift + B` will open the terminal to build it, and leave a message
like:
```
Terminal will be reused by tasks, press any key to close it.
```
but frustratingly, it will not close the damn message automatically! Anyway:
keyboard shortcut is `` ctrl + ` `` to toggle between editor-view and terminal-view.

## References

Tactics:
- https://ikrima.dev/dev-notes/zig/zig-build/
- https://github.com/vadimcn/vscode-lldb
- https://code.visualstudio.com/docs/editor/debugging
- https://gist.github.com/floooh/31143278a0c0bae4f38b8722a8a98463
- https://zig.news/jarredsumner/setting-up-visual-studio-code-for-writing-zig-kcj
- https://dev.to/fabioarnold/setup-zig-for-gamedev-2bmf

Strategy:
- https://mitchellh.com/zig/build-internals
