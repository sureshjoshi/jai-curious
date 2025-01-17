// Example from: https://docs.libuv.org/en/v1.x/guide/basics.html#idling

#import "Basic";

// TODO: There is probably a way in the generator (maybe using a visitor) that I can replace the `uv_`
// TODO: So that I can change this to a `uv :: #import` 
#import,file "libuv-linux.jai";

counter: s64 = 0;

wait_for_a_while :: (handle: *uv_idle_t) #c_call {
    counter += 1;
    if(counter >= 10_000_000) {
        uv_idle_stop(handle);
    }
}

main :: () {
    idler: uv_idle_t;
    uv_idle_init(uv_default_loop(), *idler);

    uv_idle_start(*idler, wait_for_a_while);
    defer uv_loop_close(uv_default_loop());

    print("Idling... Counter = %\n", counter);
    uv_run(uv_default_loop(), .UV_RUN_DEFAULT);
    print("Done idling... Counter = %\n", counter);
}
