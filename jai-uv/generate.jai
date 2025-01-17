#import "Basic";
#import "Compiler";
#import "Bindings_Generator";

#run build();

build :: () {
    set_build_options_dc(.{do_output=false});
    options := get_build_options();
    if !generate_bindings() {
        compiler_set_workspace_status(.FAILED);
        return;
    }
};

generate_bindings :: () -> bool {
    output_filename := "libuv-linux.jai";
    opts: Generate_Bindings_Options;
    {
        using opts;
        header = #string MODULE_HEADER
            #import "POSIX";
            #import "Socket";

            // TODO: Not sure why termios.h isn't being picked up
            cc_t :: u8;
            speed_t :: u32;
            tcflag_t :: u32;
            termios :: struct {
                c_iflag:  tcflag_t;
                c_oflag:  tcflag_t;
                c_cflag:  tcflag_t;
                c_lflag:  tcflag_t;
                c_line:   cc_t;
                c_cc:     [32]cc_t;
                c_ispeed: speed_t;
                c_ospeed: speed_t;
            }
        MODULE_HEADER

        // TODO: Cross-platform this and also compile libuv with cmake
        array_add(*libpaths, "libuv/build");
        array_add(*libnames, "libuv");
        array_add(*include_paths, "libuv/include");
        array_add(*source_files,  "libuv/include/uv.h");
        array_add(*system_library_names, "libc.so.6");
        array_add(*system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH);
    }

    return generate_bindings(opts, output_filename);
}