def _directory_build_impl(ctx):
    output_dir = ctx.actions.declare_directory(ctx.label.name)
    node_binary = ctx.executable.node_binary

    ctx.actions.run(
        inputs = ctx.files.deps,
        outputs = [output_dir],
        executable = node_binary,
        arguments = [output_dir.path, "{}".format(ctx.attr.number_of_files)],
    )

    return [
        DefaultInfo(files = depset([output_dir]), runfiles = ctx.runfiles(files = [output_dir])),
    ]

directory_build = rule(
    implementation = _directory_build_impl,
    attrs = {
        "node_binary": attr.label(executable = True, cfg = "host"),
        "number_of_files": attr.int(default = 3),
        "deps": attr.label_list(allow_files = True),
    },
)