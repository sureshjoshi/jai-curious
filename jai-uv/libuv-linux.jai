//
// This file was auto-generated using the following command:
//
// jai generate.jai
//
	// from: <stdarg.h> used by TraceLogCallback
	#import "POSIX";
        #import "Socket";

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



UV__EOF :: -4095;
UV__UNKNOWN :: -4094;

UV__EAI_ADDRFAMILY :: -3000;
UV__EAI_AGAIN :: -3001;
UV__EAI_BADFLAGS :: -3002;
UV__EAI_CANCELED :: -3003;
UV__EAI_FAIL :: -3004;
UV__EAI_FAMILY :: -3005;
UV__EAI_MEMORY :: -3006;
UV__EAI_NODATA :: -3007;
UV__EAI_NONAME :: -3008;
UV__EAI_OVERFLOW :: -3009;
UV__EAI_SERVICE :: -3010;
UV__EAI_SOCKTYPE :: -3011;
UV__EAI_BADHINTS :: -3013;
UV__EAI_PROTOCOL :: -3014;

UV__ECHARSET :: -4080;

UV__EFTYPE :: -4028;

UV_VERSION_MAJOR :: 1;
UV_VERSION_MINOR :: 50;
UV_VERSION_PATCH :: 1;
UV_VERSION_IS_RELEASE :: 0;
UV_VERSION_SUFFIX :: "dev";

UV_VERSION_HEX :: (UV_VERSION_MAJOR << 16) | (UV_VERSION_MINOR << 8) | (UV_VERSION_PATCH);

UV_FS_O_DIRECT :: 0x04000;

UV_FS_O_EXLOCK :: 0;

UV_FS_O_NOATIME :: 0;

UV_FS_O_SYMLINK :: 0;

UV_FS_O_FILEMAP :: 0;
UV_FS_O_RANDOM :: 0;
UV_FS_O_SHORT_LIVED :: 0;
UV_FS_O_SEQUENTIAL :: 0;
UV_FS_O_TEMPORARY :: 0;

UV_PRIORITY_LOW :: 19;
UV_PRIORITY_BELOW_NORMAL :: 10;
UV_PRIORITY_NORMAL :: 0;
UV_PRIORITY_ABOVE_NORMAL :: -7;
UV_PRIORITY_HIGH :: -14;
UV_PRIORITY_HIGHEST :: -20;

UV_FS_COPYFILE_EXCL :: 0x0001;

UV_FS_COPYFILE_FICLONE :: 0x0002;

UV_FS_COPYFILE_FICLONE_FORCE :: 0x0004;

UV_FS_SYMLINK_DIR :: 0x0001;

UV_FS_SYMLINK_JUNCTION :: 0x0002;

UV_IF_NAMESIZE :: 16 + 1;

/* Internal type, do not use. */
uv__queue :: struct {
    next: *uv__queue;
    prev: *uv__queue;
}

uv__work :: struct {
    work: #type (w: *uv__work) -> void #c_call;
    done: #type (w: *uv__work, status: s32) -> void #c_call;
    loop: *uv_loop_s;
    wq:   uv__queue;
}

uv__io_cb :: #type (loop: *uv_loop_s, w: *uv__io_s, events: u32) -> void #c_call;

uv__io_t :: uv__io_s;

uv__io_s :: struct {
    cb:            uv__io_cb;
    pending_queue: uv__queue;
    watcher_queue: uv__queue;
    pevents:       u32; /* Pending event mask i.e. mask at next tick. */
    events:        u32; /* Current event mask. */
    fd:            s32;
}

/* Note: May be cast to struct iovec. See writev(2). */
uv_buf_t :: struct {
    base: *u8;
    len:  u64;
}

uv_file :: s32;
uv_os_sock_t :: s32;
uv_os_fd_t :: s32;
uv_pid_t :: pid_t;

uv_once_t :: pthread_once_t;
uv_thread_t :: pthread_t;
uv_mutex_t :: pthread_mutex_t;
uv_rwlock_t :: pthread_rwlock_t;
uv_sem_t :: sem_t;
uv_cond_t :: pthread_cond_t;
uv_key_t :: pthread_key_t;

uv_barrier_t :: pthread_barrier_t;

/* Platform-specific definitions for uv_spawn support. */
uv_gid_t :: gid_t;
uv_uid_t :: uid_t;

uv__dirent_t :: dirent;

uv_lib_t :: struct {
    handle: *void;
    errmsg: *u8;
}

uv_errno_t :: enum s32 {
    E2BIG           :: -7;
    EACCES          :: -13;
    EADDRINUSE      :: -98;
    EADDRNOTAVAIL   :: -99;
    EAFNOSUPPORT    :: -97;
    EAGAIN          :: -11;
    EAI_ADDRFAMILY  :: -3000;
    EAI_AGAIN       :: -3001;
    EAI_BADFLAGS    :: -3002;
    EAI_BADHINTS    :: -3013;
    EAI_CANCELED    :: -3003;
    EAI_FAIL        :: -3004;
    EAI_FAMILY      :: -3005;
    EAI_MEMORY      :: -3006;
    EAI_NODATA      :: -3007;
    EAI_NONAME      :: -3008;
    EAI_OVERFLOW    :: -3009;
    EAI_PROTOCOL    :: -3014;
    EAI_SERVICE     :: -3010;
    EAI_SOCKTYPE    :: -3011;
    EALREADY        :: -114;
    EBADF           :: -9;
    EBUSY           :: -16;
    ECANCELED       :: -125;
    ECHARSET        :: -4080;
    ECONNABORTED    :: -103;
    ECONNREFUSED    :: -111;
    ECONNRESET      :: -104;
    EDESTADDRREQ    :: -89;
    EEXIST          :: -17;
    EFAULT          :: -14;
    EFBIG           :: -27;
    EHOSTUNREACH    :: -113;
    EINTR           :: -4;
    EINVAL          :: -22;
    EIO             :: -5;
    EISCONN         :: -106;
    EISDIR          :: -21;
    ELOOP           :: -40;
    EMFILE          :: -24;
    EMSGSIZE        :: -90;
    ENAMETOOLONG    :: -36;
    ENETDOWN        :: -100;
    ENETUNREACH     :: -101;
    ENFILE          :: -23;
    ENOBUFS         :: -105;
    ENODEV          :: -19;
    ENOENT          :: -2;
    ENOMEM          :: -12;
    ENONET          :: -64;
    ENOPROTOOPT     :: -92;
    ENOSPC          :: -28;
    ENOSYS          :: -38;
    ENOTCONN        :: -107;
    ENOTDIR         :: -20;
    ENOTEMPTY       :: -39;
    ENOTSOCK        :: -88;
    ENOTSUP         :: -95;
    EOVERFLOW       :: -75;
    EPERM           :: -1;
    EPIPE           :: -32;
    EPROTO          :: -71;
    EPROTONOSUPPORT :: -93;
    EPROTOTYPE      :: -91;
    ERANGE          :: -34;
    EROFS           :: -30;
    ESHUTDOWN       :: -108;
    ESPIPE          :: -29;
    ESRCH           :: -3;
    ETIMEDOUT       :: -110;
    ETXTBSY         :: -26;
    EXDEV           :: -18;
    UNKNOWN         :: -4094;
    EOF             :: -4095;
    ENXIO           :: -6;
    EMLINK          :: -31;
    EHOSTDOWN       :: -112;
    EREMOTEIO       :: -121;
    ENOTTY          :: -25;
    EFTYPE          :: -4028;
    EILSEQ          :: -84;
    ESOCKTNOSUPPORT :: -94;
    ENODATA         :: -61;
    EUNATCH         :: -49;
    ENOEXEC         :: -8;

    ERRNO_MAX       :: -4096;

    UV_E2BIG           :: E2BIG;
    UV_EACCES          :: EACCES;
    UV_EADDRINUSE      :: EADDRINUSE;
    UV_EADDRNOTAVAIL   :: EADDRNOTAVAIL;
    UV_EAFNOSUPPORT    :: EAFNOSUPPORT;
    UV_EAGAIN          :: EAGAIN;
    UV_EAI_ADDRFAMILY  :: EAI_ADDRFAMILY;
    UV_EAI_AGAIN       :: EAI_AGAIN;
    UV_EAI_BADFLAGS    :: EAI_BADFLAGS;
    UV_EAI_BADHINTS    :: EAI_BADHINTS;
    UV_EAI_CANCELED    :: EAI_CANCELED;
    UV_EAI_FAIL        :: EAI_FAIL;
    UV_EAI_FAMILY      :: EAI_FAMILY;
    UV_EAI_MEMORY      :: EAI_MEMORY;
    UV_EAI_NODATA      :: EAI_NODATA;
    UV_EAI_NONAME      :: EAI_NONAME;
    UV_EAI_OVERFLOW    :: EAI_OVERFLOW;
    UV_EAI_PROTOCOL    :: EAI_PROTOCOL;
    UV_EAI_SERVICE     :: EAI_SERVICE;
    UV_EAI_SOCKTYPE    :: EAI_SOCKTYPE;
    UV_EALREADY        :: EALREADY;
    UV_EBADF           :: EBADF;
    UV_EBUSY           :: EBUSY;
    UV_ECANCELED       :: ECANCELED;
    UV_ECHARSET        :: ECHARSET;
    UV_ECONNABORTED    :: ECONNABORTED;
    UV_ECONNREFUSED    :: ECONNREFUSED;
    UV_ECONNRESET      :: ECONNRESET;
    UV_EDESTADDRREQ    :: EDESTADDRREQ;
    UV_EEXIST          :: EEXIST;
    UV_EFAULT          :: EFAULT;
    UV_EFBIG           :: EFBIG;
    UV_EHOSTUNREACH    :: EHOSTUNREACH;
    UV_EINTR           :: EINTR;
    UV_EINVAL          :: EINVAL;
    UV_EIO             :: EIO;
    UV_EISCONN         :: EISCONN;
    UV_EISDIR          :: EISDIR;
    UV_ELOOP           :: ELOOP;
    UV_EMFILE          :: EMFILE;
    UV_EMSGSIZE        :: EMSGSIZE;
    UV_ENAMETOOLONG    :: ENAMETOOLONG;
    UV_ENETDOWN        :: ENETDOWN;
    UV_ENETUNREACH     :: ENETUNREACH;
    UV_ENFILE          :: ENFILE;
    UV_ENOBUFS         :: ENOBUFS;
    UV_ENODEV          :: ENODEV;
    UV_ENOENT          :: ENOENT;
    UV_ENOMEM          :: ENOMEM;
    UV_ENONET          :: ENONET;
    UV_ENOPROTOOPT     :: ENOPROTOOPT;
    UV_ENOSPC          :: ENOSPC;
    UV_ENOSYS          :: ENOSYS;
    UV_ENOTCONN        :: ENOTCONN;
    UV_ENOTDIR         :: ENOTDIR;
    UV_ENOTEMPTY       :: ENOTEMPTY;
    UV_ENOTSOCK        :: ENOTSOCK;
    UV_ENOTSUP         :: ENOTSUP;
    UV_EOVERFLOW       :: EOVERFLOW;
    UV_EPERM           :: EPERM;
    UV_EPIPE           :: EPIPE;
    UV_EPROTO          :: EPROTO;
    UV_EPROTONOSUPPORT :: EPROTONOSUPPORT;
    UV_EPROTOTYPE      :: EPROTOTYPE;
    UV_ERANGE          :: ERANGE;
    UV_EROFS           :: EROFS;
    UV_ESHUTDOWN       :: ESHUTDOWN;
    UV_ESPIPE          :: ESPIPE;
    UV_ESRCH           :: ESRCH;
    UV_ETIMEDOUT       :: ETIMEDOUT;
    UV_ETXTBSY         :: ETXTBSY;
    UV_EXDEV           :: EXDEV;
    UV_UNKNOWN         :: UNKNOWN;
    UV_EOF             :: EOF;
    UV_ENXIO           :: ENXIO;
    UV_EMLINK          :: EMLINK;
    UV_EHOSTDOWN       :: EHOSTDOWN;
    UV_EREMOTEIO       :: EREMOTEIO;
    UV_ENOTTY          :: ENOTTY;
    UV_EFTYPE          :: EFTYPE;
    UV_EILSEQ          :: EILSEQ;
    UV_ESOCKTNOSUPPORT :: ESOCKTNOSUPPORT;
    UV_ENODATA         :: ENODATA;
    UV_EUNATCH         :: EUNATCH;
    UV_ENOEXEC         :: ENOEXEC;

    UV_ERRNO_MAX       :: ERRNO_MAX;
}

uv_handle_type :: enum u32 {
    UNKNOWN_HANDLE  :: 0;

    ASYNC           :: 1;
    CHECK           :: 2;
    FS_EVENT        :: 3;
    FS_POLL         :: 4;
    HANDLE          :: 5;
    IDLE            :: 6;
    NAMED_PIPE      :: 7;
    POLL            :: 8;
    PREPARE         :: 9;
    PROCESS         :: 10;
    STREAM          :: 11;
    TCP             :: 12;
    TIMER           :: 13;
    TTY             :: 14;
    UDP             :: 15;
    SIGNAL          :: 16;

    FILE            :: 17;
    HANDLE_TYPE_MAX :: 18;

    UV_UNKNOWN_HANDLE  :: UNKNOWN_HANDLE;

    UV_ASYNC           :: ASYNC;
    UV_CHECK           :: CHECK;
    UV_FS_EVENT        :: FS_EVENT;
    UV_FS_POLL         :: FS_POLL;
    UV_HANDLE          :: HANDLE;
    UV_IDLE            :: IDLE;
    UV_NAMED_PIPE      :: NAMED_PIPE;
    UV_POLL            :: POLL;
    UV_PREPARE         :: PREPARE;
    UV_PROCESS         :: PROCESS;
    UV_STREAM          :: STREAM;
    UV_TCP             :: TCP;
    UV_TIMER           :: TIMER;
    UV_TTY             :: TTY;
    UV_UDP             :: UDP;
    UV_SIGNAL          :: SIGNAL;

    UV_FILE            :: FILE;
    UV_HANDLE_TYPE_MAX :: HANDLE_TYPE_MAX;
}

uv_req_type :: enum u32 {
    UNKNOWN_REQ  :: 0;

    REQ          :: 1;
    CONNECT      :: 2;
    WRITE        :: 3;
    SHUTDOWN     :: 4;
    UDP_SEND     :: 5;
    FS           :: 6;
    WORK         :: 7;
    GETADDRINFO  :: 8;
    GETNAMEINFO  :: 9;
    RANDOM       :: 10;

    REQ_TYPE_MAX :: 11;

    UV_UNKNOWN_REQ  :: UNKNOWN_REQ;

    UV_REQ          :: REQ;
    UV_CONNECT      :: CONNECT;
    UV_WRITE        :: WRITE;
    UV_SHUTDOWN     :: SHUTDOWN;
    UV_UDP_SEND     :: UDP_SEND;
    UV_FS           :: FS;
    UV_WORK         :: WORK;
    UV_GETADDRINFO  :: GETADDRINFO;
    UV_GETNAMEINFO  :: GETNAMEINFO;
    UV_RANDOM       :: RANDOM;

    UV_REQ_TYPE_MAX :: REQ_TYPE_MAX;
}

/* Handle types. */
uv_loop_t :: uv_loop_s;
uv_handle_t :: uv_handle_s;
uv_dir_t :: uv_dir_s;
uv_stream_t :: uv_stream_s;
uv_tcp_t :: uv_tcp_s;
uv_udp_t :: uv_udp_s;
uv_pipe_t :: uv_pipe_s;
uv_tty_t :: uv_tty_s;
uv_poll_t :: uv_poll_s;
uv_timer_t :: uv_timer_s;
uv_prepare_t :: uv_prepare_s;
uv_check_t :: uv_check_s;
uv_idle_t :: uv_idle_s;
uv_async_t :: uv_async_s;
uv_process_t :: uv_process_s;
uv_fs_event_t :: uv_fs_event_s;
uv_fs_poll_t :: uv_fs_poll_s;
uv_signal_t :: uv_signal_s;

/* Request types. */
uv_req_t :: uv_req_s;
uv_getaddrinfo_t :: uv_getaddrinfo_s;
uv_getnameinfo_t :: uv_getnameinfo_s;
uv_shutdown_t :: uv_shutdown_s;
uv_write_t :: uv_write_s;
uv_connect_t :: uv_connect_s;
uv_udp_send_t :: uv_udp_send_s;
uv_fs_t :: uv_fs_s;
uv_work_t :: uv_work_s;
uv_random_t :: uv_random_s;

/* None of the above. */
uv_env_item_t :: uv_env_item_s;
uv_cpu_info_t :: uv_cpu_info_s;
uv_interface_address_t :: uv_interface_address_s;
uv_dirent_t :: uv_dirent_s;
uv_passwd_t :: uv_passwd_s;
uv_group_t :: uv_group_s;
uv_utsname_t :: uv_utsname_s;
uv_statfs_t :: uv_statfs_s;

uv_metrics_t :: uv_metrics_s;

uv_loop_option :: enum u32 {
    LOOP_BLOCK_SIGNAL        :: 0;
    METRICS_IDLE_TIME        :: 1;
    LOOP_USE_IO_URING_SQPOLL :: 2;

    UV_LOOP_BLOCK_SIGNAL        :: LOOP_BLOCK_SIGNAL;
    UV_METRICS_IDLE_TIME        :: METRICS_IDLE_TIME;
    UV_LOOP_USE_IO_URING_SQPOLL :: LOOP_USE_IO_URING_SQPOLL;
}

uv_run_mode :: enum u32 {
    DEFAULT :: 0;
    ONCE    :: 1;
    NOWAIT  :: 2;

    UV_RUN_DEFAULT :: DEFAULT;
    UV_RUN_ONCE    :: ONCE;
    UV_RUN_NOWAIT  :: NOWAIT;
}

uv_version :: () -> u32 #foreign libuv;
uv_version_string :: () -> *u8 #foreign libuv;

uv_malloc_func :: #type (size: u64) -> *void #c_call;
uv_realloc_func :: #type (ptr: *void, size: u64) -> *void #c_call;
uv_calloc_func :: #type (count: u64, size: u64) -> *void #c_call;
uv_free_func :: #type (ptr: *void) -> void #c_call;

uv_library_shutdown :: () -> void #foreign libuv;

uv_replace_allocator :: (malloc_func: uv_malloc_func, realloc_func: uv_realloc_func, calloc_func: uv_calloc_func, free_func: uv_free_func) -> s32 #foreign libuv;

uv_default_loop :: () -> *uv_loop_t #foreign libuv;
uv_loop_init :: (loop: *uv_loop_t) -> s32 #foreign libuv;
uv_loop_close :: (loop: *uv_loop_t) -> s32 #foreign libuv;

/*
* NOTE:
*  This function is DEPRECATED, users should
*  allocate the loop manually and use uv_loop_init instead.
*/
uv_loop_new :: () -> *uv_loop_t #foreign libuv;

/*
* NOTE:
*  This function is DEPRECATED. Users should use
*  uv_loop_close and free the memory manually instead.
*/
uv_loop_delete :: (unknown0: *uv_loop_t) -> void #foreign libuv;
uv_loop_size :: () -> u64 #foreign libuv;
uv_loop_alive :: (loop: *uv_loop_t) -> s32 #foreign libuv;
uv_loop_configure :: (loop: *uv_loop_t, option: uv_loop_option, __args: ..Any) -> s32 #foreign libuv;
uv_loop_fork :: (loop: *uv_loop_t) -> s32 #foreign libuv;

uv_run :: (unknown0: *uv_loop_t, mode: uv_run_mode) -> s32 #foreign libuv;
uv_stop :: (unknown0: *uv_loop_t) -> void #foreign libuv;

uv_ref :: (unknown0: *uv_handle_t) -> void #foreign libuv;
uv_unref :: (unknown0: *uv_handle_t) -> void #foreign libuv;
uv_has_ref :: (unknown0: *uv_handle_t) -> s32 #foreign libuv;

uv_update_time :: (unknown0: *uv_loop_t) -> void #foreign libuv;
uv_now :: (unknown0: *uv_loop_t) -> u64 #foreign libuv;

uv_backend_fd :: (unknown0: *uv_loop_t) -> s32 #foreign libuv;
uv_backend_timeout :: (unknown0: *uv_loop_t) -> s32 #foreign libuv;

uv_alloc_cb :: #type (handle: *uv_handle_t, suggested_size: u64, buf: *uv_buf_t) -> void #c_call;

uv_read_cb :: #type (stream: *uv_stream_t, nread: s64, buf: *uv_buf_t) -> void #c_call;

uv_write_cb :: #type (req: *uv_write_t, status: s32) -> void #c_call;
uv_connect_cb :: #type (req: *uv_connect_t, status: s32) -> void #c_call;
uv_shutdown_cb :: #type (req: *uv_shutdown_t, status: s32) -> void #c_call;
uv_connection_cb :: #type (server: *uv_stream_t, status: s32) -> void #c_call;
uv_close_cb :: #type (handle: *uv_handle_t) -> void #c_call;
uv_poll_cb :: #type (handle: *uv_poll_t, status: s32, events: s32) -> void #c_call;
uv_timer_cb :: #type (handle: *uv_timer_t) -> void #c_call;
uv_async_cb :: #type (handle: *uv_async_t) -> void #c_call;
uv_prepare_cb :: #type (handle: *uv_prepare_t) -> void #c_call;
uv_check_cb :: #type (handle: *uv_check_t) -> void #c_call;
uv_idle_cb :: #type (handle: *uv_idle_t) -> void #c_call;
uv_exit_cb :: #type (unknown0: *uv_process_t, exit_status: s64, term_signal: s32) -> void #c_call;
uv_walk_cb :: #type (handle: *uv_handle_t, arg: *void) -> void #c_call;
uv_fs_cb :: #type (req: *uv_fs_t) -> void #c_call;
uv_work_cb :: #type (req: *uv_work_t) -> void #c_call;
uv_after_work_cb :: #type (req: *uv_work_t, status: s32) -> void #c_call;
uv_getaddrinfo_cb :: #type (req: *uv_getaddrinfo_t, status: s32, res: *addrinfo) -> void #c_call;

uv_getnameinfo_cb :: #type (req: *uv_getnameinfo_t, status: s32, hostname: *u8, service: *u8) -> void #c_call;

uv_random_cb :: #type (req: *uv_random_t, status: s32, buf: *void, buflen: u64) -> void #c_call;

uv_clock_id :: enum u32 {
    MONOTONIC :: 0;
    REALTIME  :: 1;

    UV_CLOCK_MONOTONIC :: MONOTONIC;
    UV_CLOCK_REALTIME  :: REALTIME;
}

/* XXX(bnoordhuis) not 2038-proof, https://github.com/libuv/libuv/issues/3864 */
uv_timespec_t :: struct {
    tv_sec:  s64;
    tv_nsec: s64;
}

uv_timespec64_t :: struct {
    tv_sec:  s64;
    tv_nsec: s32;
}

/* XXX(bnoordhuis) not 2038-proof, https://github.com/libuv/libuv/issues/3864 */
uv_timeval_t :: struct {
    tv_sec:  s64;
    tv_usec: s64;
}

uv_timeval64_t :: struct {
    tv_sec:  s64;
    tv_usec: s32;
}

uv_stat_t :: struct {
    st_dev:      u64;
    st_mode:     u64;
    st_nlink:    u64;
    st_uid:      u64;
    st_gid:      u64;
    st_rdev:     u64;
    st_ino:      u64;
    st_size:     u64;
    st_blksize:  u64;
    st_blocks:   u64;
    st_flags:    u64;
    st_gen:      u64;
    st_atim:     uv_timespec_t;
    st_mtim:     uv_timespec_t;
    st_ctim:     uv_timespec_t;
    st_birthtim: uv_timespec_t;
}

uv_fs_event_cb :: #type (handle: *uv_fs_event_t, filename: *u8, events: s32, status: s32) -> void #c_call;

uv_fs_poll_cb :: #type (handle: *uv_fs_poll_t, status: s32, prev: *uv_stat_t, curr: *uv_stat_t) -> void #c_call;

uv_signal_cb :: #type (handle: *uv_signal_t, signum: s32) -> void #c_call;

uv_membership :: enum u32 {
    LEAVE_GROUP :: 0;
    JOIN_GROUP  :: 1;

    UV_LEAVE_GROUP :: LEAVE_GROUP;
    UV_JOIN_GROUP  :: JOIN_GROUP;
}

uv_translate_sys_error :: (sys_errno: s32) -> s32 #foreign libuv;

uv_strerror :: (err: s32) -> *u8 #foreign libuv;
uv_strerror_r :: (err: s32, buf: *u8, buflen: u64) -> *u8 #foreign libuv;

uv_err_name :: (err: s32) -> *u8 #foreign libuv;
uv_err_name_r :: (err: s32, buf: *u8, buflen: u64) -> *u8 #foreign libuv;

/* Abstract base class of all requests. */
uv_req_s :: struct {
    /* public */
    data:     *void;
    /* read-only */
    type:     uv_req_type;
    /* private */
    reserved: [6] *void;
}

/* Platform-specific request types. */
uv_shutdown :: (req: *uv_shutdown_t, handle: *uv_stream_t, cb: uv_shutdown_cb) -> s32 #foreign libuv;

uv_shutdown_s :: struct {
    /* public */
    data:     *void;
    /* read-only */
    type:     uv_req_type;
    /* private */
    reserved: [6] *void;
    handle:   *uv_stream_t;
    cb:       uv_shutdown_cb;
}

/* The abstract base class of all handles. */
uv_handle_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;
}

uv_handle_size :: (type: uv_handle_type) -> u64 #foreign libuv;
uv_handle_get_type :: (handle: *uv_handle_t) -> uv_handle_type #foreign libuv;
uv_handle_type_name :: (type: uv_handle_type) -> *u8 #foreign libuv;
uv_handle_get_data :: (handle: *uv_handle_t) -> *void #foreign libuv;
uv_handle_get_loop :: (handle: *uv_handle_t) -> *uv_loop_t #foreign libuv;
uv_handle_set_data :: (handle: *uv_handle_t, data: *void) -> void #foreign libuv;

uv_req_size :: (type: uv_req_type) -> u64 #foreign libuv;
uv_req_get_data :: (req: *uv_req_t) -> *void #foreign libuv;
uv_req_set_data :: (req: *uv_req_t, data: *void) -> void #foreign libuv;
uv_req_get_type :: (req: *uv_req_t) -> uv_req_type #foreign libuv;
uv_req_type_name :: (type: uv_req_type) -> *u8 #foreign libuv;

uv_is_active :: (handle: *uv_handle_t) -> s32 #foreign libuv;

uv_walk :: (loop: *uv_loop_t, walk_cb: uv_walk_cb, arg: *void) -> void #foreign libuv;

/* Helpers for ad hoc debugging, no API/ABI stability guaranteed. */
uv_print_all_handles :: (loop: *uv_loop_t, stream: *FILE) -> void #foreign libuv;
uv_print_active_handles :: (loop: *uv_loop_t, stream: *FILE) -> void #foreign libuv;

uv_close :: (handle: *uv_handle_t, close_cb: uv_close_cb) -> void #foreign libuv;

uv_send_buffer_size :: (handle: *uv_handle_t, value: *s32) -> s32 #foreign libuv;
uv_recv_buffer_size :: (handle: *uv_handle_t, value: *s32) -> s32 #foreign libuv;

uv_fileno :: (handle: *uv_handle_t, fd: *uv_os_fd_t) -> s32 #foreign libuv;

uv_buf_init :: (base: *u8, len: u32) -> uv_buf_t #foreign libuv;

uv_pipe :: (fds: *[2] uv_file, read_flags: s32, write_flags: s32) -> s32 #foreign libuv;
uv_socketpair :: (type: s32, protocol: s32, socket_vector: *[2] uv_os_sock_t, flags0: s32, flags1: s32) -> s32 #foreign libuv;

/*
* uv_stream_t is a subclass of uv_handle_t.
*
* uv_stream is an abstract class.
*
* uv_stream_t is the parent class of uv_tcp_t, uv_pipe_t and uv_tty_t.
*/
uv_stream_s :: struct {
    /* public */
    data:                  *void;
    /* read-only */
    loop:                  *uv_loop_t;
    type:                  uv_handle_type;
    /* private */
    close_cb:              uv_close_cb;
    handle_queue:          uv__queue;
    u:                     union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing:          *uv_handle_t;
    flags:                 u32;
    /* number of bytes queued for writing */
    write_queue_size:      u64;
    alloc_cb:              uv_alloc_cb;
    read_cb:               uv_read_cb;
    connect_req:           *uv_connect_t;
    shutdown_req:          *uv_shutdown_t;
    io_watcher:            uv__io_t;
    write_queue:           uv__queue;
    write_completed_queue: uv__queue;
    connection_cb:         uv_connection_cb;
    delayed_error:         s32;
    accepted_fd:           s32;
    queued_fds:            *void;
}

uv_stream_get_write_queue_size :: (stream: *uv_stream_t) -> u64 #foreign libuv;

uv_listen :: (stream: *uv_stream_t, backlog: s32, cb: uv_connection_cb) -> s32 #foreign libuv;
uv_accept :: (server: *uv_stream_t, client: *uv_stream_t) -> s32 #foreign libuv;

uv_read_start :: (unknown0: *uv_stream_t, alloc_cb: uv_alloc_cb, read_cb: uv_read_cb) -> s32 #foreign libuv;

uv_read_stop :: (unknown0: *uv_stream_t) -> s32 #foreign libuv;

uv_write :: (req: *uv_write_t, handle: *uv_stream_t, bufs: *uv_buf_t, nbufs: u32, cb: uv_write_cb) -> s32 #foreign libuv;

uv_write2 :: (req: *uv_write_t, handle: *uv_stream_t, bufs: *uv_buf_t, nbufs: u32, send_handle: *uv_stream_t, cb: uv_write_cb) -> s32 #foreign libuv;

uv_try_write :: (handle: *uv_stream_t, bufs: *uv_buf_t, nbufs: u32) -> s32 #foreign libuv;

uv_try_write2 :: (handle: *uv_stream_t, bufs: *uv_buf_t, nbufs: u32, send_handle: *uv_stream_t) -> s32 #foreign libuv;

/* uv_write_t is a subclass of uv_req_t. */
uv_write_s :: struct {
    /* public */
    data:        *void;
    /* read-only */
    type:        uv_req_type;
    /* private */
    reserved:    [6] *void;
    cb:          uv_write_cb;
    send_handle: *uv_stream_t; /* TODO: make private and unix-only in v2.x. */
    handle:      *uv_stream_t;
    queue:       uv__queue;
    write_index: u32;
    bufs:        *uv_buf_t;
    nbufs:       u32;
    error:       s32;
    bufsml:      [4] uv_buf_t;
}

uv_is_readable :: (handle: *uv_stream_t) -> s32 #foreign libuv;
uv_is_writable :: (handle: *uv_stream_t) -> s32 #foreign libuv;

uv_stream_set_blocking :: (handle: *uv_stream_t, blocking: s32) -> s32 #foreign libuv;

uv_is_closing :: (handle: *uv_handle_t) -> s32 #foreign libuv;

/*
* uv_tcp_t is a subclass of uv_stream_t.
*
* Represents a TCP stream or TCP server.
*/
uv_tcp_s :: struct {
    /* public */
    data:                  *void;
    /* read-only */
    loop:                  *uv_loop_t;
    type:                  uv_handle_type;
    /* private */
    close_cb:              uv_close_cb;
    handle_queue:          uv__queue;
    u:                     union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing:          *uv_handle_t;
    flags:                 u32;
    /* number of bytes queued for writing */
    write_queue_size:      u64;
    alloc_cb:              uv_alloc_cb;
    read_cb:               uv_read_cb;
    connect_req:           *uv_connect_t;
    shutdown_req:          *uv_shutdown_t;
    io_watcher:            uv__io_t;
    write_queue:           uv__queue;
    write_completed_queue: uv__queue;
    connection_cb:         uv_connection_cb;
    delayed_error:         s32;
    accepted_fd:           s32;
    queued_fds:            *void;
}

uv_tcp_init :: (unknown0: *uv_loop_t, handle: *uv_tcp_t) -> s32 #foreign libuv;
uv_tcp_init_ex :: (unknown0: *uv_loop_t, handle: *uv_tcp_t, flags: u32) -> s32 #foreign libuv;
uv_tcp_open :: (handle: *uv_tcp_t, sock: uv_os_sock_t) -> s32 #foreign libuv;
uv_tcp_nodelay :: (handle: *uv_tcp_t, enable: s32) -> s32 #foreign libuv;
uv_tcp_keepalive :: (handle: *uv_tcp_t, enable: s32, delay: u32) -> s32 #foreign libuv;

uv_tcp_simultaneous_accepts :: (handle: *uv_tcp_t, enable: s32) -> s32 #foreign libuv;

uv_tcp_flags :: enum u32 {
    IPV6ONLY  :: 1;

    REUSEPORT :: 2;

    UV_TCP_IPV6ONLY  :: IPV6ONLY;

    UV_TCP_REUSEPORT :: REUSEPORT;
}

uv_tcp_bind :: (handle: *uv_tcp_t, addr: *sockaddr, flags: u32) -> s32 #foreign libuv;

uv_tcp_getsockname :: (handle: *uv_tcp_t, name: *sockaddr, namelen: *s32) -> s32 #foreign libuv;

uv_tcp_getpeername :: (handle: *uv_tcp_t, name: *sockaddr, namelen: *s32) -> s32 #foreign libuv;

uv_tcp_close_reset :: (handle: *uv_tcp_t, close_cb: uv_close_cb) -> s32 #foreign libuv;
uv_tcp_connect :: (req: *uv_connect_t, handle: *uv_tcp_t, addr: *sockaddr, cb: uv_connect_cb) -> s32 #foreign libuv;

/* uv_connect_t is a subclass of uv_req_t. */
uv_connect_s :: struct {
    /* public */
    data:     *void;
    /* read-only */
    type:     uv_req_type;
    /* private */
    reserved: [6] *void;
    cb:       uv_connect_cb;
    handle:   *uv_stream_t;
    queue:    uv__queue;
}

/*
* UDP support.
*/
uv_udp_flags :: enum u32 {
    IPV6ONLY      :: 1;

    PARTIAL       :: 2;

    REUSEADDR     :: 4;

    MMSG_CHUNK    :: 8;

    MMSG_FREE     :: 16;

    LINUX_RECVERR :: 32;

    REUSEPORT     :: 64;

    RECVMMSG      :: 256;

    UV_UDP_IPV6ONLY      :: IPV6ONLY;

    UV_UDP_PARTIAL       :: PARTIAL;

    UV_UDP_REUSEADDR     :: REUSEADDR;

    UV_UDP_MMSG_CHUNK    :: MMSG_CHUNK;

    UV_UDP_MMSG_FREE     :: MMSG_FREE;

    UV_UDP_LINUX_RECVERR :: LINUX_RECVERR;

    UV_UDP_REUSEPORT     :: REUSEPORT;

    UV_UDP_RECVMMSG      :: RECVMMSG;
}

uv_udp_send_cb :: #type (req: *uv_udp_send_t, status: s32) -> void #c_call;
uv_udp_recv_cb :: #type (handle: *uv_udp_t, nread: s64, buf: *uv_buf_t, addr: *sockaddr, flags: u32) -> void #c_call;

/* uv_udp_t is a subclass of uv_handle_t. */
uv_udp_s :: struct {
    /* public */
    data:                  *void;
    /* read-only */
    loop:                  *uv_loop_t;
    type:                  uv_handle_type;
    /* private */
    close_cb:              uv_close_cb;
    handle_queue:          uv__queue;
    u:                     union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing:          *uv_handle_t;
    flags:                 u32;

    /* read-only */
    /*
    * Number of bytes queued for sending. This field strictly shows how much
    * information is currently queued.
    */
    send_queue_size:       u64;

    /*
    * Number of send requests currently in the queue awaiting to be processed.
    */
    send_queue_count:      u64;
    alloc_cb:              uv_alloc_cb;
    recv_cb:               uv_udp_recv_cb;
    io_watcher:            uv__io_t;
    write_queue:           uv__queue;
    write_completed_queue: uv__queue;
}

/* uv_udp_send_t is a subclass of uv_req_t. */
uv_udp_send_s :: struct {
    /* public */
    data:     *void;
    /* read-only */
    type:     uv_req_type;
    /* private */
    reserved: [6] *void;
    handle:   *uv_udp_t;
    cb:       uv_udp_send_cb;
    queue:    uv__queue;
    u:        union {
        addr:    sockaddr;
        storage: sockaddr_storage;
    };
    nbufs:    u32;
    bufs:     *uv_buf_t;
    status:   s64;
    send_cb:  uv_udp_send_cb;
    bufsml:   [4] uv_buf_t;
}

uv_udp_init :: (unknown0: *uv_loop_t, handle: *uv_udp_t) -> s32 #foreign libuv;
uv_udp_init_ex :: (unknown0: *uv_loop_t, handle: *uv_udp_t, flags: u32) -> s32 #foreign libuv;
uv_udp_open :: (handle: *uv_udp_t, sock: uv_os_sock_t) -> s32 #foreign libuv;
uv_udp_bind :: (handle: *uv_udp_t, addr: *sockaddr, flags: u32) -> s32 #foreign libuv;

uv_udp_connect :: (handle: *uv_udp_t, addr: *sockaddr) -> s32 #foreign libuv;

uv_udp_getpeername :: (handle: *uv_udp_t, name: *sockaddr, namelen: *s32) -> s32 #foreign libuv;

uv_udp_getsockname :: (handle: *uv_udp_t, name: *sockaddr, namelen: *s32) -> s32 #foreign libuv;

uv_udp_set_membership :: (handle: *uv_udp_t, multicast_addr: *u8, interface_addr: *u8, membership: uv_membership) -> s32 #foreign libuv;

uv_udp_set_source_membership :: (handle: *uv_udp_t, multicast_addr: *u8, interface_addr: *u8, source_addr: *u8, membership: uv_membership) -> s32 #foreign libuv;

uv_udp_set_multicast_loop :: (handle: *uv_udp_t, on: s32) -> s32 #foreign libuv;
uv_udp_set_multicast_ttl :: (handle: *uv_udp_t, ttl: s32) -> s32 #foreign libuv;
uv_udp_set_multicast_interface :: (handle: *uv_udp_t, interface_addr: *u8) -> s32 #foreign libuv;

uv_udp_set_broadcast :: (handle: *uv_udp_t, on: s32) -> s32 #foreign libuv;
uv_udp_set_ttl :: (handle: *uv_udp_t, ttl: s32) -> s32 #foreign libuv;
uv_udp_send :: (req: *uv_udp_send_t, handle: *uv_udp_t, bufs: *uv_buf_t, nbufs: u32, addr: *sockaddr, send_cb: uv_udp_send_cb) -> s32 #foreign libuv;

uv_udp_try_send :: (handle: *uv_udp_t, bufs: *uv_buf_t, nbufs: u32, addr: *sockaddr) -> s32 #foreign libuv;

uv_udp_try_send2 :: (handle: *uv_udp_t, count: u32, bufs: **uv_buf_t, nbufs: *u32, addrs: **sockaddr, flags: u32) -> s32 #foreign libuv;

uv_udp_recv_start :: (handle: *uv_udp_t, alloc_cb: uv_alloc_cb, recv_cb: uv_udp_recv_cb) -> s32 #foreign libuv;

uv_udp_using_recvmmsg :: (handle: *uv_udp_t) -> s32 #foreign libuv;
uv_udp_recv_stop :: (handle: *uv_udp_t) -> s32 #foreign libuv;
uv_udp_get_send_queue_size :: (handle: *uv_udp_t) -> u64 #foreign libuv;
uv_udp_get_send_queue_count :: (handle: *uv_udp_t) -> u64 #foreign libuv;

/*
* uv_tty_t is a subclass of uv_stream_t.
*
* Representing a stream for the console.
*/
uv_tty_s :: struct {
    /* public */
    data:                  *void;
    /* read-only */
    loop:                  *uv_loop_t;
    type:                  uv_handle_type;
    /* private */
    close_cb:              uv_close_cb;
    handle_queue:          uv__queue;
    u:                     union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing:          *uv_handle_t;
    flags:                 u32;
    /* number of bytes queued for writing */
    write_queue_size:      u64;
    alloc_cb:              uv_alloc_cb;
    read_cb:               uv_read_cb;
    connect_req:           *uv_connect_t;
    shutdown_req:          *uv_shutdown_t;
    io_watcher:            uv__io_t;
    write_queue:           uv__queue;
    write_completed_queue: uv__queue;
    connection_cb:         uv_connection_cb;
    delayed_error:         s32;
    accepted_fd:           s32;
    queued_fds:            *void;
    orig_termios:          termios;
    mode:                  s32;
}

uv_tty_mode_t :: enum u32 {
    NORMAL :: 0;

    RAW    :: 1;

    IO     :: 2;

    UV_TTY_MODE_NORMAL :: NORMAL;

    UV_TTY_MODE_RAW    :: RAW;

    UV_TTY_MODE_IO     :: IO;
}

uv_tty_vtermstate_t :: enum u32 {
    SUPPORTED   :: 0;

    UNSUPPORTED :: 1;

    UV_TTY_SUPPORTED   :: SUPPORTED;

    UV_TTY_UNSUPPORTED :: UNSUPPORTED;
}

uv_tty_init :: (unknown0: *uv_loop_t, unknown1: *uv_tty_t, fd: uv_file, readable: s32) -> s32 #foreign libuv;
uv_tty_set_mode :: (unknown0: *uv_tty_t, mode: uv_tty_mode_t) -> s32 #foreign libuv;
uv_tty_reset_mode :: () -> s32 #foreign libuv;
uv_tty_get_winsize :: (unknown0: *uv_tty_t, width: *s32, height: *s32) -> s32 #foreign libuv;
uv_tty_set_vterm_state :: (state: uv_tty_vtermstate_t) -> void #foreign libuv;
uv_tty_get_vterm_state :: (state: *uv_tty_vtermstate_t) -> s32 #foreign libuv;

uv_guess_handle :: (file: uv_file) -> uv_handle_type #foreign libuv;

anon_enum_1 :: enum u32 {
    UV_PIPE_NO_TRUNCATE :: 1;
}

/*
* uv_pipe_t is a subclass of uv_stream_t.
*
* Representing a pipe stream or pipe server. On Windows this is a Named
* Pipe. On Unix this is a Unix domain socket.
*/
uv_pipe_s :: struct {
    /* public */
    data:                  *void;
    /* read-only */
    loop:                  *uv_loop_t;
    type:                  uv_handle_type;
    /* private */
    close_cb:              uv_close_cb;
    handle_queue:          uv__queue;
    u:                     union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing:          *uv_handle_t;
    flags:                 u32;
    /* number of bytes queued for writing */
    write_queue_size:      u64;
    alloc_cb:              uv_alloc_cb;
    read_cb:               uv_read_cb;
    connect_req:           *uv_connect_t;
    shutdown_req:          *uv_shutdown_t;
    io_watcher:            uv__io_t;
    write_queue:           uv__queue;
    write_completed_queue: uv__queue;
    connection_cb:         uv_connection_cb;
    delayed_error:         s32;
    accepted_fd:           s32;
    queued_fds:            *void;
    ipc:                   s32; /* non-zero if this pipe is used for passing handles */
    /* NULL or strdup'ed */
    pipe_fname:            *u8;
}

uv_pipe_init :: (unknown0: *uv_loop_t, handle: *uv_pipe_t, ipc: s32) -> s32 #foreign libuv;
uv_pipe_open :: (unknown0: *uv_pipe_t, file: uv_file) -> s32 #foreign libuv;
uv_pipe_bind :: (handle: *uv_pipe_t, name: *u8) -> s32 #foreign libuv;
uv_pipe_bind2 :: (handle: *uv_pipe_t, name: *u8, namelen: u64, flags: u32) -> s32 #foreign libuv;

uv_pipe_connect :: (req: *uv_connect_t, handle: *uv_pipe_t, name: *u8, cb: uv_connect_cb) -> void #foreign libuv;

uv_pipe_connect2 :: (req: *uv_connect_t, handle: *uv_pipe_t, name: *u8, namelen: u64, flags: u32, cb: uv_connect_cb) -> s32 #foreign libuv;

uv_pipe_getsockname :: (handle: *uv_pipe_t, buffer: *u8, size: *u64) -> s32 #foreign libuv;

uv_pipe_getpeername :: (handle: *uv_pipe_t, buffer: *u8, size: *u64) -> s32 #foreign libuv;

uv_pipe_pending_instances :: (handle: *uv_pipe_t, count: s32) -> void #foreign libuv;
uv_pipe_pending_count :: (handle: *uv_pipe_t) -> s32 #foreign libuv;
uv_pipe_pending_type :: (handle: *uv_pipe_t) -> uv_handle_type #foreign libuv;
uv_pipe_chmod :: (handle: *uv_pipe_t, flags: s32) -> s32 #foreign libuv;

uv_poll_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;
    poll_cb:      uv_poll_cb;
    io_watcher:   uv__io_t;
}

uv_poll_event :: enum u32 {
    READABLE    :: 1;
    WRITABLE    :: 2;
    DISCONNECT  :: 4;
    PRIORITIZED :: 8;

    UV_READABLE    :: READABLE;
    UV_WRITABLE    :: WRITABLE;
    UV_DISCONNECT  :: DISCONNECT;
    UV_PRIORITIZED :: PRIORITIZED;
}

uv_poll_init :: (loop: *uv_loop_t, handle: *uv_poll_t, fd: s32) -> s32 #foreign libuv;
uv_poll_init_socket :: (loop: *uv_loop_t, handle: *uv_poll_t, socket: uv_os_sock_t) -> s32 #foreign libuv;

uv_poll_start :: (handle: *uv_poll_t, events: s32, cb: uv_poll_cb) -> s32 #foreign libuv;
uv_poll_stop :: (handle: *uv_poll_t) -> s32 #foreign libuv;

uv_prepare_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;
    prepare_cb:   uv_prepare_cb;
    queue:        uv__queue;
}

uv_prepare_init :: (unknown0: *uv_loop_t, prepare: *uv_prepare_t) -> s32 #foreign libuv;
uv_prepare_start :: (prepare: *uv_prepare_t, cb: uv_prepare_cb) -> s32 #foreign libuv;
uv_prepare_stop :: (prepare: *uv_prepare_t) -> s32 #foreign libuv;

uv_check_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;
    check_cb:     uv_check_cb;
    queue:        uv__queue;
}

uv_check_init :: (unknown0: *uv_loop_t, check: *uv_check_t) -> s32 #foreign libuv;
uv_check_start :: (check: *uv_check_t, cb: uv_check_cb) -> s32 #foreign libuv;
uv_check_stop :: (check: *uv_check_t) -> s32 #foreign libuv;

uv_idle_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;
    idle_cb:      uv_idle_cb;
    queue:        uv__queue;
}

uv_idle_init :: (unknown0: *uv_loop_t, idle: *uv_idle_t) -> s32 #foreign libuv;
uv_idle_start :: (idle: *uv_idle_t, cb: uv_idle_cb) -> s32 #foreign libuv;
uv_idle_stop :: (idle: *uv_idle_t) -> s32 #foreign libuv;

uv_async_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;
    async_cb:     uv_async_cb;
    queue:        uv__queue;
    pending:      s32;
}

uv_async_init :: (unknown0: *uv_loop_t, async: *uv_async_t, async_cb: uv_async_cb) -> s32 #foreign libuv;

uv_async_send :: (async: *uv_async_t) -> s32 #foreign libuv;

/*
* uv_timer_t is a subclass of uv_handle_t.
*
* Used to get woken up at a specified time in the future.
*/
uv_timer_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;
    timer_cb:     uv_timer_cb;
    node:         union {
        heap:  [3] *void;
        queue: uv__queue;
    };
    timeout:      u64;
    repeat:       u64;
    start_id:     u64;
}

uv_timer_init :: (unknown0: *uv_loop_t, handle: *uv_timer_t) -> s32 #foreign libuv;
uv_timer_start :: (handle: *uv_timer_t, cb: uv_timer_cb, timeout: u64, repeat: u64) -> s32 #foreign libuv;

uv_timer_stop :: (handle: *uv_timer_t) -> s32 #foreign libuv;
uv_timer_again :: (handle: *uv_timer_t) -> s32 #foreign libuv;
uv_timer_set_repeat :: (handle: *uv_timer_t, repeat: u64) -> void #foreign libuv;
uv_timer_get_repeat :: (handle: *uv_timer_t) -> u64 #foreign libuv;
uv_timer_get_due_in :: (handle: *uv_timer_t) -> u64 #foreign libuv;

/*
* uv_getaddrinfo_t is a subclass of uv_req_t.
*
* Request object for uv_getaddrinfo.
*/
uv_getaddrinfo_s :: struct {
    /* public */
    data:      *void;
    /* read-only */
    type:      uv_req_type;
    /* private */
    reserved:  [6] *void;

    /* read-only */
    loop:      *uv_loop_t;

    work_req:  uv__work;
    cb:        uv_getaddrinfo_cb;
    hints:     *addrinfo;
    hostname:  *u8;
    service:   *u8;
    addrinfo_: *addrinfo;
    retcode:   s32;
}

uv_getaddrinfo :: (loop: *uv_loop_t, req: *uv_getaddrinfo_t, getaddrinfo_cb: uv_getaddrinfo_cb, node: *u8, service: *u8, hints: *addrinfo) -> s32 #foreign libuv;

uv_freeaddrinfo :: (ai: *addrinfo) -> void #foreign libuv;

/*
* uv_getnameinfo_t is a subclass of uv_req_t.
*
* Request object for uv_getnameinfo.
*/
uv_getnameinfo_s :: struct {
    /* public */
    data:           *void;
    /* read-only */
    type:           uv_req_type;
    /* private */
    reserved:       [6] *void;

    /* read-only */
    loop:           *uv_loop_t;

    work_req:       uv__work;
    getnameinfo_cb: uv_getnameinfo_cb;
    storage:        sockaddr_storage;
    flags:          s32;
    host:           [1025] u8;
    service:        [32] u8;
    retcode:        s32;
}

uv_getnameinfo :: (loop: *uv_loop_t, req: *uv_getnameinfo_t, getnameinfo_cb: uv_getnameinfo_cb, addr: *sockaddr, flags: s32) -> s32 #foreign libuv;

/* uv_spawn() options. */
uv_stdio_flags :: enum u32 {
    IGNORE          :: 0;
    CREATE_PIPE     :: 1;
    INHERIT_FD      :: 2;
    INHERIT_STREAM  :: 4;

    READABLE_PIPE   :: 16;
    WRITABLE_PIPE   :: 32;

    NONBLOCK_PIPE   :: 64;
    OVERLAPPED_PIPE :: 64;

    UV_IGNORE          :: IGNORE;
    UV_CREATE_PIPE     :: CREATE_PIPE;
    UV_INHERIT_FD      :: INHERIT_FD;
    UV_INHERIT_STREAM  :: INHERIT_STREAM;

    UV_READABLE_PIPE   :: READABLE_PIPE;
    UV_WRITABLE_PIPE   :: WRITABLE_PIPE;

    UV_NONBLOCK_PIPE   :: NONBLOCK_PIPE;
    UV_OVERLAPPED_PIPE :: OVERLAPPED_PIPE;
}

uv_stdio_container_s :: struct {
    flags: uv_stdio_flags;

    data:  union {
        stream: *uv_stream_t;
        fd:     s32;
    };
}

uv_stdio_container_t :: uv_stdio_container_s;

uv_process_options_s :: struct {
    exit_cb:     uv_exit_cb; /* Called after the process exits. */
    file:        *u8; /* Path to program to execute. */

    /*
    * Command line arguments. args[0] should be the path to the program. On
    * Windows this uses CreateProcess which concatenates the arguments into a
    * string this can cause some strange errors. See the note at
    * windows_verbatim_arguments.
    */
    args:        **u8;

    /*
    * This will be set as the environ variable in the subprocess. If this is
    * NULL then the parents environ will be used.
    */
    env:         **u8;

    /*
    * If non-null this represents a directory the subprocess should execute
    * in. Stands for current working directory.
    */
    cwd:         *u8;

    /*
    * Various flags that control how uv_spawn() behaves. See the definition of
    * `enum uv_process_flags` below.
    */
    flags:       u32;

    /*
    * The `stdio` field points to an array of uv_stdio_container_t structs that
    * describe the file descriptors that will be made available to the child
    * process. The convention is that stdio[0] points to stdin, fd 1 is used for
    * stdout, and fd 2 is stderr.
    *
    * Note that on windows file descriptors greater than 2 are available to the
    * child process only if the child processes uses the MSVCRT runtime.
    */
    stdio_count: s32;
    stdio:       *uv_stdio_container_t;

    /*
    * Libuv can change the child process' user/group id. This happens only when
    * the appropriate bits are set in the flags fields. This is not supported on
    * windows; uv_spawn() will fail and set the error to UV_ENOTSUP.
    */
    uid:         uv_uid_t;
    gid:         uv_gid_t;
}

uv_process_options_t :: uv_process_options_s;

/*
* These are the flags that can be used for the uv_process_options.flags field.
*/
uv_process_flags :: enum u32 {
    SETUID                       :: 1;

    SETGID                       :: 2;

    WINDOWS_VERBATIM_ARGUMENTS   :: 4;

    DETACHED                     :: 8;

    WINDOWS_HIDE                 :: 16;

    WINDOWS_HIDE_CONSOLE         :: 32;

    WINDOWS_HIDE_GUI             :: 64;

    WINDOWS_FILE_PATH_EXACT_NAME :: 128;

    UV_PROCESS_SETUID                       :: SETUID;

    UV_PROCESS_SETGID                       :: SETGID;

    UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS   :: WINDOWS_VERBATIM_ARGUMENTS;

    UV_PROCESS_DETACHED                     :: DETACHED;

    UV_PROCESS_WINDOWS_HIDE                 :: WINDOWS_HIDE;

    UV_PROCESS_WINDOWS_HIDE_CONSOLE         :: WINDOWS_HIDE_CONSOLE;

    UV_PROCESS_WINDOWS_HIDE_GUI             :: WINDOWS_HIDE_GUI;

    UV_PROCESS_WINDOWS_FILE_PATH_EXACT_NAME :: WINDOWS_FILE_PATH_EXACT_NAME;
}

/*
* uv_process_t is a subclass of uv_handle_t.
*/
uv_process_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;
    exit_cb:      uv_exit_cb;
    pid:          s32;
    queue:        uv__queue;
    status:       s32;
}

uv_spawn :: (loop: *uv_loop_t, handle: *uv_process_t, options: *uv_process_options_t) -> s32 #foreign libuv;

uv_process_kill :: (unknown0: *uv_process_t, signum: s32) -> s32 #foreign libuv;
uv_kill :: (pid: s32, signum: s32) -> s32 #foreign libuv;
uv_process_get_pid :: (unknown0: *uv_process_t) -> uv_pid_t #foreign libuv;

/*
* uv_work_t is a subclass of uv_req_t.
*/
uv_work_s :: struct {
    /* public */
    data:          *void;
    /* read-only */
    type:          uv_req_type;
    /* private */
    reserved:      [6] *void;
    loop:          *uv_loop_t;
    work_cb:       uv_work_cb;
    after_work_cb: uv_after_work_cb;
    work_req:      uv__work;
}

uv_queue_work :: (loop: *uv_loop_t, req: *uv_work_t, work_cb: uv_work_cb, after_work_cb: uv_after_work_cb) -> s32 #foreign libuv;

uv_cancel :: (req: *uv_req_t) -> s32 #foreign libuv;

uv_cpu_times_s :: struct {
    user: u64; /* milliseconds */
    nice: u64; /* milliseconds */
    sys:  u64; /* milliseconds */
    idle: u64; /* milliseconds */
    irq:  u64; /* milliseconds */
}

uv_cpu_info_s :: struct {
    model:     *u8;
    speed:     s32;
    cpu_times: uv_cpu_times_s;
}

uv_interface_address_s :: struct {
    name:        *u8;
    phys_addr:   [6] u8;
    is_internal: s32;
    address:     union {
        address4: sockaddr_in;
        address6: sockaddr_in6;
    };

    netmask:     union {
        netmask4: sockaddr_in;
        netmask6: sockaddr_in6;
    };
}

uv_passwd_s :: struct {
    username: *u8;
    uid:      u64;
    gid:      u64;
    shell:    *u8;
    homedir:  *u8;
}

uv_group_s :: struct {
    groupname: *u8;
    gid:       u64;
    members:   **u8;
}

uv_utsname_s :: struct {
    sysname: [256] u8;
    release: [256] u8;
    version: [256] u8;
    machine: [256] u8;
}

uv_statfs_s :: struct {
    f_type:   u64;
    f_bsize:  u64;
    f_blocks: u64;
    f_bfree:  u64;
    f_bavail: u64;
    f_files:  u64;
    f_ffree:  u64;
    f_spare:  [4] u64;
}

uv_dirent_type_t :: enum u32 {
    UNKNOWN :: 0;
    FILE    :: 1;
    DIR     :: 2;
    LINK    :: 3;
    FIFO    :: 4;
    SOCKET  :: 5;
    CHAR    :: 6;
    BLOCK   :: 7;

    UV_DIRENT_UNKNOWN :: UNKNOWN;
    UV_DIRENT_FILE    :: FILE;
    UV_DIRENT_DIR     :: DIR;
    UV_DIRENT_LINK    :: LINK;
    UV_DIRENT_FIFO    :: FIFO;
    UV_DIRENT_SOCKET  :: SOCKET;
    UV_DIRENT_CHAR    :: CHAR;
    UV_DIRENT_BLOCK   :: BLOCK;
}

uv_dirent_s :: struct {
    name: *u8;
    type: uv_dirent_type_t;
}

uv_setup_args :: (argc: s32, argv: **u8) -> **u8 #foreign libuv;
uv_get_process_title :: (buffer: *u8, size: u64) -> s32 #foreign libuv;
uv_set_process_title :: (title: *u8) -> s32 #foreign libuv;
uv_resident_set_memory :: (rss: *u64) -> s32 #foreign libuv;
uv_uptime :: (uptime: *float64) -> s32 #foreign libuv;
uv_get_osfhandle :: (fd: s32) -> uv_os_fd_t #foreign libuv;
uv_open_osfhandle :: (os_fd: uv_os_fd_t) -> s32 #foreign libuv;

uv_rusage_t :: struct {
    ru_utime:    uv_timeval_t; /* user CPU time used */
    ru_stime:    uv_timeval_t; /* system CPU time used */
    ru_maxrss:   u64; /* maximum resident set size */
    ru_ixrss:    u64; /* integral shared memory size */
    ru_idrss:    u64; /* integral unshared data size */
    ru_isrss:    u64; /* integral unshared stack size */
    ru_minflt:   u64; /* page reclaims (soft page faults) */
    ru_majflt:   u64; /* page faults (hard page faults) */
    ru_nswap:    u64; /* swaps */
    ru_inblock:  u64; /* block input operations */
    ru_oublock:  u64; /* block output operations */
    ru_msgsnd:   u64; /* IPC messages sent */
    ru_msgrcv:   u64; /* IPC messages received */
    ru_nsignals: u64; /* signals received */
    ru_nvcsw:    u64; /* voluntary context switches */
    ru_nivcsw:   u64; /* involuntary context switches */
}

uv_getrusage :: (rusage: *uv_rusage_t) -> s32 #foreign libuv;
uv_getrusage_thread :: (rusage: *uv_rusage_t) -> s32 #foreign libuv;

uv_os_homedir :: (buffer: *u8, size: *u64) -> s32 #foreign libuv;
uv_os_tmpdir :: (buffer: *u8, size: *u64) -> s32 #foreign libuv;
uv_os_get_passwd :: (pwd: *uv_passwd_t) -> s32 #foreign libuv;
uv_os_free_passwd :: (pwd: *uv_passwd_t) -> void #foreign libuv;
uv_os_get_passwd2 :: (pwd: *uv_passwd_t, uid: uv_uid_t) -> s32 #foreign libuv;
uv_os_get_group :: (grp: *uv_group_t, gid: uv_uid_t) -> s32 #foreign libuv;
uv_os_free_group :: (grp: *uv_group_t) -> void #foreign libuv;
uv_os_getpid :: () -> uv_pid_t #foreign libuv;
uv_os_getppid :: () -> uv_pid_t #foreign libuv;

uv_os_getpriority :: (pid: uv_pid_t, priority: *s32) -> s32 #foreign libuv;
uv_os_setpriority :: (pid: uv_pid_t, priority: s32) -> s32 #foreign libuv;

UV_THREAD_PRIORITY :: enum s32 {
    HIGHEST      :: 2;
    ABOVE_NORMAL :: 1;
    NORMAL       :: 0;
    BELOW_NORMAL :: -1;
    LOWEST       :: -2;

    UV_THREAD_PRIORITY_HIGHEST      :: HIGHEST;
    UV_THREAD_PRIORITY_ABOVE_NORMAL :: ABOVE_NORMAL;
    UV_THREAD_PRIORITY_NORMAL       :: NORMAL;
    UV_THREAD_PRIORITY_BELOW_NORMAL :: BELOW_NORMAL;
    UV_THREAD_PRIORITY_LOWEST       :: LOWEST;
}

uv_thread_getpriority :: (tid: uv_thread_t, priority: *s32) -> s32 #foreign libuv;
uv_thread_setpriority :: (tid: uv_thread_t, priority: s32) -> s32 #foreign libuv;

uv_available_parallelism :: () -> u32 #foreign libuv;
uv_cpu_info :: (cpu_infos: **uv_cpu_info_t, count: *s32) -> s32 #foreign libuv;
uv_free_cpu_info :: (cpu_infos: *uv_cpu_info_t, count: s32) -> void #foreign libuv;
uv_cpumask_size :: () -> s32 #foreign libuv;

uv_interface_addresses :: (addresses: **uv_interface_address_t, count: *s32) -> s32 #foreign libuv;

uv_free_interface_addresses :: (addresses: *uv_interface_address_t, count: s32) -> void #foreign libuv;

uv_env_item_s :: struct {
    name:  *u8;
    value: *u8;
}

uv_os_environ :: (envitems: **uv_env_item_t, count: *s32) -> s32 #foreign libuv;
uv_os_free_environ :: (envitems: *uv_env_item_t, count: s32) -> void #foreign libuv;
uv_os_getenv :: (name: *u8, buffer: *u8, size: *u64) -> s32 #foreign libuv;
uv_os_setenv :: (name: *u8, value: *u8) -> s32 #foreign libuv;
uv_os_unsetenv :: (name: *u8) -> s32 #foreign libuv;

uv_os_gethostname :: (buffer: *u8, size: *u64) -> s32 #foreign libuv;

uv_os_uname :: (buffer: *uv_utsname_t) -> s32 #foreign libuv;

uv_metrics_s :: struct {
    loop_count:     u64;
    events:         u64;
    events_waiting: u64;

    /* private */
    reserved:       [13] *u64;
}

uv_metrics_info :: (loop: *uv_loop_t, metrics: *uv_metrics_t) -> s32 #foreign libuv;
uv_metrics_idle_time :: (loop: *uv_loop_t) -> u64 #foreign libuv;

uv_fs_type :: enum s32 {
    UNKNOWN   :: -1;
    CUSTOM    :: 0;
    OPEN      :: 1;
    CLOSE     :: 2;
    READ      :: 3;
    WRITE     :: 4;
    SENDFILE  :: 5;
    STAT      :: 6;
    LSTAT     :: 7;
    FSTAT     :: 8;
    FTRUNCATE :: 9;
    UTIME     :: 10;
    FUTIME    :: 11;
    ACCESS    :: 12;
    CHMOD     :: 13;
    FCHMOD    :: 14;
    FSYNC     :: 15;
    FDATASYNC :: 16;
    UNLINK    :: 17;
    RMDIR     :: 18;
    MKDIR     :: 19;
    MKDTEMP   :: 20;
    RENAME    :: 21;
    SCANDIR   :: 22;
    LINK      :: 23;
    SYMLINK   :: 24;
    READLINK  :: 25;
    CHOWN     :: 26;
    FCHOWN    :: 27;
    REALPATH  :: 28;
    COPYFILE  :: 29;
    LCHOWN    :: 30;
    OPENDIR   :: 31;
    READDIR   :: 32;
    CLOSEDIR  :: 33;
    STATFS    :: 34;
    MKSTEMP   :: 35;
    LUTIME    :: 36;

    UV_FS_UNKNOWN   :: UNKNOWN;
    UV_FS_CUSTOM    :: CUSTOM;
    UV_FS_OPEN      :: OPEN;
    UV_FS_CLOSE     :: CLOSE;
    UV_FS_READ      :: READ;
    UV_FS_WRITE     :: WRITE;
    UV_FS_SENDFILE  :: SENDFILE;
    UV_FS_STAT      :: STAT;
    UV_FS_LSTAT     :: LSTAT;
    UV_FS_FSTAT     :: FSTAT;
    UV_FS_FTRUNCATE :: FTRUNCATE;
    UV_FS_UTIME     :: UTIME;
    UV_FS_FUTIME    :: FUTIME;
    UV_FS_ACCESS    :: ACCESS;
    UV_FS_CHMOD     :: CHMOD;
    UV_FS_FCHMOD    :: FCHMOD;
    UV_FS_FSYNC     :: FSYNC;
    UV_FS_FDATASYNC :: FDATASYNC;
    UV_FS_UNLINK    :: UNLINK;
    UV_FS_RMDIR     :: RMDIR;
    UV_FS_MKDIR     :: MKDIR;
    UV_FS_MKDTEMP   :: MKDTEMP;
    UV_FS_RENAME    :: RENAME;
    UV_FS_SCANDIR   :: SCANDIR;
    UV_FS_LINK      :: LINK;
    UV_FS_SYMLINK   :: SYMLINK;
    UV_FS_READLINK  :: READLINK;
    UV_FS_CHOWN     :: CHOWN;
    UV_FS_FCHOWN    :: FCHOWN;
    UV_FS_REALPATH  :: REALPATH;
    UV_FS_COPYFILE  :: COPYFILE;
    UV_FS_LCHOWN    :: LCHOWN;
    UV_FS_OPENDIR   :: OPENDIR;
    UV_FS_READDIR   :: READDIR;
    UV_FS_CLOSEDIR  :: CLOSEDIR;
    UV_FS_STATFS    :: STATFS;
    UV_FS_MKSTEMP   :: MKSTEMP;
    UV_FS_LUTIME    :: LUTIME;
}

uv_dir_s :: struct {
    dirents:  *uv_dirent_t;
    nentries: u64;
    reserved: [4] *void;
    dir:      *DIR;
}

/* uv_fs_t is a subclass of uv_req_t. */
uv_fs_s :: struct {
    /* public */
    data:     *void;
    /* read-only */
    type:     uv_req_type;
    /* private */
    reserved: [6] *void;
    fs_type:  uv_fs_type;
    loop:     *uv_loop_t;
    cb:       uv_fs_cb;
    result:   s64;
    ptr:      *void;
    path:     *u8;
    statbuf:  uv_stat_t; /* Stores the result of uv_fs_stat() and uv_fs_fstat(). */
    new_path: *u8;
    file:     uv_file;
    flags:    s32;
    mode:     mode_t;
    nbufs:    u32;
    bufs:     *uv_buf_t;
    off:      s64;
    uid:      uv_uid_t;
    gid:      uv_gid_t;
    atime:    float64;
    mtime:    float64;
    work_req: uv__work;
    bufsml:   [4] uv_buf_t;
}

uv_fs_get_type :: (unknown0: *uv_fs_t) -> uv_fs_type #foreign libuv;
uv_fs_get_result :: (unknown0: *uv_fs_t) -> s64 #foreign libuv;
uv_fs_get_system_error :: (unknown0: *uv_fs_t) -> s32 #foreign libuv;
uv_fs_get_ptr :: (unknown0: *uv_fs_t) -> *void #foreign libuv;
uv_fs_get_path :: (unknown0: *uv_fs_t) -> *u8 #foreign libuv;
uv_fs_get_statbuf :: (unknown0: *uv_fs_t) -> *uv_stat_t #foreign libuv;

uv_fs_req_cleanup :: (req: *uv_fs_t) -> void #foreign libuv;
uv_fs_close :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_open :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, flags: s32, mode: s32, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_read :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, bufs: *uv_buf_t, nbufs: u32, offset: s64, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_unlink :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_write :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, bufs: *uv_buf_t, nbufs: u32, offset: s64, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_copyfile :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, new_path: *u8, flags: s32, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_mkdir :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, mode: s32, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_mkdtemp :: (loop: *uv_loop_t, req: *uv_fs_t, tpl: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_mkstemp :: (loop: *uv_loop_t, req: *uv_fs_t, tpl: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_rmdir :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_scandir :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, flags: s32, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_scandir_next :: (req: *uv_fs_t, ent: *uv_dirent_t) -> s32 #foreign libuv;

uv_fs_opendir :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_readdir :: (loop: *uv_loop_t, req: *uv_fs_t, dir: *uv_dir_t, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_closedir :: (loop: *uv_loop_t, req: *uv_fs_t, dir: *uv_dir_t, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_stat :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_fstat :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_rename :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, new_path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_fsync :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_fdatasync :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_ftruncate :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, offset: s64, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_sendfile :: (loop: *uv_loop_t, req: *uv_fs_t, out_fd: uv_file, in_fd: uv_file, in_offset: s64, length: u64, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_access :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, mode: s32, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_chmod :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, mode: s32, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_utime :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, atime: float64, mtime: float64, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_futime :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, atime: float64, mtime: float64, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_lutime :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, atime: float64, mtime: float64, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_lstat :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_link :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, new_path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_symlink :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, new_path: *u8, flags: s32, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_readlink :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_realpath :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_fchmod :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, mode: s32, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_chown :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, uid: uv_uid_t, gid: uv_gid_t, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_fchown :: (loop: *uv_loop_t, req: *uv_fs_t, file: uv_file, uid: uv_uid_t, gid: uv_gid_t, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_lchown :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, uid: uv_uid_t, gid: uv_gid_t, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_statfs :: (loop: *uv_loop_t, req: *uv_fs_t, path: *u8, cb: uv_fs_cb) -> s32 #foreign libuv;

uv_fs_event :: enum u32 {
    RENAME :: 1;
    CHANGE :: 2;

    UV_RENAME :: RENAME;
    UV_CHANGE :: CHANGE;
}

uv_fs_event_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;

    /* private */
    path:         *u8;
    cb:           uv_fs_event_cb;
    watchers:     uv__queue;
    wd:           s32;
}

/*
* uv_fs_stat() based polling file watcher.
*/
uv_fs_poll_s :: struct {
    /* public */
    data:         *void;
    /* read-only */
    loop:         *uv_loop_t;
    type:         uv_handle_type;
    /* private */
    close_cb:     uv_close_cb;
    handle_queue: uv__queue;
    u:            union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing: *uv_handle_t;
    flags:        u32;

    /* Private, don't touch. */
    poll_ctx:     *void;
}

uv_fs_poll_init :: (loop: *uv_loop_t, handle: *uv_fs_poll_t) -> s32 #foreign libuv;
uv_fs_poll_start :: (handle: *uv_fs_poll_t, poll_cb: uv_fs_poll_cb, path: *u8, interval: u32) -> s32 #foreign libuv;

uv_fs_poll_stop :: (handle: *uv_fs_poll_t) -> s32 #foreign libuv;
uv_fs_poll_getpath :: (handle: *uv_fs_poll_t, buffer: *u8, size: *u64) -> s32 #foreign libuv;

uv_signal_s :: struct {
    /* public */
    data:               *void;
    /* read-only */
    loop:               *uv_loop_t;
    type:               uv_handle_type;
    /* private */
    close_cb:           uv_close_cb;
    handle_queue:       uv__queue;
    u:                  union {
        fd:       s32;
        reserved: [4] *void;
    };
    next_closing:       *uv_handle_t;
    flags:              u32;
    signal_cb:          uv_signal_cb;
    signum:             s32;
    /* RB_ENTRY(uv_signal_s) tree_entry; */
    tree_entry:         struct {
        rbe_left:   *uv_signal_s;
        rbe_right:  *uv_signal_s;
        rbe_parent: *uv_signal_s;
        rbe_color:  s32;
    };
    /* Use two counters here so we don have to fiddle with atomics. */
    caught_signals:     u32;
    dispatched_signals: u32;
}

uv_signal_init :: (loop: *uv_loop_t, handle: *uv_signal_t) -> s32 #foreign libuv;
uv_signal_start :: (handle: *uv_signal_t, signal_cb: uv_signal_cb, signum: s32) -> s32 #foreign libuv;

uv_signal_start_oneshot :: (handle: *uv_signal_t, signal_cb: uv_signal_cb, signum: s32) -> s32 #foreign libuv;

uv_signal_stop :: (handle: *uv_signal_t) -> s32 #foreign libuv;

uv_loadavg :: (avg: *[3] float64) -> void #foreign libuv;

/*
* Flags to be passed to uv_fs_event_start().
*/
uv_fs_event_flags :: enum u32 {
    WATCH_ENTRY :: 1;

    STAT        :: 2;

    RECURSIVE   :: 4;

    UV_FS_EVENT_WATCH_ENTRY :: WATCH_ENTRY;

    UV_FS_EVENT_STAT        :: STAT;

    UV_FS_EVENT_RECURSIVE   :: RECURSIVE;
}

uv_fs_event_init :: (loop: *uv_loop_t, handle: *uv_fs_event_t) -> s32 #foreign libuv;
uv_fs_event_start :: (handle: *uv_fs_event_t, cb: uv_fs_event_cb, path: *u8, flags: u32) -> s32 #foreign libuv;

uv_fs_event_stop :: (handle: *uv_fs_event_t) -> s32 #foreign libuv;
uv_fs_event_getpath :: (handle: *uv_fs_event_t, buffer: *u8, size: *u64) -> s32 #foreign libuv;

uv_ip4_addr :: (ip: *u8, port: s32, addr: *sockaddr_in) -> s32 #foreign libuv;
uv_ip6_addr :: (ip: *u8, port: s32, addr: *sockaddr_in6) -> s32 #foreign libuv;

uv_ip4_name :: (src: *sockaddr_in, dst: *u8, size: u64) -> s32 #foreign libuv;
uv_ip6_name :: (src: *sockaddr_in6, dst: *u8, size: u64) -> s32 #foreign libuv;
uv_ip_name :: (src: *sockaddr, dst: *u8, size: u64) -> s32 #foreign libuv;

uv_inet_ntop :: (af: s32, src: *void, dst: *u8, size: u64) -> s32 #foreign libuv;
uv_inet_pton :: (af: s32, src: *u8, dst: *void) -> s32 #foreign libuv;

uv_random_s :: struct {
    /* public */
    data:     *void;
    /* read-only */
    type:     uv_req_type;
    /* private */
    reserved: [6] *void;

    /* read-only */
    loop:     *uv_loop_t;

    /* private */
    status:   s32;
    buf:      *void;
    buflen:   u64;
    cb:       uv_random_cb;
    work_req: uv__work;
}

uv_random :: (loop: *uv_loop_t, req: *uv_random_t, buf: *void, buflen: u64, flags: u32, cb: uv_random_cb) -> s32 #foreign libuv;

uv_if_indextoname :: (ifindex: u32, buffer: *u8, size: *u64) -> s32 #foreign libuv;

uv_if_indextoiid :: (ifindex: u32, buffer: *u8, size: *u64) -> s32 #foreign libuv;

uv_exepath :: (buffer: *u8, size: *u64) -> s32 #foreign libuv;

uv_cwd :: (buffer: *u8, size: *u64) -> s32 #foreign libuv;

uv_chdir :: (dir: *u8) -> s32 #foreign libuv;

uv_get_free_memory :: () -> u64 #foreign libuv;
uv_get_total_memory :: () -> u64 #foreign libuv;
uv_get_constrained_memory :: () -> u64 #foreign libuv;
uv_get_available_memory :: () -> u64 #foreign libuv;

uv_clock_gettime :: (clock_id: uv_clock_id, ts: *uv_timespec64_t) -> s32 #foreign libuv;
uv_hrtime :: () -> u64 #foreign libuv;
uv_sleep :: (msec: u32) -> void #foreign libuv;

uv_disable_stdio_inheritance :: () -> void #foreign libuv;

uv_dlopen :: (filename: *u8, lib: *uv_lib_t) -> s32 #foreign libuv;
uv_dlclose :: (lib: *uv_lib_t) -> void #foreign libuv;
uv_dlsym :: (lib: *uv_lib_t, name: *u8, ptr: **void) -> s32 #foreign libuv;
uv_dlerror :: (lib: *uv_lib_t) -> *u8 #foreign libuv;

uv_mutex_init :: (handle: *uv_mutex_t) -> s32 #foreign libuv;
uv_mutex_init_recursive :: (handle: *uv_mutex_t) -> s32 #foreign libuv;
uv_mutex_destroy :: (handle: *uv_mutex_t) -> void #foreign libuv;
uv_mutex_lock :: (handle: *uv_mutex_t) -> void #foreign libuv;
uv_mutex_trylock :: (handle: *uv_mutex_t) -> s32 #foreign libuv;
uv_mutex_unlock :: (handle: *uv_mutex_t) -> void #foreign libuv;

uv_rwlock_init :: (rwlock: *uv_rwlock_t) -> s32 #foreign libuv;
uv_rwlock_destroy :: (rwlock: *uv_rwlock_t) -> void #foreign libuv;
uv_rwlock_rdlock :: (rwlock: *uv_rwlock_t) -> void #foreign libuv;
uv_rwlock_tryrdlock :: (rwlock: *uv_rwlock_t) -> s32 #foreign libuv;
uv_rwlock_rdunlock :: (rwlock: *uv_rwlock_t) -> void #foreign libuv;
uv_rwlock_wrlock :: (rwlock: *uv_rwlock_t) -> void #foreign libuv;
uv_rwlock_trywrlock :: (rwlock: *uv_rwlock_t) -> s32 #foreign libuv;
uv_rwlock_wrunlock :: (rwlock: *uv_rwlock_t) -> void #foreign libuv;

uv_sem_init :: (sem: *uv_sem_t, value: u32) -> s32 #foreign libuv;
uv_sem_destroy :: (sem: *uv_sem_t) -> void #foreign libuv;
uv_sem_post :: (sem: *uv_sem_t) -> void #foreign libuv;
uv_sem_wait :: (sem: *uv_sem_t) -> void #foreign libuv;
uv_sem_trywait :: (sem: *uv_sem_t) -> s32 #foreign libuv;

uv_cond_init :: (cond: *uv_cond_t) -> s32 #foreign libuv;
uv_cond_destroy :: (cond: *uv_cond_t) -> void #foreign libuv;
uv_cond_signal :: (cond: *uv_cond_t) -> void #foreign libuv;
uv_cond_broadcast :: (cond: *uv_cond_t) -> void #foreign libuv;

uv_barrier_init :: (barrier: *uv_barrier_t, count: u32) -> s32 #foreign libuv;
uv_barrier_destroy :: (barrier: *uv_barrier_t) -> void #foreign libuv;
uv_barrier_wait :: (barrier: *uv_barrier_t) -> s32 #foreign libuv;

uv_cond_wait :: (cond: *uv_cond_t, mutex: *uv_mutex_t) -> void #foreign libuv;
uv_cond_timedwait :: (cond: *uv_cond_t, mutex: *uv_mutex_t, timeout: u64) -> s32 #foreign libuv;

uv_once :: (guard: *uv_once_t, callback: #type () -> void #c_call) -> void #foreign libuv;

uv_key_create :: (key: *uv_key_t) -> s32 #foreign libuv;
uv_key_delete :: (key: *uv_key_t) -> void #foreign libuv;
uv_key_get :: (key: *uv_key_t) -> *void #foreign libuv;
uv_key_set :: (key: *uv_key_t, value: *void) -> void #foreign libuv;

uv_gettimeofday :: (tv: *uv_timeval64_t) -> s32 #foreign libuv;

uv_thread_cb :: #type (arg: *void) -> void #c_call;

uv_thread_create :: (tid: *uv_thread_t, entry: uv_thread_cb, arg: *void) -> s32 #foreign libuv;
uv_thread_detach :: (tid: *uv_thread_t) -> s32 #foreign libuv;

uv_thread_create_flags :: enum u32 {
    NO_FLAGS       :: 0;
    HAS_STACK_SIZE :: 1;

    UV_THREAD_NO_FLAGS       :: NO_FLAGS;
    UV_THREAD_HAS_STACK_SIZE :: HAS_STACK_SIZE;
}

uv_thread_options_s :: struct {
    flags:      u32;
    stack_size: u64;
}

uv_thread_options_t :: uv_thread_options_s;

uv_thread_create_ex :: (tid: *uv_thread_t, params: *uv_thread_options_t, entry: uv_thread_cb, arg: *void) -> s32 #foreign libuv;

uv_thread_setaffinity :: (tid: *uv_thread_t, cpumask: *u8, oldmask: *u8, mask_size: u64) -> s32 #foreign libuv;

uv_thread_getaffinity :: (tid: *uv_thread_t, cpumask: *u8, mask_size: u64) -> s32 #foreign libuv;

uv_thread_getcpu :: () -> s32 #foreign libuv;
uv_thread_self :: () -> uv_thread_t #foreign libuv;
uv_thread_join :: (tid: *uv_thread_t) -> s32 #foreign libuv;
uv_thread_equal :: (t1: *uv_thread_t, t2: *uv_thread_t) -> s32 #foreign libuv;
uv_thread_setname :: (name: *u8) -> s32 #foreign libuv;
uv_thread_getname :: (tid: *uv_thread_t, name: *u8, size: u64) -> s32 #foreign libuv;

uv_any_handle :: union {
    async:    uv_async_t;
    check:    uv_check_t;
    fs_event: uv_fs_event_t;
    fs_poll:  uv_fs_poll_t;
    handle:   uv_handle_t;
    idle:     uv_idle_t;
    pipe:     uv_pipe_t;
    poll:     uv_poll_t;
    prepare:  uv_prepare_t;
    process:  uv_process_t;
    stream:   uv_stream_t;
    tcp:      uv_tcp_t;
    timer:    uv_timer_t;
    tty:      uv_tty_t;
    udp:      uv_udp_t;
    signal:   uv_signal_t;
}

uv_any_req :: union {
    req:         uv_req_t;
    connect:     uv_connect_t;
    write:       uv_write_t;
    shutdown:    uv_shutdown_t;
    udp_send:    uv_udp_send_t;
    fs:          uv_fs_t;
    work:        uv_work_t;
    getaddrinfo: uv_getaddrinfo_t;
    getnameinfo: uv_getnameinfo_t;
    random:      uv_random_t;
}

uv_loop_s :: struct {
    /* User data - use this for whatever. */
    data:                 *void;

    /* Loop reference counting. */
    active_handles:       u32;
    handle_queue:         uv__queue;
    active_reqs:          union {
        unused: *void;
        count:  u32;
    };

    /* Internal storage for future extensions. */
    internal_fields:      *void;

    /* Internal flag to signal loop stop. */
    stop_flag:            u32;
    flags:                u64;
    backend_fd:           s32;
    pending_queue:        uv__queue;
    watcher_queue:        uv__queue;
    watchers:             **uv__io_t;
    nwatchers:            u32;
    nfds:                 u32;
    wq:                   uv__queue;
    wq_mutex:             uv_mutex_t;
    wq_async:             uv_async_t;
    cloexec_lock:         uv_rwlock_t;
    closing_handles:      *uv_handle_t;
    process_handles:      uv__queue;
    prepare_handles:      uv__queue;
    check_handles:        uv__queue;
    idle_handles:         uv__queue;
    async_handles:        uv__queue;
    /* TODO(bnoordhuis) Remove in libuv v2. */
    async_unused:         #type () -> void #c_call;
    async_io_watcher:     uv__io_t;
    async_wfd:            s32;
    timer_heap:           struct {
        min:   *void;
        nelts: u32;
    };
    timer_counter:        u64;
    time:                 u64;
    signal_pipefd:        [2] s32;
    signal_io_watcher:    uv__io_t;
    child_watcher:        uv_signal_t;
    emfile_fd:            s32;
    inotify_read_watcher: uv__io_t;
    inotify_watchers:     *void;
    inotify_fd:           s32;
}

uv_loop_get_data :: (unknown0: *uv_loop_t) -> *void #foreign libuv;
uv_loop_set_data :: (unknown0: *uv_loop_t, data: *void) -> void #foreign libuv;

/* Unicode utilities needed for dealing with Windows. */
uv_utf16_length_as_wtf8 :: (utf16: *u16, utf16_len: s64) -> u64 #foreign libuv;

uv_utf16_to_wtf8 :: (utf16: *u16, utf16_len: s64, wtf8_ptr: **u8, wtf8_len_ptr: *u64) -> s32 #foreign libuv;

uv_wtf8_length_as_utf16 :: (wtf8: *u8) -> s64 #foreign libuv;
uv_wtf8_to_utf16 :: (wtf8: *u8, utf16: *u16, utf16_len: u64) -> void #foreign libuv;

#scope_file

#import "Basic"; // For assert

libuv :: #library "libuv/build/libuv";
libc :: #library,system "libc";

#run {
    {
        instance: uv__queue;
        assert(((cast(*void)(*instance.next)) - cast(*void)(*instance)) == 0, "uv__queue.next has unexpected offset % instead of 0", ((cast(*void)(*instance.next)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__queue.next)) == 8, "uv__queue.next has unexpected size % instead of 8", size_of(type_of(uv__queue.next)));
        assert(((cast(*void)(*instance.prev)) - cast(*void)(*instance)) == 8, "uv__queue.prev has unexpected offset % instead of 8", ((cast(*void)(*instance.prev)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__queue.prev)) == 8, "uv__queue.prev has unexpected size % instead of 8", size_of(type_of(uv__queue.prev)));
        assert(size_of(uv__queue) == 16, "uv__queue has size % instead of 16", size_of(uv__queue));
    }

    {
        instance: uv__work;
        assert(((cast(*void)(*instance.work)) - cast(*void)(*instance)) == 0, "uv__work.work has unexpected offset % instead of 0", ((cast(*void)(*instance.work)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__work.work)) == 8, "uv__work.work has unexpected size % instead of 8", size_of(type_of(uv__work.work)));
        assert(((cast(*void)(*instance.done)) - cast(*void)(*instance)) == 8, "uv__work.done has unexpected offset % instead of 8", ((cast(*void)(*instance.done)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__work.done)) == 8, "uv__work.done has unexpected size % instead of 8", size_of(type_of(uv__work.done)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 16, "uv__work.loop has unexpected offset % instead of 16", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__work.loop)) == 8, "uv__work.loop has unexpected size % instead of 8", size_of(type_of(uv__work.loop)));
        assert(((cast(*void)(*instance.wq)) - cast(*void)(*instance)) == 24, "uv__work.wq has unexpected offset % instead of 24", ((cast(*void)(*instance.wq)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__work.wq)) == 16, "uv__work.wq has unexpected size % instead of 16", size_of(type_of(uv__work.wq)));
        assert(size_of(uv__work) == 40, "uv__work has size % instead of 40", size_of(uv__work));
    }

    {
        instance: uv__io_s;
        assert(((cast(*void)(*instance.cb)) - cast(*void)(*instance)) == 0, "uv__io_s.cb has unexpected offset % instead of 0", ((cast(*void)(*instance.cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__io_s.cb)) == 8, "uv__io_s.cb has unexpected size % instead of 8", size_of(type_of(uv__io_s.cb)));
        assert(((cast(*void)(*instance.pending_queue)) - cast(*void)(*instance)) == 8, "uv__io_s.pending_queue has unexpected offset % instead of 8", ((cast(*void)(*instance.pending_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__io_s.pending_queue)) == 16, "uv__io_s.pending_queue has unexpected size % instead of 16", size_of(type_of(uv__io_s.pending_queue)));
        assert(((cast(*void)(*instance.watcher_queue)) - cast(*void)(*instance)) == 24, "uv__io_s.watcher_queue has unexpected offset % instead of 24", ((cast(*void)(*instance.watcher_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__io_s.watcher_queue)) == 16, "uv__io_s.watcher_queue has unexpected size % instead of 16", size_of(type_of(uv__io_s.watcher_queue)));
        assert(((cast(*void)(*instance.pevents)) - cast(*void)(*instance)) == 40, "uv__io_s.pevents has unexpected offset % instead of 40", ((cast(*void)(*instance.pevents)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__io_s.pevents)) == 4, "uv__io_s.pevents has unexpected size % instead of 4", size_of(type_of(uv__io_s.pevents)));
        assert(((cast(*void)(*instance.events)) - cast(*void)(*instance)) == 44, "uv__io_s.events has unexpected offset % instead of 44", ((cast(*void)(*instance.events)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__io_s.events)) == 4, "uv__io_s.events has unexpected size % instead of 4", size_of(type_of(uv__io_s.events)));
        assert(((cast(*void)(*instance.fd)) - cast(*void)(*instance)) == 48, "uv__io_s.fd has unexpected offset % instead of 48", ((cast(*void)(*instance.fd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv__io_s.fd)) == 4, "uv__io_s.fd has unexpected size % instead of 4", size_of(type_of(uv__io_s.fd)));
        assert(size_of(uv__io_s) == 56, "uv__io_s has size % instead of 56", size_of(uv__io_s));
    }

    {
        instance: uv_buf_t;
        assert(((cast(*void)(*instance.base)) - cast(*void)(*instance)) == 0, "uv_buf_t.base has unexpected offset % instead of 0", ((cast(*void)(*instance.base)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_buf_t.base)) == 8, "uv_buf_t.base has unexpected size % instead of 8", size_of(type_of(uv_buf_t.base)));
        assert(((cast(*void)(*instance.len)) - cast(*void)(*instance)) == 8, "uv_buf_t.len has unexpected offset % instead of 8", ((cast(*void)(*instance.len)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_buf_t.len)) == 8, "uv_buf_t.len has unexpected size % instead of 8", size_of(type_of(uv_buf_t.len)));
        assert(size_of(uv_buf_t) == 16, "uv_buf_t has size % instead of 16", size_of(uv_buf_t));
    }

    {
        instance: uv_lib_t;
        assert(((cast(*void)(*instance.handle)) - cast(*void)(*instance)) == 0, "uv_lib_t.handle has unexpected offset % instead of 0", ((cast(*void)(*instance.handle)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_lib_t.handle)) == 8, "uv_lib_t.handle has unexpected size % instead of 8", size_of(type_of(uv_lib_t.handle)));
        assert(((cast(*void)(*instance.errmsg)) - cast(*void)(*instance)) == 8, "uv_lib_t.errmsg has unexpected offset % instead of 8", ((cast(*void)(*instance.errmsg)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_lib_t.errmsg)) == 8, "uv_lib_t.errmsg has unexpected size % instead of 8", size_of(type_of(uv_lib_t.errmsg)));
        assert(size_of(uv_lib_t) == 16, "uv_lib_t has size % instead of 16", size_of(uv_lib_t));
    }

    {
        instance: uv_timespec_t;
        assert(((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)) == 0, "uv_timespec_t.tv_sec has unexpected offset % instead of 0", ((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timespec_t.tv_sec)) == 8, "uv_timespec_t.tv_sec has unexpected size % instead of 8", size_of(type_of(uv_timespec_t.tv_sec)));
        assert(((cast(*void)(*instance.tv_nsec)) - cast(*void)(*instance)) == 8, "uv_timespec_t.tv_nsec has unexpected offset % instead of 8", ((cast(*void)(*instance.tv_nsec)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timespec_t.tv_nsec)) == 8, "uv_timespec_t.tv_nsec has unexpected size % instead of 8", size_of(type_of(uv_timespec_t.tv_nsec)));
        assert(size_of(uv_timespec_t) == 16, "uv_timespec_t has size % instead of 16", size_of(uv_timespec_t));
    }

    {
        instance: uv_timespec64_t;
        assert(((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)) == 0, "uv_timespec64_t.tv_sec has unexpected offset % instead of 0", ((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timespec64_t.tv_sec)) == 8, "uv_timespec64_t.tv_sec has unexpected size % instead of 8", size_of(type_of(uv_timespec64_t.tv_sec)));
        assert(((cast(*void)(*instance.tv_nsec)) - cast(*void)(*instance)) == 8, "uv_timespec64_t.tv_nsec has unexpected offset % instead of 8", ((cast(*void)(*instance.tv_nsec)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timespec64_t.tv_nsec)) == 4, "uv_timespec64_t.tv_nsec has unexpected size % instead of 4", size_of(type_of(uv_timespec64_t.tv_nsec)));
        assert(size_of(uv_timespec64_t) == 16, "uv_timespec64_t has size % instead of 16", size_of(uv_timespec64_t));
    }

    {
        instance: uv_timeval_t;
        assert(((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)) == 0, "uv_timeval_t.tv_sec has unexpected offset % instead of 0", ((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timeval_t.tv_sec)) == 8, "uv_timeval_t.tv_sec has unexpected size % instead of 8", size_of(type_of(uv_timeval_t.tv_sec)));
        assert(((cast(*void)(*instance.tv_usec)) - cast(*void)(*instance)) == 8, "uv_timeval_t.tv_usec has unexpected offset % instead of 8", ((cast(*void)(*instance.tv_usec)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timeval_t.tv_usec)) == 8, "uv_timeval_t.tv_usec has unexpected size % instead of 8", size_of(type_of(uv_timeval_t.tv_usec)));
        assert(size_of(uv_timeval_t) == 16, "uv_timeval_t has size % instead of 16", size_of(uv_timeval_t));
    }

    {
        instance: uv_timeval64_t;
        assert(((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)) == 0, "uv_timeval64_t.tv_sec has unexpected offset % instead of 0", ((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timeval64_t.tv_sec)) == 8, "uv_timeval64_t.tv_sec has unexpected size % instead of 8", size_of(type_of(uv_timeval64_t.tv_sec)));
        assert(((cast(*void)(*instance.tv_usec)) - cast(*void)(*instance)) == 8, "uv_timeval64_t.tv_usec has unexpected offset % instead of 8", ((cast(*void)(*instance.tv_usec)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timeval64_t.tv_usec)) == 4, "uv_timeval64_t.tv_usec has unexpected size % instead of 4", size_of(type_of(uv_timeval64_t.tv_usec)));
        assert(size_of(uv_timeval64_t) == 16, "uv_timeval64_t has size % instead of 16", size_of(uv_timeval64_t));
    }

    {
        instance: uv_stat_t;
        assert(((cast(*void)(*instance.st_dev)) - cast(*void)(*instance)) == 0, "uv_stat_t.st_dev has unexpected offset % instead of 0", ((cast(*void)(*instance.st_dev)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_dev)) == 8, "uv_stat_t.st_dev has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_dev)));
        assert(((cast(*void)(*instance.st_mode)) - cast(*void)(*instance)) == 8, "uv_stat_t.st_mode has unexpected offset % instead of 8", ((cast(*void)(*instance.st_mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_mode)) == 8, "uv_stat_t.st_mode has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_mode)));
        assert(((cast(*void)(*instance.st_nlink)) - cast(*void)(*instance)) == 16, "uv_stat_t.st_nlink has unexpected offset % instead of 16", ((cast(*void)(*instance.st_nlink)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_nlink)) == 8, "uv_stat_t.st_nlink has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_nlink)));
        assert(((cast(*void)(*instance.st_uid)) - cast(*void)(*instance)) == 24, "uv_stat_t.st_uid has unexpected offset % instead of 24", ((cast(*void)(*instance.st_uid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_uid)) == 8, "uv_stat_t.st_uid has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_uid)));
        assert(((cast(*void)(*instance.st_gid)) - cast(*void)(*instance)) == 32, "uv_stat_t.st_gid has unexpected offset % instead of 32", ((cast(*void)(*instance.st_gid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_gid)) == 8, "uv_stat_t.st_gid has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_gid)));
        assert(((cast(*void)(*instance.st_rdev)) - cast(*void)(*instance)) == 40, "uv_stat_t.st_rdev has unexpected offset % instead of 40", ((cast(*void)(*instance.st_rdev)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_rdev)) == 8, "uv_stat_t.st_rdev has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_rdev)));
        assert(((cast(*void)(*instance.st_ino)) - cast(*void)(*instance)) == 48, "uv_stat_t.st_ino has unexpected offset % instead of 48", ((cast(*void)(*instance.st_ino)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_ino)) == 8, "uv_stat_t.st_ino has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_ino)));
        assert(((cast(*void)(*instance.st_size)) - cast(*void)(*instance)) == 56, "uv_stat_t.st_size has unexpected offset % instead of 56", ((cast(*void)(*instance.st_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_size)) == 8, "uv_stat_t.st_size has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_size)));
        assert(((cast(*void)(*instance.st_blksize)) - cast(*void)(*instance)) == 64, "uv_stat_t.st_blksize has unexpected offset % instead of 64", ((cast(*void)(*instance.st_blksize)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_blksize)) == 8, "uv_stat_t.st_blksize has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_blksize)));
        assert(((cast(*void)(*instance.st_blocks)) - cast(*void)(*instance)) == 72, "uv_stat_t.st_blocks has unexpected offset % instead of 72", ((cast(*void)(*instance.st_blocks)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_blocks)) == 8, "uv_stat_t.st_blocks has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_blocks)));
        assert(((cast(*void)(*instance.st_flags)) - cast(*void)(*instance)) == 80, "uv_stat_t.st_flags has unexpected offset % instead of 80", ((cast(*void)(*instance.st_flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_flags)) == 8, "uv_stat_t.st_flags has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_flags)));
        assert(((cast(*void)(*instance.st_gen)) - cast(*void)(*instance)) == 88, "uv_stat_t.st_gen has unexpected offset % instead of 88", ((cast(*void)(*instance.st_gen)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_gen)) == 8, "uv_stat_t.st_gen has unexpected size % instead of 8", size_of(type_of(uv_stat_t.st_gen)));
        assert(((cast(*void)(*instance.st_atim)) - cast(*void)(*instance)) == 96, "uv_stat_t.st_atim has unexpected offset % instead of 96", ((cast(*void)(*instance.st_atim)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_atim)) == 16, "uv_stat_t.st_atim has unexpected size % instead of 16", size_of(type_of(uv_stat_t.st_atim)));
        assert(((cast(*void)(*instance.st_mtim)) - cast(*void)(*instance)) == 112, "uv_stat_t.st_mtim has unexpected offset % instead of 112", ((cast(*void)(*instance.st_mtim)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_mtim)) == 16, "uv_stat_t.st_mtim has unexpected size % instead of 16", size_of(type_of(uv_stat_t.st_mtim)));
        assert(((cast(*void)(*instance.st_ctim)) - cast(*void)(*instance)) == 128, "uv_stat_t.st_ctim has unexpected offset % instead of 128", ((cast(*void)(*instance.st_ctim)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_ctim)) == 16, "uv_stat_t.st_ctim has unexpected size % instead of 16", size_of(type_of(uv_stat_t.st_ctim)));
        assert(((cast(*void)(*instance.st_birthtim)) - cast(*void)(*instance)) == 144, "uv_stat_t.st_birthtim has unexpected offset % instead of 144", ((cast(*void)(*instance.st_birthtim)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stat_t.st_birthtim)) == 16, "uv_stat_t.st_birthtim has unexpected size % instead of 16", size_of(type_of(uv_stat_t.st_birthtim)));
        assert(size_of(uv_stat_t) == 160, "uv_stat_t has size % instead of 160", size_of(uv_stat_t));
    }

    {
        instance: uv_req_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_req_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_req_s.data)) == 8, "uv_req_s.data has unexpected size % instead of 8", size_of(type_of(uv_req_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_req_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_req_s.type)) == 4, "uv_req_s.type has unexpected size % instead of 4", size_of(type_of(uv_req_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_req_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_req_s.reserved)) == 48, "uv_req_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_req_s.reserved)));
        assert(size_of(uv_req_s) == 64, "uv_req_s has size % instead of 64", size_of(uv_req_s));
    }

    {
        instance: uv_shutdown_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_shutdown_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_shutdown_s.data)) == 8, "uv_shutdown_s.data has unexpected size % instead of 8", size_of(type_of(uv_shutdown_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_shutdown_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_shutdown_s.type)) == 4, "uv_shutdown_s.type has unexpected size % instead of 4", size_of(type_of(uv_shutdown_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_shutdown_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_shutdown_s.reserved)) == 48, "uv_shutdown_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_shutdown_s.reserved)));
        assert(((cast(*void)(*instance.handle)) - cast(*void)(*instance)) == 64, "uv_shutdown_s.handle has unexpected offset % instead of 64", ((cast(*void)(*instance.handle)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_shutdown_s.handle)) == 8, "uv_shutdown_s.handle has unexpected size % instead of 8", size_of(type_of(uv_shutdown_s.handle)));
        assert(((cast(*void)(*instance.cb)) - cast(*void)(*instance)) == 72, "uv_shutdown_s.cb has unexpected offset % instead of 72", ((cast(*void)(*instance.cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_shutdown_s.cb)) == 8, "uv_shutdown_s.cb has unexpected size % instead of 8", size_of(type_of(uv_shutdown_s.cb)));
        assert(size_of(uv_shutdown_s) == 80, "uv_shutdown_s has size % instead of 80", size_of(uv_shutdown_s));
    }

    {
        instance: uv_handle_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_handle_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_handle_s.data)) == 8, "uv_handle_s.data has unexpected size % instead of 8", size_of(type_of(uv_handle_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_handle_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_handle_s.loop)) == 8, "uv_handle_s.loop has unexpected size % instead of 8", size_of(type_of(uv_handle_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_handle_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_handle_s.type)) == 4, "uv_handle_s.type has unexpected size % instead of 4", size_of(type_of(uv_handle_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_handle_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_handle_s.close_cb)) == 8, "uv_handle_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_handle_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_handle_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_handle_s.handle_queue)) == 16, "uv_handle_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_handle_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_handle_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_handle_s.u)) == 32, "uv_handle_s.u has unexpected size % instead of 32", size_of(type_of(uv_handle_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_handle_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_handle_s.next_closing)) == 8, "uv_handle_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_handle_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_handle_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_handle_s.flags)) == 4, "uv_handle_s.flags has unexpected size % instead of 4", size_of(type_of(uv_handle_s.flags)));
        assert(size_of(uv_handle_s) == 96, "uv_handle_s has size % instead of 96", size_of(uv_handle_s));
    }

    {
        instance: uv_stream_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_stream_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.data)) == 8, "uv_stream_s.data has unexpected size % instead of 8", size_of(type_of(uv_stream_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_stream_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.loop)) == 8, "uv_stream_s.loop has unexpected size % instead of 8", size_of(type_of(uv_stream_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_stream_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.type)) == 4, "uv_stream_s.type has unexpected size % instead of 4", size_of(type_of(uv_stream_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_stream_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.close_cb)) == 8, "uv_stream_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_stream_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_stream_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.handle_queue)) == 16, "uv_stream_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_stream_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_stream_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.u)) == 32, "uv_stream_s.u has unexpected size % instead of 32", size_of(type_of(uv_stream_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_stream_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.next_closing)) == 8, "uv_stream_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_stream_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_stream_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.flags)) == 4, "uv_stream_s.flags has unexpected size % instead of 4", size_of(type_of(uv_stream_s.flags)));
        assert(((cast(*void)(*instance.write_queue_size)) - cast(*void)(*instance)) == 96, "uv_stream_s.write_queue_size has unexpected offset % instead of 96", ((cast(*void)(*instance.write_queue_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.write_queue_size)) == 8, "uv_stream_s.write_queue_size has unexpected size % instead of 8", size_of(type_of(uv_stream_s.write_queue_size)));
        assert(((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)) == 104, "uv_stream_s.alloc_cb has unexpected offset % instead of 104", ((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.alloc_cb)) == 8, "uv_stream_s.alloc_cb has unexpected size % instead of 8", size_of(type_of(uv_stream_s.alloc_cb)));
        assert(((cast(*void)(*instance.read_cb)) - cast(*void)(*instance)) == 112, "uv_stream_s.read_cb has unexpected offset % instead of 112", ((cast(*void)(*instance.read_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.read_cb)) == 8, "uv_stream_s.read_cb has unexpected size % instead of 8", size_of(type_of(uv_stream_s.read_cb)));
        assert(((cast(*void)(*instance.connect_req)) - cast(*void)(*instance)) == 120, "uv_stream_s.connect_req has unexpected offset % instead of 120", ((cast(*void)(*instance.connect_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.connect_req)) == 8, "uv_stream_s.connect_req has unexpected size % instead of 8", size_of(type_of(uv_stream_s.connect_req)));
        assert(((cast(*void)(*instance.shutdown_req)) - cast(*void)(*instance)) == 128, "uv_stream_s.shutdown_req has unexpected offset % instead of 128", ((cast(*void)(*instance.shutdown_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.shutdown_req)) == 8, "uv_stream_s.shutdown_req has unexpected size % instead of 8", size_of(type_of(uv_stream_s.shutdown_req)));
        assert(((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)) == 136, "uv_stream_s.io_watcher has unexpected offset % instead of 136", ((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.io_watcher)) == 56, "uv_stream_s.io_watcher has unexpected size % instead of 56", size_of(type_of(uv_stream_s.io_watcher)));
        assert(((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)) == 192, "uv_stream_s.write_queue has unexpected offset % instead of 192", ((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.write_queue)) == 16, "uv_stream_s.write_queue has unexpected size % instead of 16", size_of(type_of(uv_stream_s.write_queue)));
        assert(((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)) == 208, "uv_stream_s.write_completed_queue has unexpected offset % instead of 208", ((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.write_completed_queue)) == 16, "uv_stream_s.write_completed_queue has unexpected size % instead of 16", size_of(type_of(uv_stream_s.write_completed_queue)));
        assert(((cast(*void)(*instance.connection_cb)) - cast(*void)(*instance)) == 224, "uv_stream_s.connection_cb has unexpected offset % instead of 224", ((cast(*void)(*instance.connection_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.connection_cb)) == 8, "uv_stream_s.connection_cb has unexpected size % instead of 8", size_of(type_of(uv_stream_s.connection_cb)));
        assert(((cast(*void)(*instance.delayed_error)) - cast(*void)(*instance)) == 232, "uv_stream_s.delayed_error has unexpected offset % instead of 232", ((cast(*void)(*instance.delayed_error)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.delayed_error)) == 4, "uv_stream_s.delayed_error has unexpected size % instead of 4", size_of(type_of(uv_stream_s.delayed_error)));
        assert(((cast(*void)(*instance.accepted_fd)) - cast(*void)(*instance)) == 236, "uv_stream_s.accepted_fd has unexpected offset % instead of 236", ((cast(*void)(*instance.accepted_fd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.accepted_fd)) == 4, "uv_stream_s.accepted_fd has unexpected size % instead of 4", size_of(type_of(uv_stream_s.accepted_fd)));
        assert(((cast(*void)(*instance.queued_fds)) - cast(*void)(*instance)) == 240, "uv_stream_s.queued_fds has unexpected offset % instead of 240", ((cast(*void)(*instance.queued_fds)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stream_s.queued_fds)) == 8, "uv_stream_s.queued_fds has unexpected size % instead of 8", size_of(type_of(uv_stream_s.queued_fds)));
        assert(size_of(uv_stream_s) == 248, "uv_stream_s has size % instead of 248", size_of(uv_stream_s));
    }

    {
        instance: uv_write_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_write_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.data)) == 8, "uv_write_s.data has unexpected size % instead of 8", size_of(type_of(uv_write_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_write_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.type)) == 4, "uv_write_s.type has unexpected size % instead of 4", size_of(type_of(uv_write_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_write_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.reserved)) == 48, "uv_write_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_write_s.reserved)));
        assert(((cast(*void)(*instance.cb)) - cast(*void)(*instance)) == 64, "uv_write_s.cb has unexpected offset % instead of 64", ((cast(*void)(*instance.cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.cb)) == 8, "uv_write_s.cb has unexpected size % instead of 8", size_of(type_of(uv_write_s.cb)));
        assert(((cast(*void)(*instance.send_handle)) - cast(*void)(*instance)) == 72, "uv_write_s.send_handle has unexpected offset % instead of 72", ((cast(*void)(*instance.send_handle)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.send_handle)) == 8, "uv_write_s.send_handle has unexpected size % instead of 8", size_of(type_of(uv_write_s.send_handle)));
        assert(((cast(*void)(*instance.handle)) - cast(*void)(*instance)) == 80, "uv_write_s.handle has unexpected offset % instead of 80", ((cast(*void)(*instance.handle)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.handle)) == 8, "uv_write_s.handle has unexpected size % instead of 8", size_of(type_of(uv_write_s.handle)));
        assert(((cast(*void)(*instance.queue)) - cast(*void)(*instance)) == 88, "uv_write_s.queue has unexpected offset % instead of 88", ((cast(*void)(*instance.queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.queue)) == 16, "uv_write_s.queue has unexpected size % instead of 16", size_of(type_of(uv_write_s.queue)));
        assert(((cast(*void)(*instance.write_index)) - cast(*void)(*instance)) == 104, "uv_write_s.write_index has unexpected offset % instead of 104", ((cast(*void)(*instance.write_index)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.write_index)) == 4, "uv_write_s.write_index has unexpected size % instead of 4", size_of(type_of(uv_write_s.write_index)));
        assert(((cast(*void)(*instance.bufs)) - cast(*void)(*instance)) == 112, "uv_write_s.bufs has unexpected offset % instead of 112", ((cast(*void)(*instance.bufs)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.bufs)) == 8, "uv_write_s.bufs has unexpected size % instead of 8", size_of(type_of(uv_write_s.bufs)));
        assert(((cast(*void)(*instance.nbufs)) - cast(*void)(*instance)) == 120, "uv_write_s.nbufs has unexpected offset % instead of 120", ((cast(*void)(*instance.nbufs)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.nbufs)) == 4, "uv_write_s.nbufs has unexpected size % instead of 4", size_of(type_of(uv_write_s.nbufs)));
        assert(((cast(*void)(*instance.error)) - cast(*void)(*instance)) == 124, "uv_write_s.error has unexpected offset % instead of 124", ((cast(*void)(*instance.error)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.error)) == 4, "uv_write_s.error has unexpected size % instead of 4", size_of(type_of(uv_write_s.error)));
        assert(((cast(*void)(*instance.bufsml)) - cast(*void)(*instance)) == 128, "uv_write_s.bufsml has unexpected offset % instead of 128", ((cast(*void)(*instance.bufsml)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_write_s.bufsml)) == 64, "uv_write_s.bufsml has unexpected size % instead of 64", size_of(type_of(uv_write_s.bufsml)));
        assert(size_of(uv_write_s) == 192, "uv_write_s has size % instead of 192", size_of(uv_write_s));
    }

    {
        instance: uv_tcp_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_tcp_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.data)) == 8, "uv_tcp_s.data has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_tcp_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.loop)) == 8, "uv_tcp_s.loop has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_tcp_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.type)) == 4, "uv_tcp_s.type has unexpected size % instead of 4", size_of(type_of(uv_tcp_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_tcp_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.close_cb)) == 8, "uv_tcp_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_tcp_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.handle_queue)) == 16, "uv_tcp_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_tcp_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_tcp_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.u)) == 32, "uv_tcp_s.u has unexpected size % instead of 32", size_of(type_of(uv_tcp_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_tcp_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.next_closing)) == 8, "uv_tcp_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_tcp_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.flags)) == 4, "uv_tcp_s.flags has unexpected size % instead of 4", size_of(type_of(uv_tcp_s.flags)));
        assert(((cast(*void)(*instance.write_queue_size)) - cast(*void)(*instance)) == 96, "uv_tcp_s.write_queue_size has unexpected offset % instead of 96", ((cast(*void)(*instance.write_queue_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.write_queue_size)) == 8, "uv_tcp_s.write_queue_size has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.write_queue_size)));
        assert(((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)) == 104, "uv_tcp_s.alloc_cb has unexpected offset % instead of 104", ((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.alloc_cb)) == 8, "uv_tcp_s.alloc_cb has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.alloc_cb)));
        assert(((cast(*void)(*instance.read_cb)) - cast(*void)(*instance)) == 112, "uv_tcp_s.read_cb has unexpected offset % instead of 112", ((cast(*void)(*instance.read_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.read_cb)) == 8, "uv_tcp_s.read_cb has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.read_cb)));
        assert(((cast(*void)(*instance.connect_req)) - cast(*void)(*instance)) == 120, "uv_tcp_s.connect_req has unexpected offset % instead of 120", ((cast(*void)(*instance.connect_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.connect_req)) == 8, "uv_tcp_s.connect_req has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.connect_req)));
        assert(((cast(*void)(*instance.shutdown_req)) - cast(*void)(*instance)) == 128, "uv_tcp_s.shutdown_req has unexpected offset % instead of 128", ((cast(*void)(*instance.shutdown_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.shutdown_req)) == 8, "uv_tcp_s.shutdown_req has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.shutdown_req)));
        assert(((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)) == 136, "uv_tcp_s.io_watcher has unexpected offset % instead of 136", ((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.io_watcher)) == 56, "uv_tcp_s.io_watcher has unexpected size % instead of 56", size_of(type_of(uv_tcp_s.io_watcher)));
        assert(((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)) == 192, "uv_tcp_s.write_queue has unexpected offset % instead of 192", ((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.write_queue)) == 16, "uv_tcp_s.write_queue has unexpected size % instead of 16", size_of(type_of(uv_tcp_s.write_queue)));
        assert(((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)) == 208, "uv_tcp_s.write_completed_queue has unexpected offset % instead of 208", ((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.write_completed_queue)) == 16, "uv_tcp_s.write_completed_queue has unexpected size % instead of 16", size_of(type_of(uv_tcp_s.write_completed_queue)));
        assert(((cast(*void)(*instance.connection_cb)) - cast(*void)(*instance)) == 224, "uv_tcp_s.connection_cb has unexpected offset % instead of 224", ((cast(*void)(*instance.connection_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.connection_cb)) == 8, "uv_tcp_s.connection_cb has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.connection_cb)));
        assert(((cast(*void)(*instance.delayed_error)) - cast(*void)(*instance)) == 232, "uv_tcp_s.delayed_error has unexpected offset % instead of 232", ((cast(*void)(*instance.delayed_error)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.delayed_error)) == 4, "uv_tcp_s.delayed_error has unexpected size % instead of 4", size_of(type_of(uv_tcp_s.delayed_error)));
        assert(((cast(*void)(*instance.accepted_fd)) - cast(*void)(*instance)) == 236, "uv_tcp_s.accepted_fd has unexpected offset % instead of 236", ((cast(*void)(*instance.accepted_fd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.accepted_fd)) == 4, "uv_tcp_s.accepted_fd has unexpected size % instead of 4", size_of(type_of(uv_tcp_s.accepted_fd)));
        assert(((cast(*void)(*instance.queued_fds)) - cast(*void)(*instance)) == 240, "uv_tcp_s.queued_fds has unexpected offset % instead of 240", ((cast(*void)(*instance.queued_fds)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tcp_s.queued_fds)) == 8, "uv_tcp_s.queued_fds has unexpected size % instead of 8", size_of(type_of(uv_tcp_s.queued_fds)));
        assert(size_of(uv_tcp_s) == 248, "uv_tcp_s has size % instead of 248", size_of(uv_tcp_s));
    }

    {
        instance: uv_connect_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_connect_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_connect_s.data)) == 8, "uv_connect_s.data has unexpected size % instead of 8", size_of(type_of(uv_connect_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_connect_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_connect_s.type)) == 4, "uv_connect_s.type has unexpected size % instead of 4", size_of(type_of(uv_connect_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_connect_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_connect_s.reserved)) == 48, "uv_connect_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_connect_s.reserved)));
        assert(((cast(*void)(*instance.cb)) - cast(*void)(*instance)) == 64, "uv_connect_s.cb has unexpected offset % instead of 64", ((cast(*void)(*instance.cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_connect_s.cb)) == 8, "uv_connect_s.cb has unexpected size % instead of 8", size_of(type_of(uv_connect_s.cb)));
        assert(((cast(*void)(*instance.handle)) - cast(*void)(*instance)) == 72, "uv_connect_s.handle has unexpected offset % instead of 72", ((cast(*void)(*instance.handle)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_connect_s.handle)) == 8, "uv_connect_s.handle has unexpected size % instead of 8", size_of(type_of(uv_connect_s.handle)));
        assert(((cast(*void)(*instance.queue)) - cast(*void)(*instance)) == 80, "uv_connect_s.queue has unexpected offset % instead of 80", ((cast(*void)(*instance.queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_connect_s.queue)) == 16, "uv_connect_s.queue has unexpected size % instead of 16", size_of(type_of(uv_connect_s.queue)));
        assert(size_of(uv_connect_s) == 96, "uv_connect_s has size % instead of 96", size_of(uv_connect_s));
    }

    {
        instance: uv_udp_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_udp_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.data)) == 8, "uv_udp_s.data has unexpected size % instead of 8", size_of(type_of(uv_udp_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_udp_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.loop)) == 8, "uv_udp_s.loop has unexpected size % instead of 8", size_of(type_of(uv_udp_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_udp_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.type)) == 4, "uv_udp_s.type has unexpected size % instead of 4", size_of(type_of(uv_udp_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_udp_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.close_cb)) == 8, "uv_udp_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_udp_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_udp_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.handle_queue)) == 16, "uv_udp_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_udp_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_udp_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.u)) == 32, "uv_udp_s.u has unexpected size % instead of 32", size_of(type_of(uv_udp_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_udp_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.next_closing)) == 8, "uv_udp_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_udp_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_udp_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.flags)) == 4, "uv_udp_s.flags has unexpected size % instead of 4", size_of(type_of(uv_udp_s.flags)));
        assert(((cast(*void)(*instance.send_queue_size)) - cast(*void)(*instance)) == 96, "uv_udp_s.send_queue_size has unexpected offset % instead of 96", ((cast(*void)(*instance.send_queue_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.send_queue_size)) == 8, "uv_udp_s.send_queue_size has unexpected size % instead of 8", size_of(type_of(uv_udp_s.send_queue_size)));
        assert(((cast(*void)(*instance.send_queue_count)) - cast(*void)(*instance)) == 104, "uv_udp_s.send_queue_count has unexpected offset % instead of 104", ((cast(*void)(*instance.send_queue_count)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.send_queue_count)) == 8, "uv_udp_s.send_queue_count has unexpected size % instead of 8", size_of(type_of(uv_udp_s.send_queue_count)));
        assert(((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)) == 112, "uv_udp_s.alloc_cb has unexpected offset % instead of 112", ((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.alloc_cb)) == 8, "uv_udp_s.alloc_cb has unexpected size % instead of 8", size_of(type_of(uv_udp_s.alloc_cb)));
        assert(((cast(*void)(*instance.recv_cb)) - cast(*void)(*instance)) == 120, "uv_udp_s.recv_cb has unexpected offset % instead of 120", ((cast(*void)(*instance.recv_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.recv_cb)) == 8, "uv_udp_s.recv_cb has unexpected size % instead of 8", size_of(type_of(uv_udp_s.recv_cb)));
        assert(((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)) == 128, "uv_udp_s.io_watcher has unexpected offset % instead of 128", ((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.io_watcher)) == 56, "uv_udp_s.io_watcher has unexpected size % instead of 56", size_of(type_of(uv_udp_s.io_watcher)));
        assert(((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)) == 184, "uv_udp_s.write_queue has unexpected offset % instead of 184", ((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.write_queue)) == 16, "uv_udp_s.write_queue has unexpected size % instead of 16", size_of(type_of(uv_udp_s.write_queue)));
        assert(((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)) == 200, "uv_udp_s.write_completed_queue has unexpected offset % instead of 200", ((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_s.write_completed_queue)) == 16, "uv_udp_s.write_completed_queue has unexpected size % instead of 16", size_of(type_of(uv_udp_s.write_completed_queue)));
        assert(size_of(uv_udp_s) == 216, "uv_udp_s has size % instead of 216", size_of(uv_udp_s));
    }

    {
        instance: uv_udp_send_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_udp_send_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.data)) == 8, "uv_udp_send_s.data has unexpected size % instead of 8", size_of(type_of(uv_udp_send_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_udp_send_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.type)) == 4, "uv_udp_send_s.type has unexpected size % instead of 4", size_of(type_of(uv_udp_send_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_udp_send_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.reserved)) == 48, "uv_udp_send_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_udp_send_s.reserved)));
        assert(((cast(*void)(*instance.handle)) - cast(*void)(*instance)) == 64, "uv_udp_send_s.handle has unexpected offset % instead of 64", ((cast(*void)(*instance.handle)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.handle)) == 8, "uv_udp_send_s.handle has unexpected size % instead of 8", size_of(type_of(uv_udp_send_s.handle)));
        assert(((cast(*void)(*instance.cb)) - cast(*void)(*instance)) == 72, "uv_udp_send_s.cb has unexpected offset % instead of 72", ((cast(*void)(*instance.cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.cb)) == 8, "uv_udp_send_s.cb has unexpected size % instead of 8", size_of(type_of(uv_udp_send_s.cb)));
        assert(((cast(*void)(*instance.queue)) - cast(*void)(*instance)) == 80, "uv_udp_send_s.queue has unexpected offset % instead of 80", ((cast(*void)(*instance.queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.queue)) == 16, "uv_udp_send_s.queue has unexpected size % instead of 16", size_of(type_of(uv_udp_send_s.queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 96, "uv_udp_send_s.u has unexpected offset % instead of 96", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.u)) == 128, "uv_udp_send_s.u has unexpected size % instead of 128", size_of(type_of(uv_udp_send_s.u)));
        assert(((cast(*void)(*instance.nbufs)) - cast(*void)(*instance)) == 224, "uv_udp_send_s.nbufs has unexpected offset % instead of 224", ((cast(*void)(*instance.nbufs)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.nbufs)) == 4, "uv_udp_send_s.nbufs has unexpected size % instead of 4", size_of(type_of(uv_udp_send_s.nbufs)));
        assert(((cast(*void)(*instance.bufs)) - cast(*void)(*instance)) == 232, "uv_udp_send_s.bufs has unexpected offset % instead of 232", ((cast(*void)(*instance.bufs)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.bufs)) == 8, "uv_udp_send_s.bufs has unexpected size % instead of 8", size_of(type_of(uv_udp_send_s.bufs)));
        assert(((cast(*void)(*instance.status)) - cast(*void)(*instance)) == 240, "uv_udp_send_s.status has unexpected offset % instead of 240", ((cast(*void)(*instance.status)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.status)) == 8, "uv_udp_send_s.status has unexpected size % instead of 8", size_of(type_of(uv_udp_send_s.status)));
        assert(((cast(*void)(*instance.send_cb)) - cast(*void)(*instance)) == 248, "uv_udp_send_s.send_cb has unexpected offset % instead of 248", ((cast(*void)(*instance.send_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.send_cb)) == 8, "uv_udp_send_s.send_cb has unexpected size % instead of 8", size_of(type_of(uv_udp_send_s.send_cb)));
        assert(((cast(*void)(*instance.bufsml)) - cast(*void)(*instance)) == 256, "uv_udp_send_s.bufsml has unexpected offset % instead of 256", ((cast(*void)(*instance.bufsml)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_udp_send_s.bufsml)) == 64, "uv_udp_send_s.bufsml has unexpected size % instead of 64", size_of(type_of(uv_udp_send_s.bufsml)));
        assert(size_of(uv_udp_send_s) == 320, "uv_udp_send_s has size % instead of 320", size_of(uv_udp_send_s));
    }

    {
        instance: uv_tty_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_tty_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.data)) == 8, "uv_tty_s.data has unexpected size % instead of 8", size_of(type_of(uv_tty_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_tty_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.loop)) == 8, "uv_tty_s.loop has unexpected size % instead of 8", size_of(type_of(uv_tty_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_tty_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.type)) == 4, "uv_tty_s.type has unexpected size % instead of 4", size_of(type_of(uv_tty_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_tty_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.close_cb)) == 8, "uv_tty_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_tty_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_tty_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.handle_queue)) == 16, "uv_tty_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_tty_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_tty_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.u)) == 32, "uv_tty_s.u has unexpected size % instead of 32", size_of(type_of(uv_tty_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_tty_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.next_closing)) == 8, "uv_tty_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_tty_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_tty_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.flags)) == 4, "uv_tty_s.flags has unexpected size % instead of 4", size_of(type_of(uv_tty_s.flags)));
        assert(((cast(*void)(*instance.write_queue_size)) - cast(*void)(*instance)) == 96, "uv_tty_s.write_queue_size has unexpected offset % instead of 96", ((cast(*void)(*instance.write_queue_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.write_queue_size)) == 8, "uv_tty_s.write_queue_size has unexpected size % instead of 8", size_of(type_of(uv_tty_s.write_queue_size)));
        assert(((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)) == 104, "uv_tty_s.alloc_cb has unexpected offset % instead of 104", ((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.alloc_cb)) == 8, "uv_tty_s.alloc_cb has unexpected size % instead of 8", size_of(type_of(uv_tty_s.alloc_cb)));
        assert(((cast(*void)(*instance.read_cb)) - cast(*void)(*instance)) == 112, "uv_tty_s.read_cb has unexpected offset % instead of 112", ((cast(*void)(*instance.read_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.read_cb)) == 8, "uv_tty_s.read_cb has unexpected size % instead of 8", size_of(type_of(uv_tty_s.read_cb)));
        assert(((cast(*void)(*instance.connect_req)) - cast(*void)(*instance)) == 120, "uv_tty_s.connect_req has unexpected offset % instead of 120", ((cast(*void)(*instance.connect_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.connect_req)) == 8, "uv_tty_s.connect_req has unexpected size % instead of 8", size_of(type_of(uv_tty_s.connect_req)));
        assert(((cast(*void)(*instance.shutdown_req)) - cast(*void)(*instance)) == 128, "uv_tty_s.shutdown_req has unexpected offset % instead of 128", ((cast(*void)(*instance.shutdown_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.shutdown_req)) == 8, "uv_tty_s.shutdown_req has unexpected size % instead of 8", size_of(type_of(uv_tty_s.shutdown_req)));
        assert(((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)) == 136, "uv_tty_s.io_watcher has unexpected offset % instead of 136", ((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.io_watcher)) == 56, "uv_tty_s.io_watcher has unexpected size % instead of 56", size_of(type_of(uv_tty_s.io_watcher)));
        assert(((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)) == 192, "uv_tty_s.write_queue has unexpected offset % instead of 192", ((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.write_queue)) == 16, "uv_tty_s.write_queue has unexpected size % instead of 16", size_of(type_of(uv_tty_s.write_queue)));
        assert(((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)) == 208, "uv_tty_s.write_completed_queue has unexpected offset % instead of 208", ((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.write_completed_queue)) == 16, "uv_tty_s.write_completed_queue has unexpected size % instead of 16", size_of(type_of(uv_tty_s.write_completed_queue)));
        assert(((cast(*void)(*instance.connection_cb)) - cast(*void)(*instance)) == 224, "uv_tty_s.connection_cb has unexpected offset % instead of 224", ((cast(*void)(*instance.connection_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.connection_cb)) == 8, "uv_tty_s.connection_cb has unexpected size % instead of 8", size_of(type_of(uv_tty_s.connection_cb)));
        assert(((cast(*void)(*instance.delayed_error)) - cast(*void)(*instance)) == 232, "uv_tty_s.delayed_error has unexpected offset % instead of 232", ((cast(*void)(*instance.delayed_error)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.delayed_error)) == 4, "uv_tty_s.delayed_error has unexpected size % instead of 4", size_of(type_of(uv_tty_s.delayed_error)));
        assert(((cast(*void)(*instance.accepted_fd)) - cast(*void)(*instance)) == 236, "uv_tty_s.accepted_fd has unexpected offset % instead of 236", ((cast(*void)(*instance.accepted_fd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.accepted_fd)) == 4, "uv_tty_s.accepted_fd has unexpected size % instead of 4", size_of(type_of(uv_tty_s.accepted_fd)));
        assert(((cast(*void)(*instance.queued_fds)) - cast(*void)(*instance)) == 240, "uv_tty_s.queued_fds has unexpected offset % instead of 240", ((cast(*void)(*instance.queued_fds)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.queued_fds)) == 8, "uv_tty_s.queued_fds has unexpected size % instead of 8", size_of(type_of(uv_tty_s.queued_fds)));
        assert(((cast(*void)(*instance.orig_termios)) - cast(*void)(*instance)) == 248, "uv_tty_s.orig_termios has unexpected offset % instead of 248", ((cast(*void)(*instance.orig_termios)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.orig_termios)) == 60, "uv_tty_s.orig_termios has unexpected size % instead of 60", size_of(type_of(uv_tty_s.orig_termios)));
        assert(((cast(*void)(*instance.mode)) - cast(*void)(*instance)) == 308, "uv_tty_s.mode has unexpected offset % instead of 308", ((cast(*void)(*instance.mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_tty_s.mode)) == 4, "uv_tty_s.mode has unexpected size % instead of 4", size_of(type_of(uv_tty_s.mode)));
        assert(size_of(uv_tty_s) == 312, "uv_tty_s has size % instead of 312", size_of(uv_tty_s));
    }

    {
        instance: uv_pipe_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_pipe_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.data)) == 8, "uv_pipe_s.data has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_pipe_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.loop)) == 8, "uv_pipe_s.loop has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_pipe_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.type)) == 4, "uv_pipe_s.type has unexpected size % instead of 4", size_of(type_of(uv_pipe_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_pipe_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.close_cb)) == 8, "uv_pipe_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_pipe_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.handle_queue)) == 16, "uv_pipe_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_pipe_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_pipe_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.u)) == 32, "uv_pipe_s.u has unexpected size % instead of 32", size_of(type_of(uv_pipe_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_pipe_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.next_closing)) == 8, "uv_pipe_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_pipe_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.flags)) == 4, "uv_pipe_s.flags has unexpected size % instead of 4", size_of(type_of(uv_pipe_s.flags)));
        assert(((cast(*void)(*instance.write_queue_size)) - cast(*void)(*instance)) == 96, "uv_pipe_s.write_queue_size has unexpected offset % instead of 96", ((cast(*void)(*instance.write_queue_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.write_queue_size)) == 8, "uv_pipe_s.write_queue_size has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.write_queue_size)));
        assert(((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)) == 104, "uv_pipe_s.alloc_cb has unexpected offset % instead of 104", ((cast(*void)(*instance.alloc_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.alloc_cb)) == 8, "uv_pipe_s.alloc_cb has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.alloc_cb)));
        assert(((cast(*void)(*instance.read_cb)) - cast(*void)(*instance)) == 112, "uv_pipe_s.read_cb has unexpected offset % instead of 112", ((cast(*void)(*instance.read_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.read_cb)) == 8, "uv_pipe_s.read_cb has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.read_cb)));
        assert(((cast(*void)(*instance.connect_req)) - cast(*void)(*instance)) == 120, "uv_pipe_s.connect_req has unexpected offset % instead of 120", ((cast(*void)(*instance.connect_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.connect_req)) == 8, "uv_pipe_s.connect_req has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.connect_req)));
        assert(((cast(*void)(*instance.shutdown_req)) - cast(*void)(*instance)) == 128, "uv_pipe_s.shutdown_req has unexpected offset % instead of 128", ((cast(*void)(*instance.shutdown_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.shutdown_req)) == 8, "uv_pipe_s.shutdown_req has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.shutdown_req)));
        assert(((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)) == 136, "uv_pipe_s.io_watcher has unexpected offset % instead of 136", ((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.io_watcher)) == 56, "uv_pipe_s.io_watcher has unexpected size % instead of 56", size_of(type_of(uv_pipe_s.io_watcher)));
        assert(((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)) == 192, "uv_pipe_s.write_queue has unexpected offset % instead of 192", ((cast(*void)(*instance.write_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.write_queue)) == 16, "uv_pipe_s.write_queue has unexpected size % instead of 16", size_of(type_of(uv_pipe_s.write_queue)));
        assert(((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)) == 208, "uv_pipe_s.write_completed_queue has unexpected offset % instead of 208", ((cast(*void)(*instance.write_completed_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.write_completed_queue)) == 16, "uv_pipe_s.write_completed_queue has unexpected size % instead of 16", size_of(type_of(uv_pipe_s.write_completed_queue)));
        assert(((cast(*void)(*instance.connection_cb)) - cast(*void)(*instance)) == 224, "uv_pipe_s.connection_cb has unexpected offset % instead of 224", ((cast(*void)(*instance.connection_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.connection_cb)) == 8, "uv_pipe_s.connection_cb has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.connection_cb)));
        assert(((cast(*void)(*instance.delayed_error)) - cast(*void)(*instance)) == 232, "uv_pipe_s.delayed_error has unexpected offset % instead of 232", ((cast(*void)(*instance.delayed_error)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.delayed_error)) == 4, "uv_pipe_s.delayed_error has unexpected size % instead of 4", size_of(type_of(uv_pipe_s.delayed_error)));
        assert(((cast(*void)(*instance.accepted_fd)) - cast(*void)(*instance)) == 236, "uv_pipe_s.accepted_fd has unexpected offset % instead of 236", ((cast(*void)(*instance.accepted_fd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.accepted_fd)) == 4, "uv_pipe_s.accepted_fd has unexpected size % instead of 4", size_of(type_of(uv_pipe_s.accepted_fd)));
        assert(((cast(*void)(*instance.queued_fds)) - cast(*void)(*instance)) == 240, "uv_pipe_s.queued_fds has unexpected offset % instead of 240", ((cast(*void)(*instance.queued_fds)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.queued_fds)) == 8, "uv_pipe_s.queued_fds has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.queued_fds)));
        assert(((cast(*void)(*instance.ipc)) - cast(*void)(*instance)) == 248, "uv_pipe_s.ipc has unexpected offset % instead of 248", ((cast(*void)(*instance.ipc)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.ipc)) == 4, "uv_pipe_s.ipc has unexpected size % instead of 4", size_of(type_of(uv_pipe_s.ipc)));
        assert(((cast(*void)(*instance.pipe_fname)) - cast(*void)(*instance)) == 256, "uv_pipe_s.pipe_fname has unexpected offset % instead of 256", ((cast(*void)(*instance.pipe_fname)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_pipe_s.pipe_fname)) == 8, "uv_pipe_s.pipe_fname has unexpected size % instead of 8", size_of(type_of(uv_pipe_s.pipe_fname)));
        assert(size_of(uv_pipe_s) == 264, "uv_pipe_s has size % instead of 264", size_of(uv_pipe_s));
    }

    {
        instance: uv_poll_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_poll_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.data)) == 8, "uv_poll_s.data has unexpected size % instead of 8", size_of(type_of(uv_poll_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_poll_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.loop)) == 8, "uv_poll_s.loop has unexpected size % instead of 8", size_of(type_of(uv_poll_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_poll_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.type)) == 4, "uv_poll_s.type has unexpected size % instead of 4", size_of(type_of(uv_poll_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_poll_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.close_cb)) == 8, "uv_poll_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_poll_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_poll_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.handle_queue)) == 16, "uv_poll_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_poll_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_poll_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.u)) == 32, "uv_poll_s.u has unexpected size % instead of 32", size_of(type_of(uv_poll_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_poll_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.next_closing)) == 8, "uv_poll_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_poll_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_poll_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.flags)) == 4, "uv_poll_s.flags has unexpected size % instead of 4", size_of(type_of(uv_poll_s.flags)));
        assert(((cast(*void)(*instance.poll_cb)) - cast(*void)(*instance)) == 96, "uv_poll_s.poll_cb has unexpected offset % instead of 96", ((cast(*void)(*instance.poll_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.poll_cb)) == 8, "uv_poll_s.poll_cb has unexpected size % instead of 8", size_of(type_of(uv_poll_s.poll_cb)));
        assert(((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)) == 104, "uv_poll_s.io_watcher has unexpected offset % instead of 104", ((cast(*void)(*instance.io_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_poll_s.io_watcher)) == 56, "uv_poll_s.io_watcher has unexpected size % instead of 56", size_of(type_of(uv_poll_s.io_watcher)));
        assert(size_of(uv_poll_s) == 160, "uv_poll_s has size % instead of 160", size_of(uv_poll_s));
    }

    {
        instance: uv_prepare_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_prepare_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.data)) == 8, "uv_prepare_s.data has unexpected size % instead of 8", size_of(type_of(uv_prepare_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_prepare_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.loop)) == 8, "uv_prepare_s.loop has unexpected size % instead of 8", size_of(type_of(uv_prepare_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_prepare_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.type)) == 4, "uv_prepare_s.type has unexpected size % instead of 4", size_of(type_of(uv_prepare_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_prepare_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.close_cb)) == 8, "uv_prepare_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_prepare_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_prepare_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.handle_queue)) == 16, "uv_prepare_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_prepare_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_prepare_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.u)) == 32, "uv_prepare_s.u has unexpected size % instead of 32", size_of(type_of(uv_prepare_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_prepare_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.next_closing)) == 8, "uv_prepare_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_prepare_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_prepare_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.flags)) == 4, "uv_prepare_s.flags has unexpected size % instead of 4", size_of(type_of(uv_prepare_s.flags)));
        assert(((cast(*void)(*instance.prepare_cb)) - cast(*void)(*instance)) == 96, "uv_prepare_s.prepare_cb has unexpected offset % instead of 96", ((cast(*void)(*instance.prepare_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.prepare_cb)) == 8, "uv_prepare_s.prepare_cb has unexpected size % instead of 8", size_of(type_of(uv_prepare_s.prepare_cb)));
        assert(((cast(*void)(*instance.queue)) - cast(*void)(*instance)) == 104, "uv_prepare_s.queue has unexpected offset % instead of 104", ((cast(*void)(*instance.queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_prepare_s.queue)) == 16, "uv_prepare_s.queue has unexpected size % instead of 16", size_of(type_of(uv_prepare_s.queue)));
        assert(size_of(uv_prepare_s) == 120, "uv_prepare_s has size % instead of 120", size_of(uv_prepare_s));
    }

    {
        instance: uv_check_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_check_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.data)) == 8, "uv_check_s.data has unexpected size % instead of 8", size_of(type_of(uv_check_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_check_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.loop)) == 8, "uv_check_s.loop has unexpected size % instead of 8", size_of(type_of(uv_check_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_check_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.type)) == 4, "uv_check_s.type has unexpected size % instead of 4", size_of(type_of(uv_check_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_check_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.close_cb)) == 8, "uv_check_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_check_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_check_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.handle_queue)) == 16, "uv_check_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_check_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_check_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.u)) == 32, "uv_check_s.u has unexpected size % instead of 32", size_of(type_of(uv_check_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_check_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.next_closing)) == 8, "uv_check_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_check_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_check_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.flags)) == 4, "uv_check_s.flags has unexpected size % instead of 4", size_of(type_of(uv_check_s.flags)));
        assert(((cast(*void)(*instance.check_cb)) - cast(*void)(*instance)) == 96, "uv_check_s.check_cb has unexpected offset % instead of 96", ((cast(*void)(*instance.check_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.check_cb)) == 8, "uv_check_s.check_cb has unexpected size % instead of 8", size_of(type_of(uv_check_s.check_cb)));
        assert(((cast(*void)(*instance.queue)) - cast(*void)(*instance)) == 104, "uv_check_s.queue has unexpected offset % instead of 104", ((cast(*void)(*instance.queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_check_s.queue)) == 16, "uv_check_s.queue has unexpected size % instead of 16", size_of(type_of(uv_check_s.queue)));
        assert(size_of(uv_check_s) == 120, "uv_check_s has size % instead of 120", size_of(uv_check_s));
    }

    {
        instance: uv_idle_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_idle_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.data)) == 8, "uv_idle_s.data has unexpected size % instead of 8", size_of(type_of(uv_idle_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_idle_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.loop)) == 8, "uv_idle_s.loop has unexpected size % instead of 8", size_of(type_of(uv_idle_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_idle_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.type)) == 4, "uv_idle_s.type has unexpected size % instead of 4", size_of(type_of(uv_idle_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_idle_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.close_cb)) == 8, "uv_idle_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_idle_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_idle_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.handle_queue)) == 16, "uv_idle_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_idle_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_idle_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.u)) == 32, "uv_idle_s.u has unexpected size % instead of 32", size_of(type_of(uv_idle_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_idle_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.next_closing)) == 8, "uv_idle_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_idle_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_idle_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.flags)) == 4, "uv_idle_s.flags has unexpected size % instead of 4", size_of(type_of(uv_idle_s.flags)));
        assert(((cast(*void)(*instance.idle_cb)) - cast(*void)(*instance)) == 96, "uv_idle_s.idle_cb has unexpected offset % instead of 96", ((cast(*void)(*instance.idle_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.idle_cb)) == 8, "uv_idle_s.idle_cb has unexpected size % instead of 8", size_of(type_of(uv_idle_s.idle_cb)));
        assert(((cast(*void)(*instance.queue)) - cast(*void)(*instance)) == 104, "uv_idle_s.queue has unexpected offset % instead of 104", ((cast(*void)(*instance.queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_idle_s.queue)) == 16, "uv_idle_s.queue has unexpected size % instead of 16", size_of(type_of(uv_idle_s.queue)));
        assert(size_of(uv_idle_s) == 120, "uv_idle_s has size % instead of 120", size_of(uv_idle_s));
    }

    {
        instance: uv_async_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_async_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.data)) == 8, "uv_async_s.data has unexpected size % instead of 8", size_of(type_of(uv_async_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_async_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.loop)) == 8, "uv_async_s.loop has unexpected size % instead of 8", size_of(type_of(uv_async_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_async_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.type)) == 4, "uv_async_s.type has unexpected size % instead of 4", size_of(type_of(uv_async_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_async_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.close_cb)) == 8, "uv_async_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_async_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_async_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.handle_queue)) == 16, "uv_async_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_async_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_async_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.u)) == 32, "uv_async_s.u has unexpected size % instead of 32", size_of(type_of(uv_async_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_async_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.next_closing)) == 8, "uv_async_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_async_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_async_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.flags)) == 4, "uv_async_s.flags has unexpected size % instead of 4", size_of(type_of(uv_async_s.flags)));
        assert(((cast(*void)(*instance.async_cb)) - cast(*void)(*instance)) == 96, "uv_async_s.async_cb has unexpected offset % instead of 96", ((cast(*void)(*instance.async_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.async_cb)) == 8, "uv_async_s.async_cb has unexpected size % instead of 8", size_of(type_of(uv_async_s.async_cb)));
        assert(((cast(*void)(*instance.queue)) - cast(*void)(*instance)) == 104, "uv_async_s.queue has unexpected offset % instead of 104", ((cast(*void)(*instance.queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.queue)) == 16, "uv_async_s.queue has unexpected size % instead of 16", size_of(type_of(uv_async_s.queue)));
        assert(((cast(*void)(*instance.pending)) - cast(*void)(*instance)) == 120, "uv_async_s.pending has unexpected offset % instead of 120", ((cast(*void)(*instance.pending)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_async_s.pending)) == 4, "uv_async_s.pending has unexpected size % instead of 4", size_of(type_of(uv_async_s.pending)));
        assert(size_of(uv_async_s) == 128, "uv_async_s has size % instead of 128", size_of(uv_async_s));
    }

    {
        instance: uv_timer_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_timer_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.data)) == 8, "uv_timer_s.data has unexpected size % instead of 8", size_of(type_of(uv_timer_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_timer_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.loop)) == 8, "uv_timer_s.loop has unexpected size % instead of 8", size_of(type_of(uv_timer_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_timer_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.type)) == 4, "uv_timer_s.type has unexpected size % instead of 4", size_of(type_of(uv_timer_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_timer_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.close_cb)) == 8, "uv_timer_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_timer_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_timer_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.handle_queue)) == 16, "uv_timer_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_timer_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_timer_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.u)) == 32, "uv_timer_s.u has unexpected size % instead of 32", size_of(type_of(uv_timer_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_timer_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.next_closing)) == 8, "uv_timer_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_timer_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_timer_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.flags)) == 4, "uv_timer_s.flags has unexpected size % instead of 4", size_of(type_of(uv_timer_s.flags)));
        assert(((cast(*void)(*instance.timer_cb)) - cast(*void)(*instance)) == 96, "uv_timer_s.timer_cb has unexpected offset % instead of 96", ((cast(*void)(*instance.timer_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.timer_cb)) == 8, "uv_timer_s.timer_cb has unexpected size % instead of 8", size_of(type_of(uv_timer_s.timer_cb)));
        assert(((cast(*void)(*instance.node)) - cast(*void)(*instance)) == 104, "uv_timer_s.node has unexpected offset % instead of 104", ((cast(*void)(*instance.node)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.node)) == 24, "uv_timer_s.node has unexpected size % instead of 24", size_of(type_of(uv_timer_s.node)));
        assert(((cast(*void)(*instance.timeout)) - cast(*void)(*instance)) == 128, "uv_timer_s.timeout has unexpected offset % instead of 128", ((cast(*void)(*instance.timeout)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.timeout)) == 8, "uv_timer_s.timeout has unexpected size % instead of 8", size_of(type_of(uv_timer_s.timeout)));
        assert(((cast(*void)(*instance.repeat)) - cast(*void)(*instance)) == 136, "uv_timer_s.repeat has unexpected offset % instead of 136", ((cast(*void)(*instance.repeat)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.repeat)) == 8, "uv_timer_s.repeat has unexpected size % instead of 8", size_of(type_of(uv_timer_s.repeat)));
        assert(((cast(*void)(*instance.start_id)) - cast(*void)(*instance)) == 144, "uv_timer_s.start_id has unexpected offset % instead of 144", ((cast(*void)(*instance.start_id)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_timer_s.start_id)) == 8, "uv_timer_s.start_id has unexpected size % instead of 8", size_of(type_of(uv_timer_s.start_id)));
        assert(size_of(uv_timer_s) == 152, "uv_timer_s has size % instead of 152", size_of(uv_timer_s));
    }

    {
        instance: uv_getaddrinfo_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_getaddrinfo_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.data)) == 8, "uv_getaddrinfo_s.data has unexpected size % instead of 8", size_of(type_of(uv_getaddrinfo_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_getaddrinfo_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.type)) == 4, "uv_getaddrinfo_s.type has unexpected size % instead of 4", size_of(type_of(uv_getaddrinfo_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_getaddrinfo_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.reserved)) == 48, "uv_getaddrinfo_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_getaddrinfo_s.reserved)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 64, "uv_getaddrinfo_s.loop has unexpected offset % instead of 64", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.loop)) == 8, "uv_getaddrinfo_s.loop has unexpected size % instead of 8", size_of(type_of(uv_getaddrinfo_s.loop)));
        assert(((cast(*void)(*instance.work_req)) - cast(*void)(*instance)) == 72, "uv_getaddrinfo_s.work_req has unexpected offset % instead of 72", ((cast(*void)(*instance.work_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.work_req)) == 40, "uv_getaddrinfo_s.work_req has unexpected size % instead of 40", size_of(type_of(uv_getaddrinfo_s.work_req)));
        assert(((cast(*void)(*instance.cb)) - cast(*void)(*instance)) == 112, "uv_getaddrinfo_s.cb has unexpected offset % instead of 112", ((cast(*void)(*instance.cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.cb)) == 8, "uv_getaddrinfo_s.cb has unexpected size % instead of 8", size_of(type_of(uv_getaddrinfo_s.cb)));
        assert(((cast(*void)(*instance.hints)) - cast(*void)(*instance)) == 120, "uv_getaddrinfo_s.hints has unexpected offset % instead of 120", ((cast(*void)(*instance.hints)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.hints)) == 8, "uv_getaddrinfo_s.hints has unexpected size % instead of 8", size_of(type_of(uv_getaddrinfo_s.hints)));
        assert(((cast(*void)(*instance.hostname)) - cast(*void)(*instance)) == 128, "uv_getaddrinfo_s.hostname has unexpected offset % instead of 128", ((cast(*void)(*instance.hostname)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.hostname)) == 8, "uv_getaddrinfo_s.hostname has unexpected size % instead of 8", size_of(type_of(uv_getaddrinfo_s.hostname)));
        assert(((cast(*void)(*instance.service)) - cast(*void)(*instance)) == 136, "uv_getaddrinfo_s.service has unexpected offset % instead of 136", ((cast(*void)(*instance.service)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.service)) == 8, "uv_getaddrinfo_s.service has unexpected size % instead of 8", size_of(type_of(uv_getaddrinfo_s.service)));
        assert(((cast(*void)(*instance.addrinfo_)) - cast(*void)(*instance)) == 144, "uv_getaddrinfo_s.addrinfo_ has unexpected offset % instead of 144", ((cast(*void)(*instance.addrinfo_)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.addrinfo_)) == 8, "uv_getaddrinfo_s.addrinfo_ has unexpected size % instead of 8", size_of(type_of(uv_getaddrinfo_s.addrinfo_)));
        assert(((cast(*void)(*instance.retcode)) - cast(*void)(*instance)) == 152, "uv_getaddrinfo_s.retcode has unexpected offset % instead of 152", ((cast(*void)(*instance.retcode)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getaddrinfo_s.retcode)) == 4, "uv_getaddrinfo_s.retcode has unexpected size % instead of 4", size_of(type_of(uv_getaddrinfo_s.retcode)));
        assert(size_of(uv_getaddrinfo_s) == 160, "uv_getaddrinfo_s has size % instead of 160", size_of(uv_getaddrinfo_s));
    }

    {
        instance: uv_getnameinfo_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_getnameinfo_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.data)) == 8, "uv_getnameinfo_s.data has unexpected size % instead of 8", size_of(type_of(uv_getnameinfo_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_getnameinfo_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.type)) == 4, "uv_getnameinfo_s.type has unexpected size % instead of 4", size_of(type_of(uv_getnameinfo_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_getnameinfo_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.reserved)) == 48, "uv_getnameinfo_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_getnameinfo_s.reserved)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 64, "uv_getnameinfo_s.loop has unexpected offset % instead of 64", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.loop)) == 8, "uv_getnameinfo_s.loop has unexpected size % instead of 8", size_of(type_of(uv_getnameinfo_s.loop)));
        assert(((cast(*void)(*instance.work_req)) - cast(*void)(*instance)) == 72, "uv_getnameinfo_s.work_req has unexpected offset % instead of 72", ((cast(*void)(*instance.work_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.work_req)) == 40, "uv_getnameinfo_s.work_req has unexpected size % instead of 40", size_of(type_of(uv_getnameinfo_s.work_req)));
        assert(((cast(*void)(*instance.getnameinfo_cb)) - cast(*void)(*instance)) == 112, "uv_getnameinfo_s.getnameinfo_cb has unexpected offset % instead of 112", ((cast(*void)(*instance.getnameinfo_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.getnameinfo_cb)) == 8, "uv_getnameinfo_s.getnameinfo_cb has unexpected size % instead of 8", size_of(type_of(uv_getnameinfo_s.getnameinfo_cb)));
        assert(((cast(*void)(*instance.storage)) - cast(*void)(*instance)) == 120, "uv_getnameinfo_s.storage has unexpected offset % instead of 120", ((cast(*void)(*instance.storage)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.storage)) == 128, "uv_getnameinfo_s.storage has unexpected size % instead of 128", size_of(type_of(uv_getnameinfo_s.storage)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 248, "uv_getnameinfo_s.flags has unexpected offset % instead of 248", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.flags)) == 4, "uv_getnameinfo_s.flags has unexpected size % instead of 4", size_of(type_of(uv_getnameinfo_s.flags)));
        assert(((cast(*void)(*instance.host)) - cast(*void)(*instance)) == 252, "uv_getnameinfo_s.host has unexpected offset % instead of 252", ((cast(*void)(*instance.host)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.host)) == 1025, "uv_getnameinfo_s.host has unexpected size % instead of 1025", size_of(type_of(uv_getnameinfo_s.host)));
        assert(((cast(*void)(*instance.service)) - cast(*void)(*instance)) == 1277, "uv_getnameinfo_s.service has unexpected offset % instead of 1277", ((cast(*void)(*instance.service)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.service)) == 32, "uv_getnameinfo_s.service has unexpected size % instead of 32", size_of(type_of(uv_getnameinfo_s.service)));
        assert(((cast(*void)(*instance.retcode)) - cast(*void)(*instance)) == 1312, "uv_getnameinfo_s.retcode has unexpected offset % instead of 1312", ((cast(*void)(*instance.retcode)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_getnameinfo_s.retcode)) == 4, "uv_getnameinfo_s.retcode has unexpected size % instead of 4", size_of(type_of(uv_getnameinfo_s.retcode)));
        assert(size_of(uv_getnameinfo_s) == 1320, "uv_getnameinfo_s has size % instead of 1320", size_of(uv_getnameinfo_s));
    }

    {
        instance: uv_stdio_container_s;
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 0, "uv_stdio_container_s.flags has unexpected offset % instead of 0", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stdio_container_s.flags)) == 4, "uv_stdio_container_s.flags has unexpected size % instead of 4", size_of(type_of(uv_stdio_container_s.flags)));
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 8, "uv_stdio_container_s.data has unexpected offset % instead of 8", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_stdio_container_s.data)) == 8, "uv_stdio_container_s.data has unexpected size % instead of 8", size_of(type_of(uv_stdio_container_s.data)));
        assert(size_of(uv_stdio_container_s) == 16, "uv_stdio_container_s has size % instead of 16", size_of(uv_stdio_container_s));
    }

    {
        instance: uv_process_options_s;
        assert(((cast(*void)(*instance.exit_cb)) - cast(*void)(*instance)) == 0, "uv_process_options_s.exit_cb has unexpected offset % instead of 0", ((cast(*void)(*instance.exit_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.exit_cb)) == 8, "uv_process_options_s.exit_cb has unexpected size % instead of 8", size_of(type_of(uv_process_options_s.exit_cb)));
        assert(((cast(*void)(*instance.file)) - cast(*void)(*instance)) == 8, "uv_process_options_s.file has unexpected offset % instead of 8", ((cast(*void)(*instance.file)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.file)) == 8, "uv_process_options_s.file has unexpected size % instead of 8", size_of(type_of(uv_process_options_s.file)));
        assert(((cast(*void)(*instance.args)) - cast(*void)(*instance)) == 16, "uv_process_options_s.args has unexpected offset % instead of 16", ((cast(*void)(*instance.args)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.args)) == 8, "uv_process_options_s.args has unexpected size % instead of 8", size_of(type_of(uv_process_options_s.args)));
        assert(((cast(*void)(*instance.env)) - cast(*void)(*instance)) == 24, "uv_process_options_s.env has unexpected offset % instead of 24", ((cast(*void)(*instance.env)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.env)) == 8, "uv_process_options_s.env has unexpected size % instead of 8", size_of(type_of(uv_process_options_s.env)));
        assert(((cast(*void)(*instance.cwd)) - cast(*void)(*instance)) == 32, "uv_process_options_s.cwd has unexpected offset % instead of 32", ((cast(*void)(*instance.cwd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.cwd)) == 8, "uv_process_options_s.cwd has unexpected size % instead of 8", size_of(type_of(uv_process_options_s.cwd)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 40, "uv_process_options_s.flags has unexpected offset % instead of 40", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.flags)) == 4, "uv_process_options_s.flags has unexpected size % instead of 4", size_of(type_of(uv_process_options_s.flags)));
        assert(((cast(*void)(*instance.stdio_count)) - cast(*void)(*instance)) == 44, "uv_process_options_s.stdio_count has unexpected offset % instead of 44", ((cast(*void)(*instance.stdio_count)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.stdio_count)) == 4, "uv_process_options_s.stdio_count has unexpected size % instead of 4", size_of(type_of(uv_process_options_s.stdio_count)));
        assert(((cast(*void)(*instance.stdio)) - cast(*void)(*instance)) == 48, "uv_process_options_s.stdio has unexpected offset % instead of 48", ((cast(*void)(*instance.stdio)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.stdio)) == 8, "uv_process_options_s.stdio has unexpected size % instead of 8", size_of(type_of(uv_process_options_s.stdio)));
        assert(((cast(*void)(*instance.uid)) - cast(*void)(*instance)) == 56, "uv_process_options_s.uid has unexpected offset % instead of 56", ((cast(*void)(*instance.uid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.uid)) == 4, "uv_process_options_s.uid has unexpected size % instead of 4", size_of(type_of(uv_process_options_s.uid)));
        assert(((cast(*void)(*instance.gid)) - cast(*void)(*instance)) == 60, "uv_process_options_s.gid has unexpected offset % instead of 60", ((cast(*void)(*instance.gid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_options_s.gid)) == 4, "uv_process_options_s.gid has unexpected size % instead of 4", size_of(type_of(uv_process_options_s.gid)));
        assert(size_of(uv_process_options_s) == 64, "uv_process_options_s has size % instead of 64", size_of(uv_process_options_s));
    }

    {
        instance: uv_process_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_process_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.data)) == 8, "uv_process_s.data has unexpected size % instead of 8", size_of(type_of(uv_process_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_process_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.loop)) == 8, "uv_process_s.loop has unexpected size % instead of 8", size_of(type_of(uv_process_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_process_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.type)) == 4, "uv_process_s.type has unexpected size % instead of 4", size_of(type_of(uv_process_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_process_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.close_cb)) == 8, "uv_process_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_process_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_process_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.handle_queue)) == 16, "uv_process_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_process_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_process_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.u)) == 32, "uv_process_s.u has unexpected size % instead of 32", size_of(type_of(uv_process_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_process_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.next_closing)) == 8, "uv_process_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_process_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_process_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.flags)) == 4, "uv_process_s.flags has unexpected size % instead of 4", size_of(type_of(uv_process_s.flags)));
        assert(((cast(*void)(*instance.exit_cb)) - cast(*void)(*instance)) == 96, "uv_process_s.exit_cb has unexpected offset % instead of 96", ((cast(*void)(*instance.exit_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.exit_cb)) == 8, "uv_process_s.exit_cb has unexpected size % instead of 8", size_of(type_of(uv_process_s.exit_cb)));
        assert(((cast(*void)(*instance.pid)) - cast(*void)(*instance)) == 104, "uv_process_s.pid has unexpected offset % instead of 104", ((cast(*void)(*instance.pid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.pid)) == 4, "uv_process_s.pid has unexpected size % instead of 4", size_of(type_of(uv_process_s.pid)));
        assert(((cast(*void)(*instance.queue)) - cast(*void)(*instance)) == 112, "uv_process_s.queue has unexpected offset % instead of 112", ((cast(*void)(*instance.queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.queue)) == 16, "uv_process_s.queue has unexpected size % instead of 16", size_of(type_of(uv_process_s.queue)));
        assert(((cast(*void)(*instance.status)) - cast(*void)(*instance)) == 128, "uv_process_s.status has unexpected offset % instead of 128", ((cast(*void)(*instance.status)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_process_s.status)) == 4, "uv_process_s.status has unexpected size % instead of 4", size_of(type_of(uv_process_s.status)));
        assert(size_of(uv_process_s) == 136, "uv_process_s has size % instead of 136", size_of(uv_process_s));
    }

    {
        instance: uv_work_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_work_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_work_s.data)) == 8, "uv_work_s.data has unexpected size % instead of 8", size_of(type_of(uv_work_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_work_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_work_s.type)) == 4, "uv_work_s.type has unexpected size % instead of 4", size_of(type_of(uv_work_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_work_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_work_s.reserved)) == 48, "uv_work_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_work_s.reserved)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 64, "uv_work_s.loop has unexpected offset % instead of 64", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_work_s.loop)) == 8, "uv_work_s.loop has unexpected size % instead of 8", size_of(type_of(uv_work_s.loop)));
        assert(((cast(*void)(*instance.work_cb)) - cast(*void)(*instance)) == 72, "uv_work_s.work_cb has unexpected offset % instead of 72", ((cast(*void)(*instance.work_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_work_s.work_cb)) == 8, "uv_work_s.work_cb has unexpected size % instead of 8", size_of(type_of(uv_work_s.work_cb)));
        assert(((cast(*void)(*instance.after_work_cb)) - cast(*void)(*instance)) == 80, "uv_work_s.after_work_cb has unexpected offset % instead of 80", ((cast(*void)(*instance.after_work_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_work_s.after_work_cb)) == 8, "uv_work_s.after_work_cb has unexpected size % instead of 8", size_of(type_of(uv_work_s.after_work_cb)));
        assert(((cast(*void)(*instance.work_req)) - cast(*void)(*instance)) == 88, "uv_work_s.work_req has unexpected offset % instead of 88", ((cast(*void)(*instance.work_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_work_s.work_req)) == 40, "uv_work_s.work_req has unexpected size % instead of 40", size_of(type_of(uv_work_s.work_req)));
        assert(size_of(uv_work_s) == 128, "uv_work_s has size % instead of 128", size_of(uv_work_s));
    }

    {
        instance: uv_cpu_times_s;
        assert(((cast(*void)(*instance.user)) - cast(*void)(*instance)) == 0, "uv_cpu_times_s.user has unexpected offset % instead of 0", ((cast(*void)(*instance.user)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_cpu_times_s.user)) == 8, "uv_cpu_times_s.user has unexpected size % instead of 8", size_of(type_of(uv_cpu_times_s.user)));
        assert(((cast(*void)(*instance.nice)) - cast(*void)(*instance)) == 8, "uv_cpu_times_s.nice has unexpected offset % instead of 8", ((cast(*void)(*instance.nice)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_cpu_times_s.nice)) == 8, "uv_cpu_times_s.nice has unexpected size % instead of 8", size_of(type_of(uv_cpu_times_s.nice)));
        assert(((cast(*void)(*instance.sys)) - cast(*void)(*instance)) == 16, "uv_cpu_times_s.sys has unexpected offset % instead of 16", ((cast(*void)(*instance.sys)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_cpu_times_s.sys)) == 8, "uv_cpu_times_s.sys has unexpected size % instead of 8", size_of(type_of(uv_cpu_times_s.sys)));
        assert(((cast(*void)(*instance.idle)) - cast(*void)(*instance)) == 24, "uv_cpu_times_s.idle has unexpected offset % instead of 24", ((cast(*void)(*instance.idle)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_cpu_times_s.idle)) == 8, "uv_cpu_times_s.idle has unexpected size % instead of 8", size_of(type_of(uv_cpu_times_s.idle)));
        assert(((cast(*void)(*instance.irq)) - cast(*void)(*instance)) == 32, "uv_cpu_times_s.irq has unexpected offset % instead of 32", ((cast(*void)(*instance.irq)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_cpu_times_s.irq)) == 8, "uv_cpu_times_s.irq has unexpected size % instead of 8", size_of(type_of(uv_cpu_times_s.irq)));
        assert(size_of(uv_cpu_times_s) == 40, "uv_cpu_times_s has size % instead of 40", size_of(uv_cpu_times_s));
    }

    {
        instance: uv_cpu_info_s;
        assert(((cast(*void)(*instance.model)) - cast(*void)(*instance)) == 0, "uv_cpu_info_s.model has unexpected offset % instead of 0", ((cast(*void)(*instance.model)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_cpu_info_s.model)) == 8, "uv_cpu_info_s.model has unexpected size % instead of 8", size_of(type_of(uv_cpu_info_s.model)));
        assert(((cast(*void)(*instance.speed)) - cast(*void)(*instance)) == 8, "uv_cpu_info_s.speed has unexpected offset % instead of 8", ((cast(*void)(*instance.speed)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_cpu_info_s.speed)) == 4, "uv_cpu_info_s.speed has unexpected size % instead of 4", size_of(type_of(uv_cpu_info_s.speed)));
        assert(((cast(*void)(*instance.cpu_times)) - cast(*void)(*instance)) == 16, "uv_cpu_info_s.cpu_times has unexpected offset % instead of 16", ((cast(*void)(*instance.cpu_times)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_cpu_info_s.cpu_times)) == 40, "uv_cpu_info_s.cpu_times has unexpected size % instead of 40", size_of(type_of(uv_cpu_info_s.cpu_times)));
        assert(size_of(uv_cpu_info_s) == 56, "uv_cpu_info_s has size % instead of 56", size_of(uv_cpu_info_s));
    }

    {
        instance: uv_interface_address_s;
        assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 0, "uv_interface_address_s.name has unexpected offset % instead of 0", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_interface_address_s.name)) == 8, "uv_interface_address_s.name has unexpected size % instead of 8", size_of(type_of(uv_interface_address_s.name)));
        assert(((cast(*void)(*instance.phys_addr)) - cast(*void)(*instance)) == 8, "uv_interface_address_s.phys_addr has unexpected offset % instead of 8", ((cast(*void)(*instance.phys_addr)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_interface_address_s.phys_addr)) == 6, "uv_interface_address_s.phys_addr has unexpected size % instead of 6", size_of(type_of(uv_interface_address_s.phys_addr)));
        assert(((cast(*void)(*instance.is_internal)) - cast(*void)(*instance)) == 16, "uv_interface_address_s.is_internal has unexpected offset % instead of 16", ((cast(*void)(*instance.is_internal)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_interface_address_s.is_internal)) == 4, "uv_interface_address_s.is_internal has unexpected size % instead of 4", size_of(type_of(uv_interface_address_s.is_internal)));
        assert(((cast(*void)(*instance.address)) - cast(*void)(*instance)) == 20, "uv_interface_address_s.address has unexpected offset % instead of 20", ((cast(*void)(*instance.address)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_interface_address_s.address)) == 28, "uv_interface_address_s.address has unexpected size % instead of 28", size_of(type_of(uv_interface_address_s.address)));
        assert(((cast(*void)(*instance.netmask)) - cast(*void)(*instance)) == 48, "uv_interface_address_s.netmask has unexpected offset % instead of 48", ((cast(*void)(*instance.netmask)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_interface_address_s.netmask)) == 28, "uv_interface_address_s.netmask has unexpected size % instead of 28", size_of(type_of(uv_interface_address_s.netmask)));
        assert(size_of(uv_interface_address_s) == 80, "uv_interface_address_s has size % instead of 80", size_of(uv_interface_address_s));
    }

    {
        instance: uv_passwd_s;
        assert(((cast(*void)(*instance.username)) - cast(*void)(*instance)) == 0, "uv_passwd_s.username has unexpected offset % instead of 0", ((cast(*void)(*instance.username)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_passwd_s.username)) == 8, "uv_passwd_s.username has unexpected size % instead of 8", size_of(type_of(uv_passwd_s.username)));
        assert(((cast(*void)(*instance.uid)) - cast(*void)(*instance)) == 8, "uv_passwd_s.uid has unexpected offset % instead of 8", ((cast(*void)(*instance.uid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_passwd_s.uid)) == 8, "uv_passwd_s.uid has unexpected size % instead of 8", size_of(type_of(uv_passwd_s.uid)));
        assert(((cast(*void)(*instance.gid)) - cast(*void)(*instance)) == 16, "uv_passwd_s.gid has unexpected offset % instead of 16", ((cast(*void)(*instance.gid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_passwd_s.gid)) == 8, "uv_passwd_s.gid has unexpected size % instead of 8", size_of(type_of(uv_passwd_s.gid)));
        assert(((cast(*void)(*instance.shell)) - cast(*void)(*instance)) == 24, "uv_passwd_s.shell has unexpected offset % instead of 24", ((cast(*void)(*instance.shell)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_passwd_s.shell)) == 8, "uv_passwd_s.shell has unexpected size % instead of 8", size_of(type_of(uv_passwd_s.shell)));
        assert(((cast(*void)(*instance.homedir)) - cast(*void)(*instance)) == 32, "uv_passwd_s.homedir has unexpected offset % instead of 32", ((cast(*void)(*instance.homedir)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_passwd_s.homedir)) == 8, "uv_passwd_s.homedir has unexpected size % instead of 8", size_of(type_of(uv_passwd_s.homedir)));
        assert(size_of(uv_passwd_s) == 40, "uv_passwd_s has size % instead of 40", size_of(uv_passwd_s));
    }

    {
        instance: uv_group_s;
        assert(((cast(*void)(*instance.groupname)) - cast(*void)(*instance)) == 0, "uv_group_s.groupname has unexpected offset % instead of 0", ((cast(*void)(*instance.groupname)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_group_s.groupname)) == 8, "uv_group_s.groupname has unexpected size % instead of 8", size_of(type_of(uv_group_s.groupname)));
        assert(((cast(*void)(*instance.gid)) - cast(*void)(*instance)) == 8, "uv_group_s.gid has unexpected offset % instead of 8", ((cast(*void)(*instance.gid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_group_s.gid)) == 8, "uv_group_s.gid has unexpected size % instead of 8", size_of(type_of(uv_group_s.gid)));
        assert(((cast(*void)(*instance.members)) - cast(*void)(*instance)) == 16, "uv_group_s.members has unexpected offset % instead of 16", ((cast(*void)(*instance.members)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_group_s.members)) == 8, "uv_group_s.members has unexpected size % instead of 8", size_of(type_of(uv_group_s.members)));
        assert(size_of(uv_group_s) == 24, "uv_group_s has size % instead of 24", size_of(uv_group_s));
    }

    {
        instance: uv_utsname_s;
        assert(((cast(*void)(*instance.sysname)) - cast(*void)(*instance)) == 0, "uv_utsname_s.sysname has unexpected offset % instead of 0", ((cast(*void)(*instance.sysname)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_utsname_s.sysname)) == 256, "uv_utsname_s.sysname has unexpected size % instead of 256", size_of(type_of(uv_utsname_s.sysname)));
        assert(((cast(*void)(*instance.release)) - cast(*void)(*instance)) == 256, "uv_utsname_s.release has unexpected offset % instead of 256", ((cast(*void)(*instance.release)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_utsname_s.release)) == 256, "uv_utsname_s.release has unexpected size % instead of 256", size_of(type_of(uv_utsname_s.release)));
        assert(((cast(*void)(*instance.version)) - cast(*void)(*instance)) == 512, "uv_utsname_s.version has unexpected offset % instead of 512", ((cast(*void)(*instance.version)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_utsname_s.version)) == 256, "uv_utsname_s.version has unexpected size % instead of 256", size_of(type_of(uv_utsname_s.version)));
        assert(((cast(*void)(*instance.machine)) - cast(*void)(*instance)) == 768, "uv_utsname_s.machine has unexpected offset % instead of 768", ((cast(*void)(*instance.machine)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_utsname_s.machine)) == 256, "uv_utsname_s.machine has unexpected size % instead of 256", size_of(type_of(uv_utsname_s.machine)));
        assert(size_of(uv_utsname_s) == 1024, "uv_utsname_s has size % instead of 1024", size_of(uv_utsname_s));
    }

    {
        instance: uv_statfs_s;
        assert(((cast(*void)(*instance.f_type)) - cast(*void)(*instance)) == 0, "uv_statfs_s.f_type has unexpected offset % instead of 0", ((cast(*void)(*instance.f_type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_statfs_s.f_type)) == 8, "uv_statfs_s.f_type has unexpected size % instead of 8", size_of(type_of(uv_statfs_s.f_type)));
        assert(((cast(*void)(*instance.f_bsize)) - cast(*void)(*instance)) == 8, "uv_statfs_s.f_bsize has unexpected offset % instead of 8", ((cast(*void)(*instance.f_bsize)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_statfs_s.f_bsize)) == 8, "uv_statfs_s.f_bsize has unexpected size % instead of 8", size_of(type_of(uv_statfs_s.f_bsize)));
        assert(((cast(*void)(*instance.f_blocks)) - cast(*void)(*instance)) == 16, "uv_statfs_s.f_blocks has unexpected offset % instead of 16", ((cast(*void)(*instance.f_blocks)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_statfs_s.f_blocks)) == 8, "uv_statfs_s.f_blocks has unexpected size % instead of 8", size_of(type_of(uv_statfs_s.f_blocks)));
        assert(((cast(*void)(*instance.f_bfree)) - cast(*void)(*instance)) == 24, "uv_statfs_s.f_bfree has unexpected offset % instead of 24", ((cast(*void)(*instance.f_bfree)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_statfs_s.f_bfree)) == 8, "uv_statfs_s.f_bfree has unexpected size % instead of 8", size_of(type_of(uv_statfs_s.f_bfree)));
        assert(((cast(*void)(*instance.f_bavail)) - cast(*void)(*instance)) == 32, "uv_statfs_s.f_bavail has unexpected offset % instead of 32", ((cast(*void)(*instance.f_bavail)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_statfs_s.f_bavail)) == 8, "uv_statfs_s.f_bavail has unexpected size % instead of 8", size_of(type_of(uv_statfs_s.f_bavail)));
        assert(((cast(*void)(*instance.f_files)) - cast(*void)(*instance)) == 40, "uv_statfs_s.f_files has unexpected offset % instead of 40", ((cast(*void)(*instance.f_files)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_statfs_s.f_files)) == 8, "uv_statfs_s.f_files has unexpected size % instead of 8", size_of(type_of(uv_statfs_s.f_files)));
        assert(((cast(*void)(*instance.f_ffree)) - cast(*void)(*instance)) == 48, "uv_statfs_s.f_ffree has unexpected offset % instead of 48", ((cast(*void)(*instance.f_ffree)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_statfs_s.f_ffree)) == 8, "uv_statfs_s.f_ffree has unexpected size % instead of 8", size_of(type_of(uv_statfs_s.f_ffree)));
        assert(((cast(*void)(*instance.f_spare)) - cast(*void)(*instance)) == 56, "uv_statfs_s.f_spare has unexpected offset % instead of 56", ((cast(*void)(*instance.f_spare)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_statfs_s.f_spare)) == 32, "uv_statfs_s.f_spare has unexpected size % instead of 32", size_of(type_of(uv_statfs_s.f_spare)));
        assert(size_of(uv_statfs_s) == 88, "uv_statfs_s has size % instead of 88", size_of(uv_statfs_s));
    }

    {
        instance: uv_dirent_s;
        assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 0, "uv_dirent_s.name has unexpected offset % instead of 0", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_dirent_s.name)) == 8, "uv_dirent_s.name has unexpected size % instead of 8", size_of(type_of(uv_dirent_s.name)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_dirent_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_dirent_s.type)) == 4, "uv_dirent_s.type has unexpected size % instead of 4", size_of(type_of(uv_dirent_s.type)));
        assert(size_of(uv_dirent_s) == 16, "uv_dirent_s has size % instead of 16", size_of(uv_dirent_s));
    }

    {
        instance: uv_rusage_t;
        assert(((cast(*void)(*instance.ru_utime)) - cast(*void)(*instance)) == 0, "uv_rusage_t.ru_utime has unexpected offset % instead of 0", ((cast(*void)(*instance.ru_utime)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_utime)) == 16, "uv_rusage_t.ru_utime has unexpected size % instead of 16", size_of(type_of(uv_rusage_t.ru_utime)));
        assert(((cast(*void)(*instance.ru_stime)) - cast(*void)(*instance)) == 16, "uv_rusage_t.ru_stime has unexpected offset % instead of 16", ((cast(*void)(*instance.ru_stime)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_stime)) == 16, "uv_rusage_t.ru_stime has unexpected size % instead of 16", size_of(type_of(uv_rusage_t.ru_stime)));
        assert(((cast(*void)(*instance.ru_maxrss)) - cast(*void)(*instance)) == 32, "uv_rusage_t.ru_maxrss has unexpected offset % instead of 32", ((cast(*void)(*instance.ru_maxrss)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_maxrss)) == 8, "uv_rusage_t.ru_maxrss has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_maxrss)));
        assert(((cast(*void)(*instance.ru_ixrss)) - cast(*void)(*instance)) == 40, "uv_rusage_t.ru_ixrss has unexpected offset % instead of 40", ((cast(*void)(*instance.ru_ixrss)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_ixrss)) == 8, "uv_rusage_t.ru_ixrss has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_ixrss)));
        assert(((cast(*void)(*instance.ru_idrss)) - cast(*void)(*instance)) == 48, "uv_rusage_t.ru_idrss has unexpected offset % instead of 48", ((cast(*void)(*instance.ru_idrss)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_idrss)) == 8, "uv_rusage_t.ru_idrss has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_idrss)));
        assert(((cast(*void)(*instance.ru_isrss)) - cast(*void)(*instance)) == 56, "uv_rusage_t.ru_isrss has unexpected offset % instead of 56", ((cast(*void)(*instance.ru_isrss)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_isrss)) == 8, "uv_rusage_t.ru_isrss has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_isrss)));
        assert(((cast(*void)(*instance.ru_minflt)) - cast(*void)(*instance)) == 64, "uv_rusage_t.ru_minflt has unexpected offset % instead of 64", ((cast(*void)(*instance.ru_minflt)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_minflt)) == 8, "uv_rusage_t.ru_minflt has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_minflt)));
        assert(((cast(*void)(*instance.ru_majflt)) - cast(*void)(*instance)) == 72, "uv_rusage_t.ru_majflt has unexpected offset % instead of 72", ((cast(*void)(*instance.ru_majflt)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_majflt)) == 8, "uv_rusage_t.ru_majflt has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_majflt)));
        assert(((cast(*void)(*instance.ru_nswap)) - cast(*void)(*instance)) == 80, "uv_rusage_t.ru_nswap has unexpected offset % instead of 80", ((cast(*void)(*instance.ru_nswap)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_nswap)) == 8, "uv_rusage_t.ru_nswap has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_nswap)));
        assert(((cast(*void)(*instance.ru_inblock)) - cast(*void)(*instance)) == 88, "uv_rusage_t.ru_inblock has unexpected offset % instead of 88", ((cast(*void)(*instance.ru_inblock)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_inblock)) == 8, "uv_rusage_t.ru_inblock has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_inblock)));
        assert(((cast(*void)(*instance.ru_oublock)) - cast(*void)(*instance)) == 96, "uv_rusage_t.ru_oublock has unexpected offset % instead of 96", ((cast(*void)(*instance.ru_oublock)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_oublock)) == 8, "uv_rusage_t.ru_oublock has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_oublock)));
        assert(((cast(*void)(*instance.ru_msgsnd)) - cast(*void)(*instance)) == 104, "uv_rusage_t.ru_msgsnd has unexpected offset % instead of 104", ((cast(*void)(*instance.ru_msgsnd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_msgsnd)) == 8, "uv_rusage_t.ru_msgsnd has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_msgsnd)));
        assert(((cast(*void)(*instance.ru_msgrcv)) - cast(*void)(*instance)) == 112, "uv_rusage_t.ru_msgrcv has unexpected offset % instead of 112", ((cast(*void)(*instance.ru_msgrcv)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_msgrcv)) == 8, "uv_rusage_t.ru_msgrcv has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_msgrcv)));
        assert(((cast(*void)(*instance.ru_nsignals)) - cast(*void)(*instance)) == 120, "uv_rusage_t.ru_nsignals has unexpected offset % instead of 120", ((cast(*void)(*instance.ru_nsignals)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_nsignals)) == 8, "uv_rusage_t.ru_nsignals has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_nsignals)));
        assert(((cast(*void)(*instance.ru_nvcsw)) - cast(*void)(*instance)) == 128, "uv_rusage_t.ru_nvcsw has unexpected offset % instead of 128", ((cast(*void)(*instance.ru_nvcsw)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_nvcsw)) == 8, "uv_rusage_t.ru_nvcsw has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_nvcsw)));
        assert(((cast(*void)(*instance.ru_nivcsw)) - cast(*void)(*instance)) == 136, "uv_rusage_t.ru_nivcsw has unexpected offset % instead of 136", ((cast(*void)(*instance.ru_nivcsw)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_rusage_t.ru_nivcsw)) == 8, "uv_rusage_t.ru_nivcsw has unexpected size % instead of 8", size_of(type_of(uv_rusage_t.ru_nivcsw)));
        assert(size_of(uv_rusage_t) == 144, "uv_rusage_t has size % instead of 144", size_of(uv_rusage_t));
    }

    {
        instance: uv_env_item_s;
        assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 0, "uv_env_item_s.name has unexpected offset % instead of 0", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_env_item_s.name)) == 8, "uv_env_item_s.name has unexpected size % instead of 8", size_of(type_of(uv_env_item_s.name)));
        assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 8, "uv_env_item_s.value has unexpected offset % instead of 8", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_env_item_s.value)) == 8, "uv_env_item_s.value has unexpected size % instead of 8", size_of(type_of(uv_env_item_s.value)));
        assert(size_of(uv_env_item_s) == 16, "uv_env_item_s has size % instead of 16", size_of(uv_env_item_s));
    }

    {
        instance: uv_metrics_s;
        assert(((cast(*void)(*instance.loop_count)) - cast(*void)(*instance)) == 0, "uv_metrics_s.loop_count has unexpected offset % instead of 0", ((cast(*void)(*instance.loop_count)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_metrics_s.loop_count)) == 8, "uv_metrics_s.loop_count has unexpected size % instead of 8", size_of(type_of(uv_metrics_s.loop_count)));
        assert(((cast(*void)(*instance.events)) - cast(*void)(*instance)) == 8, "uv_metrics_s.events has unexpected offset % instead of 8", ((cast(*void)(*instance.events)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_metrics_s.events)) == 8, "uv_metrics_s.events has unexpected size % instead of 8", size_of(type_of(uv_metrics_s.events)));
        assert(((cast(*void)(*instance.events_waiting)) - cast(*void)(*instance)) == 16, "uv_metrics_s.events_waiting has unexpected offset % instead of 16", ((cast(*void)(*instance.events_waiting)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_metrics_s.events_waiting)) == 8, "uv_metrics_s.events_waiting has unexpected size % instead of 8", size_of(type_of(uv_metrics_s.events_waiting)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 24, "uv_metrics_s.reserved has unexpected offset % instead of 24", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_metrics_s.reserved)) == 104, "uv_metrics_s.reserved has unexpected size % instead of 104", size_of(type_of(uv_metrics_s.reserved)));
        assert(size_of(uv_metrics_s) == 128, "uv_metrics_s has size % instead of 128", size_of(uv_metrics_s));
    }

    {
        instance: uv_dir_s;
        assert(((cast(*void)(*instance.dirents)) - cast(*void)(*instance)) == 0, "uv_dir_s.dirents has unexpected offset % instead of 0", ((cast(*void)(*instance.dirents)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_dir_s.dirents)) == 8, "uv_dir_s.dirents has unexpected size % instead of 8", size_of(type_of(uv_dir_s.dirents)));
        assert(((cast(*void)(*instance.nentries)) - cast(*void)(*instance)) == 8, "uv_dir_s.nentries has unexpected offset % instead of 8", ((cast(*void)(*instance.nentries)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_dir_s.nentries)) == 8, "uv_dir_s.nentries has unexpected size % instead of 8", size_of(type_of(uv_dir_s.nentries)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_dir_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_dir_s.reserved)) == 32, "uv_dir_s.reserved has unexpected size % instead of 32", size_of(type_of(uv_dir_s.reserved)));
        assert(((cast(*void)(*instance.dir)) - cast(*void)(*instance)) == 48, "uv_dir_s.dir has unexpected offset % instead of 48", ((cast(*void)(*instance.dir)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_dir_s.dir)) == 8, "uv_dir_s.dir has unexpected size % instead of 8", size_of(type_of(uv_dir_s.dir)));
        assert(size_of(uv_dir_s) == 56, "uv_dir_s has size % instead of 56", size_of(uv_dir_s));
    }

    {
        instance: uv_fs_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_fs_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.data)) == 8, "uv_fs_s.data has unexpected size % instead of 8", size_of(type_of(uv_fs_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_fs_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.type)) == 4, "uv_fs_s.type has unexpected size % instead of 4", size_of(type_of(uv_fs_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_fs_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.reserved)) == 48, "uv_fs_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_fs_s.reserved)));
        assert(((cast(*void)(*instance.fs_type)) - cast(*void)(*instance)) == 64, "uv_fs_s.fs_type has unexpected offset % instead of 64", ((cast(*void)(*instance.fs_type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.fs_type)) == 4, "uv_fs_s.fs_type has unexpected size % instead of 4", size_of(type_of(uv_fs_s.fs_type)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 72, "uv_fs_s.loop has unexpected offset % instead of 72", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.loop)) == 8, "uv_fs_s.loop has unexpected size % instead of 8", size_of(type_of(uv_fs_s.loop)));
        assert(((cast(*void)(*instance.cb)) - cast(*void)(*instance)) == 80, "uv_fs_s.cb has unexpected offset % instead of 80", ((cast(*void)(*instance.cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.cb)) == 8, "uv_fs_s.cb has unexpected size % instead of 8", size_of(type_of(uv_fs_s.cb)));
        assert(((cast(*void)(*instance.result)) - cast(*void)(*instance)) == 88, "uv_fs_s.result has unexpected offset % instead of 88", ((cast(*void)(*instance.result)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.result)) == 8, "uv_fs_s.result has unexpected size % instead of 8", size_of(type_of(uv_fs_s.result)));
        assert(((cast(*void)(*instance.ptr)) - cast(*void)(*instance)) == 96, "uv_fs_s.ptr has unexpected offset % instead of 96", ((cast(*void)(*instance.ptr)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.ptr)) == 8, "uv_fs_s.ptr has unexpected size % instead of 8", size_of(type_of(uv_fs_s.ptr)));
        assert(((cast(*void)(*instance.path)) - cast(*void)(*instance)) == 104, "uv_fs_s.path has unexpected offset % instead of 104", ((cast(*void)(*instance.path)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.path)) == 8, "uv_fs_s.path has unexpected size % instead of 8", size_of(type_of(uv_fs_s.path)));
        assert(((cast(*void)(*instance.statbuf)) - cast(*void)(*instance)) == 112, "uv_fs_s.statbuf has unexpected offset % instead of 112", ((cast(*void)(*instance.statbuf)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.statbuf)) == 160, "uv_fs_s.statbuf has unexpected size % instead of 160", size_of(type_of(uv_fs_s.statbuf)));
        assert(((cast(*void)(*instance.new_path)) - cast(*void)(*instance)) == 272, "uv_fs_s.new_path has unexpected offset % instead of 272", ((cast(*void)(*instance.new_path)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.new_path)) == 8, "uv_fs_s.new_path has unexpected size % instead of 8", size_of(type_of(uv_fs_s.new_path)));
        assert(((cast(*void)(*instance.file)) - cast(*void)(*instance)) == 280, "uv_fs_s.file has unexpected offset % instead of 280", ((cast(*void)(*instance.file)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.file)) == 4, "uv_fs_s.file has unexpected size % instead of 4", size_of(type_of(uv_fs_s.file)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 284, "uv_fs_s.flags has unexpected offset % instead of 284", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.flags)) == 4, "uv_fs_s.flags has unexpected size % instead of 4", size_of(type_of(uv_fs_s.flags)));
        assert(((cast(*void)(*instance.mode)) - cast(*void)(*instance)) == 288, "uv_fs_s.mode has unexpected offset % instead of 288", ((cast(*void)(*instance.mode)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.mode)) == 4, "uv_fs_s.mode has unexpected size % instead of 4", size_of(type_of(uv_fs_s.mode)));
        assert(((cast(*void)(*instance.nbufs)) - cast(*void)(*instance)) == 292, "uv_fs_s.nbufs has unexpected offset % instead of 292", ((cast(*void)(*instance.nbufs)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.nbufs)) == 4, "uv_fs_s.nbufs has unexpected size % instead of 4", size_of(type_of(uv_fs_s.nbufs)));
        assert(((cast(*void)(*instance.bufs)) - cast(*void)(*instance)) == 296, "uv_fs_s.bufs has unexpected offset % instead of 296", ((cast(*void)(*instance.bufs)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.bufs)) == 8, "uv_fs_s.bufs has unexpected size % instead of 8", size_of(type_of(uv_fs_s.bufs)));
        assert(((cast(*void)(*instance.off)) - cast(*void)(*instance)) == 304, "uv_fs_s.off has unexpected offset % instead of 304", ((cast(*void)(*instance.off)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.off)) == 8, "uv_fs_s.off has unexpected size % instead of 8", size_of(type_of(uv_fs_s.off)));
        assert(((cast(*void)(*instance.uid)) - cast(*void)(*instance)) == 312, "uv_fs_s.uid has unexpected offset % instead of 312", ((cast(*void)(*instance.uid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.uid)) == 4, "uv_fs_s.uid has unexpected size % instead of 4", size_of(type_of(uv_fs_s.uid)));
        assert(((cast(*void)(*instance.gid)) - cast(*void)(*instance)) == 316, "uv_fs_s.gid has unexpected offset % instead of 316", ((cast(*void)(*instance.gid)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.gid)) == 4, "uv_fs_s.gid has unexpected size % instead of 4", size_of(type_of(uv_fs_s.gid)));
        assert(((cast(*void)(*instance.atime)) - cast(*void)(*instance)) == 320, "uv_fs_s.atime has unexpected offset % instead of 320", ((cast(*void)(*instance.atime)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.atime)) == 8, "uv_fs_s.atime has unexpected size % instead of 8", size_of(type_of(uv_fs_s.atime)));
        assert(((cast(*void)(*instance.mtime)) - cast(*void)(*instance)) == 328, "uv_fs_s.mtime has unexpected offset % instead of 328", ((cast(*void)(*instance.mtime)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.mtime)) == 8, "uv_fs_s.mtime has unexpected size % instead of 8", size_of(type_of(uv_fs_s.mtime)));
        assert(((cast(*void)(*instance.work_req)) - cast(*void)(*instance)) == 336, "uv_fs_s.work_req has unexpected offset % instead of 336", ((cast(*void)(*instance.work_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.work_req)) == 40, "uv_fs_s.work_req has unexpected size % instead of 40", size_of(type_of(uv_fs_s.work_req)));
        assert(((cast(*void)(*instance.bufsml)) - cast(*void)(*instance)) == 376, "uv_fs_s.bufsml has unexpected offset % instead of 376", ((cast(*void)(*instance.bufsml)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_s.bufsml)) == 64, "uv_fs_s.bufsml has unexpected size % instead of 64", size_of(type_of(uv_fs_s.bufsml)));
        assert(size_of(uv_fs_s) == 440, "uv_fs_s has size % instead of 440", size_of(uv_fs_s));
    }

    {
        instance: uv_fs_event_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_fs_event_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.data)) == 8, "uv_fs_event_s.data has unexpected size % instead of 8", size_of(type_of(uv_fs_event_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_fs_event_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.loop)) == 8, "uv_fs_event_s.loop has unexpected size % instead of 8", size_of(type_of(uv_fs_event_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_fs_event_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.type)) == 4, "uv_fs_event_s.type has unexpected size % instead of 4", size_of(type_of(uv_fs_event_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_fs_event_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.close_cb)) == 8, "uv_fs_event_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_fs_event_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_fs_event_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.handle_queue)) == 16, "uv_fs_event_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_fs_event_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_fs_event_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.u)) == 32, "uv_fs_event_s.u has unexpected size % instead of 32", size_of(type_of(uv_fs_event_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_fs_event_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.next_closing)) == 8, "uv_fs_event_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_fs_event_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_fs_event_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.flags)) == 4, "uv_fs_event_s.flags has unexpected size % instead of 4", size_of(type_of(uv_fs_event_s.flags)));
        assert(((cast(*void)(*instance.path)) - cast(*void)(*instance)) == 96, "uv_fs_event_s.path has unexpected offset % instead of 96", ((cast(*void)(*instance.path)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.path)) == 8, "uv_fs_event_s.path has unexpected size % instead of 8", size_of(type_of(uv_fs_event_s.path)));
        assert(((cast(*void)(*instance.cb)) - cast(*void)(*instance)) == 104, "uv_fs_event_s.cb has unexpected offset % instead of 104", ((cast(*void)(*instance.cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.cb)) == 8, "uv_fs_event_s.cb has unexpected size % instead of 8", size_of(type_of(uv_fs_event_s.cb)));
        assert(((cast(*void)(*instance.watchers)) - cast(*void)(*instance)) == 112, "uv_fs_event_s.watchers has unexpected offset % instead of 112", ((cast(*void)(*instance.watchers)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.watchers)) == 16, "uv_fs_event_s.watchers has unexpected size % instead of 16", size_of(type_of(uv_fs_event_s.watchers)));
        assert(((cast(*void)(*instance.wd)) - cast(*void)(*instance)) == 128, "uv_fs_event_s.wd has unexpected offset % instead of 128", ((cast(*void)(*instance.wd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_event_s.wd)) == 4, "uv_fs_event_s.wd has unexpected size % instead of 4", size_of(type_of(uv_fs_event_s.wd)));
        assert(size_of(uv_fs_event_s) == 136, "uv_fs_event_s has size % instead of 136", size_of(uv_fs_event_s));
    }

    {
        instance: uv_fs_poll_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_fs_poll_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_poll_s.data)) == 8, "uv_fs_poll_s.data has unexpected size % instead of 8", size_of(type_of(uv_fs_poll_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_fs_poll_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_poll_s.loop)) == 8, "uv_fs_poll_s.loop has unexpected size % instead of 8", size_of(type_of(uv_fs_poll_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_fs_poll_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_poll_s.type)) == 4, "uv_fs_poll_s.type has unexpected size % instead of 4", size_of(type_of(uv_fs_poll_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_fs_poll_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_poll_s.close_cb)) == 8, "uv_fs_poll_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_fs_poll_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_fs_poll_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_poll_s.handle_queue)) == 16, "uv_fs_poll_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_fs_poll_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_fs_poll_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_poll_s.u)) == 32, "uv_fs_poll_s.u has unexpected size % instead of 32", size_of(type_of(uv_fs_poll_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_fs_poll_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_poll_s.next_closing)) == 8, "uv_fs_poll_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_fs_poll_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_fs_poll_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_poll_s.flags)) == 4, "uv_fs_poll_s.flags has unexpected size % instead of 4", size_of(type_of(uv_fs_poll_s.flags)));
        assert(((cast(*void)(*instance.poll_ctx)) - cast(*void)(*instance)) == 96, "uv_fs_poll_s.poll_ctx has unexpected offset % instead of 96", ((cast(*void)(*instance.poll_ctx)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_fs_poll_s.poll_ctx)) == 8, "uv_fs_poll_s.poll_ctx has unexpected size % instead of 8", size_of(type_of(uv_fs_poll_s.poll_ctx)));
        assert(size_of(uv_fs_poll_s) == 104, "uv_fs_poll_s has size % instead of 104", size_of(uv_fs_poll_s));
    }

    {
        instance: uv_signal_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_signal_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.data)) == 8, "uv_signal_s.data has unexpected size % instead of 8", size_of(type_of(uv_signal_s.data)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 8, "uv_signal_s.loop has unexpected offset % instead of 8", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.loop)) == 8, "uv_signal_s.loop has unexpected size % instead of 8", size_of(type_of(uv_signal_s.loop)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "uv_signal_s.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.type)) == 4, "uv_signal_s.type has unexpected size % instead of 4", size_of(type_of(uv_signal_s.type)));
        assert(((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)) == 24, "uv_signal_s.close_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.close_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.close_cb)) == 8, "uv_signal_s.close_cb has unexpected size % instead of 8", size_of(type_of(uv_signal_s.close_cb)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 32, "uv_signal_s.handle_queue has unexpected offset % instead of 32", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.handle_queue)) == 16, "uv_signal_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_signal_s.handle_queue)));
        assert(((cast(*void)(*instance.u)) - cast(*void)(*instance)) == 48, "uv_signal_s.u has unexpected offset % instead of 48", ((cast(*void)(*instance.u)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.u)) == 32, "uv_signal_s.u has unexpected size % instead of 32", size_of(type_of(uv_signal_s.u)));
        assert(((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)) == 80, "uv_signal_s.next_closing has unexpected offset % instead of 80", ((cast(*void)(*instance.next_closing)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.next_closing)) == 8, "uv_signal_s.next_closing has unexpected size % instead of 8", size_of(type_of(uv_signal_s.next_closing)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 88, "uv_signal_s.flags has unexpected offset % instead of 88", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.flags)) == 4, "uv_signal_s.flags has unexpected size % instead of 4", size_of(type_of(uv_signal_s.flags)));
        assert(((cast(*void)(*instance.signal_cb)) - cast(*void)(*instance)) == 96, "uv_signal_s.signal_cb has unexpected offset % instead of 96", ((cast(*void)(*instance.signal_cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.signal_cb)) == 8, "uv_signal_s.signal_cb has unexpected size % instead of 8", size_of(type_of(uv_signal_s.signal_cb)));
        assert(((cast(*void)(*instance.signum)) - cast(*void)(*instance)) == 104, "uv_signal_s.signum has unexpected offset % instead of 104", ((cast(*void)(*instance.signum)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.signum)) == 4, "uv_signal_s.signum has unexpected size % instead of 4", size_of(type_of(uv_signal_s.signum)));
        assert(((cast(*void)(*instance.tree_entry)) - cast(*void)(*instance)) == 112, "uv_signal_s.tree_entry has unexpected offset % instead of 112", ((cast(*void)(*instance.tree_entry)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.tree_entry)) == 32, "uv_signal_s.tree_entry has unexpected size % instead of 32", size_of(type_of(uv_signal_s.tree_entry)));
        assert(((cast(*void)(*instance.caught_signals)) - cast(*void)(*instance)) == 144, "uv_signal_s.caught_signals has unexpected offset % instead of 144", ((cast(*void)(*instance.caught_signals)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.caught_signals)) == 4, "uv_signal_s.caught_signals has unexpected size % instead of 4", size_of(type_of(uv_signal_s.caught_signals)));
        assert(((cast(*void)(*instance.dispatched_signals)) - cast(*void)(*instance)) == 148, "uv_signal_s.dispatched_signals has unexpected offset % instead of 148", ((cast(*void)(*instance.dispatched_signals)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_signal_s.dispatched_signals)) == 4, "uv_signal_s.dispatched_signals has unexpected size % instead of 4", size_of(type_of(uv_signal_s.dispatched_signals)));
        assert(size_of(uv_signal_s) == 152, "uv_signal_s has size % instead of 152", size_of(uv_signal_s));
    }

    {
        instance: uv_random_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_random_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_random_s.data)) == 8, "uv_random_s.data has unexpected size % instead of 8", size_of(type_of(uv_random_s.data)));
        assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "uv_random_s.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_random_s.type)) == 4, "uv_random_s.type has unexpected size % instead of 4", size_of(type_of(uv_random_s.type)));
        assert(((cast(*void)(*instance.reserved)) - cast(*void)(*instance)) == 16, "uv_random_s.reserved has unexpected offset % instead of 16", ((cast(*void)(*instance.reserved)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_random_s.reserved)) == 48, "uv_random_s.reserved has unexpected size % instead of 48", size_of(type_of(uv_random_s.reserved)));
        assert(((cast(*void)(*instance.loop)) - cast(*void)(*instance)) == 64, "uv_random_s.loop has unexpected offset % instead of 64", ((cast(*void)(*instance.loop)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_random_s.loop)) == 8, "uv_random_s.loop has unexpected size % instead of 8", size_of(type_of(uv_random_s.loop)));
        assert(((cast(*void)(*instance.status)) - cast(*void)(*instance)) == 72, "uv_random_s.status has unexpected offset % instead of 72", ((cast(*void)(*instance.status)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_random_s.status)) == 4, "uv_random_s.status has unexpected size % instead of 4", size_of(type_of(uv_random_s.status)));
        assert(((cast(*void)(*instance.buf)) - cast(*void)(*instance)) == 80, "uv_random_s.buf has unexpected offset % instead of 80", ((cast(*void)(*instance.buf)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_random_s.buf)) == 8, "uv_random_s.buf has unexpected size % instead of 8", size_of(type_of(uv_random_s.buf)));
        assert(((cast(*void)(*instance.buflen)) - cast(*void)(*instance)) == 88, "uv_random_s.buflen has unexpected offset % instead of 88", ((cast(*void)(*instance.buflen)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_random_s.buflen)) == 8, "uv_random_s.buflen has unexpected size % instead of 8", size_of(type_of(uv_random_s.buflen)));
        assert(((cast(*void)(*instance.cb)) - cast(*void)(*instance)) == 96, "uv_random_s.cb has unexpected offset % instead of 96", ((cast(*void)(*instance.cb)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_random_s.cb)) == 8, "uv_random_s.cb has unexpected size % instead of 8", size_of(type_of(uv_random_s.cb)));
        assert(((cast(*void)(*instance.work_req)) - cast(*void)(*instance)) == 104, "uv_random_s.work_req has unexpected offset % instead of 104", ((cast(*void)(*instance.work_req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_random_s.work_req)) == 40, "uv_random_s.work_req has unexpected size % instead of 40", size_of(type_of(uv_random_s.work_req)));
        assert(size_of(uv_random_s) == 144, "uv_random_s has size % instead of 144", size_of(uv_random_s));
    }

    {
        instance: uv_thread_options_s;
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 0, "uv_thread_options_s.flags has unexpected offset % instead of 0", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_thread_options_s.flags)) == 4, "uv_thread_options_s.flags has unexpected size % instead of 4", size_of(type_of(uv_thread_options_s.flags)));
        assert(((cast(*void)(*instance.stack_size)) - cast(*void)(*instance)) == 8, "uv_thread_options_s.stack_size has unexpected offset % instead of 8", ((cast(*void)(*instance.stack_size)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_thread_options_s.stack_size)) == 8, "uv_thread_options_s.stack_size has unexpected size % instead of 8", size_of(type_of(uv_thread_options_s.stack_size)));
        assert(size_of(uv_thread_options_s) == 16, "uv_thread_options_s has size % instead of 16", size_of(uv_thread_options_s));
    }

    {
        instance: uv_any_handle;
        assert(((cast(*void)(*instance.async)) - cast(*void)(*instance)) == 0, "uv_any_handle.async has unexpected offset % instead of 0", ((cast(*void)(*instance.async)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.async)) == 128, "uv_any_handle.async has unexpected size % instead of 128", size_of(type_of(uv_any_handle.async)));
        assert(((cast(*void)(*instance.check)) - cast(*void)(*instance)) == 0, "uv_any_handle.check has unexpected offset % instead of 0", ((cast(*void)(*instance.check)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.check)) == 120, "uv_any_handle.check has unexpected size % instead of 120", size_of(type_of(uv_any_handle.check)));
        assert(((cast(*void)(*instance.fs_event)) - cast(*void)(*instance)) == 0, "uv_any_handle.fs_event has unexpected offset % instead of 0", ((cast(*void)(*instance.fs_event)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.fs_event)) == 136, "uv_any_handle.fs_event has unexpected size % instead of 136", size_of(type_of(uv_any_handle.fs_event)));
        assert(((cast(*void)(*instance.fs_poll)) - cast(*void)(*instance)) == 0, "uv_any_handle.fs_poll has unexpected offset % instead of 0", ((cast(*void)(*instance.fs_poll)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.fs_poll)) == 104, "uv_any_handle.fs_poll has unexpected size % instead of 104", size_of(type_of(uv_any_handle.fs_poll)));
        assert(((cast(*void)(*instance.handle)) - cast(*void)(*instance)) == 0, "uv_any_handle.handle has unexpected offset % instead of 0", ((cast(*void)(*instance.handle)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.handle)) == 96, "uv_any_handle.handle has unexpected size % instead of 96", size_of(type_of(uv_any_handle.handle)));
        assert(((cast(*void)(*instance.idle)) - cast(*void)(*instance)) == 0, "uv_any_handle.idle has unexpected offset % instead of 0", ((cast(*void)(*instance.idle)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.idle)) == 120, "uv_any_handle.idle has unexpected size % instead of 120", size_of(type_of(uv_any_handle.idle)));
        assert(((cast(*void)(*instance.pipe)) - cast(*void)(*instance)) == 0, "uv_any_handle.pipe has unexpected offset % instead of 0", ((cast(*void)(*instance.pipe)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.pipe)) == 264, "uv_any_handle.pipe has unexpected size % instead of 264", size_of(type_of(uv_any_handle.pipe)));
        assert(((cast(*void)(*instance.poll)) - cast(*void)(*instance)) == 0, "uv_any_handle.poll has unexpected offset % instead of 0", ((cast(*void)(*instance.poll)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.poll)) == 160, "uv_any_handle.poll has unexpected size % instead of 160", size_of(type_of(uv_any_handle.poll)));
        assert(((cast(*void)(*instance.prepare)) - cast(*void)(*instance)) == 0, "uv_any_handle.prepare has unexpected offset % instead of 0", ((cast(*void)(*instance.prepare)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.prepare)) == 120, "uv_any_handle.prepare has unexpected size % instead of 120", size_of(type_of(uv_any_handle.prepare)));
        assert(((cast(*void)(*instance.process)) - cast(*void)(*instance)) == 0, "uv_any_handle.process has unexpected offset % instead of 0", ((cast(*void)(*instance.process)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.process)) == 136, "uv_any_handle.process has unexpected size % instead of 136", size_of(type_of(uv_any_handle.process)));
        assert(((cast(*void)(*instance.stream)) - cast(*void)(*instance)) == 0, "uv_any_handle.stream has unexpected offset % instead of 0", ((cast(*void)(*instance.stream)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.stream)) == 248, "uv_any_handle.stream has unexpected size % instead of 248", size_of(type_of(uv_any_handle.stream)));
        assert(((cast(*void)(*instance.tcp)) - cast(*void)(*instance)) == 0, "uv_any_handle.tcp has unexpected offset % instead of 0", ((cast(*void)(*instance.tcp)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.tcp)) == 248, "uv_any_handle.tcp has unexpected size % instead of 248", size_of(type_of(uv_any_handle.tcp)));
        assert(((cast(*void)(*instance.timer)) - cast(*void)(*instance)) == 0, "uv_any_handle.timer has unexpected offset % instead of 0", ((cast(*void)(*instance.timer)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.timer)) == 152, "uv_any_handle.timer has unexpected size % instead of 152", size_of(type_of(uv_any_handle.timer)));
        assert(((cast(*void)(*instance.tty)) - cast(*void)(*instance)) == 0, "uv_any_handle.tty has unexpected offset % instead of 0", ((cast(*void)(*instance.tty)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.tty)) == 312, "uv_any_handle.tty has unexpected size % instead of 312", size_of(type_of(uv_any_handle.tty)));
        assert(((cast(*void)(*instance.udp)) - cast(*void)(*instance)) == 0, "uv_any_handle.udp has unexpected offset % instead of 0", ((cast(*void)(*instance.udp)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.udp)) == 216, "uv_any_handle.udp has unexpected size % instead of 216", size_of(type_of(uv_any_handle.udp)));
        assert(((cast(*void)(*instance.signal)) - cast(*void)(*instance)) == 0, "uv_any_handle.signal has unexpected offset % instead of 0", ((cast(*void)(*instance.signal)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_handle.signal)) == 152, "uv_any_handle.signal has unexpected size % instead of 152", size_of(type_of(uv_any_handle.signal)));
        assert(size_of(uv_any_handle) == 312, "uv_any_handle has size % instead of 312", size_of(uv_any_handle));
    }

    {
        instance: uv_any_req;
        assert(((cast(*void)(*instance.req)) - cast(*void)(*instance)) == 0, "uv_any_req.req has unexpected offset % instead of 0", ((cast(*void)(*instance.req)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.req)) == 64, "uv_any_req.req has unexpected size % instead of 64", size_of(type_of(uv_any_req.req)));
        assert(((cast(*void)(*instance.connect)) - cast(*void)(*instance)) == 0, "uv_any_req.connect has unexpected offset % instead of 0", ((cast(*void)(*instance.connect)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.connect)) == 96, "uv_any_req.connect has unexpected size % instead of 96", size_of(type_of(uv_any_req.connect)));
        assert(((cast(*void)(*instance.write)) - cast(*void)(*instance)) == 0, "uv_any_req.write has unexpected offset % instead of 0", ((cast(*void)(*instance.write)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.write)) == 192, "uv_any_req.write has unexpected size % instead of 192", size_of(type_of(uv_any_req.write)));
        assert(((cast(*void)(*instance.shutdown)) - cast(*void)(*instance)) == 0, "uv_any_req.shutdown has unexpected offset % instead of 0", ((cast(*void)(*instance.shutdown)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.shutdown)) == 80, "uv_any_req.shutdown has unexpected size % instead of 80", size_of(type_of(uv_any_req.shutdown)));
        assert(((cast(*void)(*instance.udp_send)) - cast(*void)(*instance)) == 0, "uv_any_req.udp_send has unexpected offset % instead of 0", ((cast(*void)(*instance.udp_send)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.udp_send)) == 320, "uv_any_req.udp_send has unexpected size % instead of 320", size_of(type_of(uv_any_req.udp_send)));
        assert(((cast(*void)(*instance.fs)) - cast(*void)(*instance)) == 0, "uv_any_req.fs has unexpected offset % instead of 0", ((cast(*void)(*instance.fs)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.fs)) == 440, "uv_any_req.fs has unexpected size % instead of 440", size_of(type_of(uv_any_req.fs)));
        assert(((cast(*void)(*instance.work)) - cast(*void)(*instance)) == 0, "uv_any_req.work has unexpected offset % instead of 0", ((cast(*void)(*instance.work)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.work)) == 128, "uv_any_req.work has unexpected size % instead of 128", size_of(type_of(uv_any_req.work)));
        assert(((cast(*void)(*instance.getaddrinfo)) - cast(*void)(*instance)) == 0, "uv_any_req.getaddrinfo has unexpected offset % instead of 0", ((cast(*void)(*instance.getaddrinfo)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.getaddrinfo)) == 160, "uv_any_req.getaddrinfo has unexpected size % instead of 160", size_of(type_of(uv_any_req.getaddrinfo)));
        assert(((cast(*void)(*instance.getnameinfo)) - cast(*void)(*instance)) == 0, "uv_any_req.getnameinfo has unexpected offset % instead of 0", ((cast(*void)(*instance.getnameinfo)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.getnameinfo)) == 1320, "uv_any_req.getnameinfo has unexpected size % instead of 1320", size_of(type_of(uv_any_req.getnameinfo)));
        assert(((cast(*void)(*instance.random)) - cast(*void)(*instance)) == 0, "uv_any_req.random has unexpected offset % instead of 0", ((cast(*void)(*instance.random)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_any_req.random)) == 144, "uv_any_req.random has unexpected size % instead of 144", size_of(type_of(uv_any_req.random)));
        assert(size_of(uv_any_req) == 1320, "uv_any_req has size % instead of 1320", size_of(uv_any_req));
    }

    {
        instance: uv_loop_s;
        assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 0, "uv_loop_s.data has unexpected offset % instead of 0", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.data)) == 8, "uv_loop_s.data has unexpected size % instead of 8", size_of(type_of(uv_loop_s.data)));
        assert(((cast(*void)(*instance.active_handles)) - cast(*void)(*instance)) == 8, "uv_loop_s.active_handles has unexpected offset % instead of 8", ((cast(*void)(*instance.active_handles)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.active_handles)) == 4, "uv_loop_s.active_handles has unexpected size % instead of 4", size_of(type_of(uv_loop_s.active_handles)));
        assert(((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)) == 16, "uv_loop_s.handle_queue has unexpected offset % instead of 16", ((cast(*void)(*instance.handle_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.handle_queue)) == 16, "uv_loop_s.handle_queue has unexpected size % instead of 16", size_of(type_of(uv_loop_s.handle_queue)));
        assert(((cast(*void)(*instance.active_reqs)) - cast(*void)(*instance)) == 32, "uv_loop_s.active_reqs has unexpected offset % instead of 32", ((cast(*void)(*instance.active_reqs)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.active_reqs)) == 8, "uv_loop_s.active_reqs has unexpected size % instead of 8", size_of(type_of(uv_loop_s.active_reqs)));
        assert(((cast(*void)(*instance.internal_fields)) - cast(*void)(*instance)) == 40, "uv_loop_s.internal_fields has unexpected offset % instead of 40", ((cast(*void)(*instance.internal_fields)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.internal_fields)) == 8, "uv_loop_s.internal_fields has unexpected size % instead of 8", size_of(type_of(uv_loop_s.internal_fields)));
        assert(((cast(*void)(*instance.stop_flag)) - cast(*void)(*instance)) == 48, "uv_loop_s.stop_flag has unexpected offset % instead of 48", ((cast(*void)(*instance.stop_flag)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.stop_flag)) == 4, "uv_loop_s.stop_flag has unexpected size % instead of 4", size_of(type_of(uv_loop_s.stop_flag)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 56, "uv_loop_s.flags has unexpected offset % instead of 56", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.flags)) == 8, "uv_loop_s.flags has unexpected size % instead of 8", size_of(type_of(uv_loop_s.flags)));
        assert(((cast(*void)(*instance.backend_fd)) - cast(*void)(*instance)) == 64, "uv_loop_s.backend_fd has unexpected offset % instead of 64", ((cast(*void)(*instance.backend_fd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.backend_fd)) == 4, "uv_loop_s.backend_fd has unexpected size % instead of 4", size_of(type_of(uv_loop_s.backend_fd)));
        assert(((cast(*void)(*instance.pending_queue)) - cast(*void)(*instance)) == 72, "uv_loop_s.pending_queue has unexpected offset % instead of 72", ((cast(*void)(*instance.pending_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.pending_queue)) == 16, "uv_loop_s.pending_queue has unexpected size % instead of 16", size_of(type_of(uv_loop_s.pending_queue)));
        assert(((cast(*void)(*instance.watcher_queue)) - cast(*void)(*instance)) == 88, "uv_loop_s.watcher_queue has unexpected offset % instead of 88", ((cast(*void)(*instance.watcher_queue)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.watcher_queue)) == 16, "uv_loop_s.watcher_queue has unexpected size % instead of 16", size_of(type_of(uv_loop_s.watcher_queue)));
        assert(((cast(*void)(*instance.watchers)) - cast(*void)(*instance)) == 104, "uv_loop_s.watchers has unexpected offset % instead of 104", ((cast(*void)(*instance.watchers)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.watchers)) == 8, "uv_loop_s.watchers has unexpected size % instead of 8", size_of(type_of(uv_loop_s.watchers)));
        assert(((cast(*void)(*instance.nwatchers)) - cast(*void)(*instance)) == 112, "uv_loop_s.nwatchers has unexpected offset % instead of 112", ((cast(*void)(*instance.nwatchers)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.nwatchers)) == 4, "uv_loop_s.nwatchers has unexpected size % instead of 4", size_of(type_of(uv_loop_s.nwatchers)));
        assert(((cast(*void)(*instance.nfds)) - cast(*void)(*instance)) == 116, "uv_loop_s.nfds has unexpected offset % instead of 116", ((cast(*void)(*instance.nfds)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.nfds)) == 4, "uv_loop_s.nfds has unexpected size % instead of 4", size_of(type_of(uv_loop_s.nfds)));
        assert(((cast(*void)(*instance.wq)) - cast(*void)(*instance)) == 120, "uv_loop_s.wq has unexpected offset % instead of 120", ((cast(*void)(*instance.wq)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.wq)) == 16, "uv_loop_s.wq has unexpected size % instead of 16", size_of(type_of(uv_loop_s.wq)));
        assert(((cast(*void)(*instance.wq_mutex)) - cast(*void)(*instance)) == 136, "uv_loop_s.wq_mutex has unexpected offset % instead of 136", ((cast(*void)(*instance.wq_mutex)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.wq_mutex)) == 40, "uv_loop_s.wq_mutex has unexpected size % instead of 40", size_of(type_of(uv_loop_s.wq_mutex)));
        assert(((cast(*void)(*instance.wq_async)) - cast(*void)(*instance)) == 176, "uv_loop_s.wq_async has unexpected offset % instead of 176", ((cast(*void)(*instance.wq_async)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.wq_async)) == 128, "uv_loop_s.wq_async has unexpected size % instead of 128", size_of(type_of(uv_loop_s.wq_async)));
        assert(((cast(*void)(*instance.cloexec_lock)) - cast(*void)(*instance)) == 304, "uv_loop_s.cloexec_lock has unexpected offset % instead of 304", ((cast(*void)(*instance.cloexec_lock)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.cloexec_lock)) == 56, "uv_loop_s.cloexec_lock has unexpected size % instead of 56", size_of(type_of(uv_loop_s.cloexec_lock)));
        assert(((cast(*void)(*instance.closing_handles)) - cast(*void)(*instance)) == 360, "uv_loop_s.closing_handles has unexpected offset % instead of 360", ((cast(*void)(*instance.closing_handles)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.closing_handles)) == 8, "uv_loop_s.closing_handles has unexpected size % instead of 8", size_of(type_of(uv_loop_s.closing_handles)));
        assert(((cast(*void)(*instance.process_handles)) - cast(*void)(*instance)) == 368, "uv_loop_s.process_handles has unexpected offset % instead of 368", ((cast(*void)(*instance.process_handles)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.process_handles)) == 16, "uv_loop_s.process_handles has unexpected size % instead of 16", size_of(type_of(uv_loop_s.process_handles)));
        assert(((cast(*void)(*instance.prepare_handles)) - cast(*void)(*instance)) == 384, "uv_loop_s.prepare_handles has unexpected offset % instead of 384", ((cast(*void)(*instance.prepare_handles)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.prepare_handles)) == 16, "uv_loop_s.prepare_handles has unexpected size % instead of 16", size_of(type_of(uv_loop_s.prepare_handles)));
        assert(((cast(*void)(*instance.check_handles)) - cast(*void)(*instance)) == 400, "uv_loop_s.check_handles has unexpected offset % instead of 400", ((cast(*void)(*instance.check_handles)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.check_handles)) == 16, "uv_loop_s.check_handles has unexpected size % instead of 16", size_of(type_of(uv_loop_s.check_handles)));
        assert(((cast(*void)(*instance.idle_handles)) - cast(*void)(*instance)) == 416, "uv_loop_s.idle_handles has unexpected offset % instead of 416", ((cast(*void)(*instance.idle_handles)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.idle_handles)) == 16, "uv_loop_s.idle_handles has unexpected size % instead of 16", size_of(type_of(uv_loop_s.idle_handles)));
        assert(((cast(*void)(*instance.async_handles)) - cast(*void)(*instance)) == 432, "uv_loop_s.async_handles has unexpected offset % instead of 432", ((cast(*void)(*instance.async_handles)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.async_handles)) == 16, "uv_loop_s.async_handles has unexpected size % instead of 16", size_of(type_of(uv_loop_s.async_handles)));
        assert(((cast(*void)(*instance.async_unused)) - cast(*void)(*instance)) == 448, "uv_loop_s.async_unused has unexpected offset % instead of 448", ((cast(*void)(*instance.async_unused)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.async_unused)) == 8, "uv_loop_s.async_unused has unexpected size % instead of 8", size_of(type_of(uv_loop_s.async_unused)));
        assert(((cast(*void)(*instance.async_io_watcher)) - cast(*void)(*instance)) == 456, "uv_loop_s.async_io_watcher has unexpected offset % instead of 456", ((cast(*void)(*instance.async_io_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.async_io_watcher)) == 56, "uv_loop_s.async_io_watcher has unexpected size % instead of 56", size_of(type_of(uv_loop_s.async_io_watcher)));
        assert(((cast(*void)(*instance.async_wfd)) - cast(*void)(*instance)) == 512, "uv_loop_s.async_wfd has unexpected offset % instead of 512", ((cast(*void)(*instance.async_wfd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.async_wfd)) == 4, "uv_loop_s.async_wfd has unexpected size % instead of 4", size_of(type_of(uv_loop_s.async_wfd)));
        assert(((cast(*void)(*instance.timer_heap)) - cast(*void)(*instance)) == 520, "uv_loop_s.timer_heap has unexpected offset % instead of 520", ((cast(*void)(*instance.timer_heap)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.timer_heap)) == 16, "uv_loop_s.timer_heap has unexpected size % instead of 16", size_of(type_of(uv_loop_s.timer_heap)));
        assert(((cast(*void)(*instance.timer_counter)) - cast(*void)(*instance)) == 536, "uv_loop_s.timer_counter has unexpected offset % instead of 536", ((cast(*void)(*instance.timer_counter)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.timer_counter)) == 8, "uv_loop_s.timer_counter has unexpected size % instead of 8", size_of(type_of(uv_loop_s.timer_counter)));
        assert(((cast(*void)(*instance.time)) - cast(*void)(*instance)) == 544, "uv_loop_s.time has unexpected offset % instead of 544", ((cast(*void)(*instance.time)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.time)) == 8, "uv_loop_s.time has unexpected size % instead of 8", size_of(type_of(uv_loop_s.time)));
        assert(((cast(*void)(*instance.signal_pipefd)) - cast(*void)(*instance)) == 552, "uv_loop_s.signal_pipefd has unexpected offset % instead of 552", ((cast(*void)(*instance.signal_pipefd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.signal_pipefd)) == 8, "uv_loop_s.signal_pipefd has unexpected size % instead of 8", size_of(type_of(uv_loop_s.signal_pipefd)));
        assert(((cast(*void)(*instance.signal_io_watcher)) - cast(*void)(*instance)) == 560, "uv_loop_s.signal_io_watcher has unexpected offset % instead of 560", ((cast(*void)(*instance.signal_io_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.signal_io_watcher)) == 56, "uv_loop_s.signal_io_watcher has unexpected size % instead of 56", size_of(type_of(uv_loop_s.signal_io_watcher)));
        assert(((cast(*void)(*instance.child_watcher)) - cast(*void)(*instance)) == 616, "uv_loop_s.child_watcher has unexpected offset % instead of 616", ((cast(*void)(*instance.child_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.child_watcher)) == 152, "uv_loop_s.child_watcher has unexpected size % instead of 152", size_of(type_of(uv_loop_s.child_watcher)));
        assert(((cast(*void)(*instance.emfile_fd)) - cast(*void)(*instance)) == 768, "uv_loop_s.emfile_fd has unexpected offset % instead of 768", ((cast(*void)(*instance.emfile_fd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.emfile_fd)) == 4, "uv_loop_s.emfile_fd has unexpected size % instead of 4", size_of(type_of(uv_loop_s.emfile_fd)));
        assert(((cast(*void)(*instance.inotify_read_watcher)) - cast(*void)(*instance)) == 776, "uv_loop_s.inotify_read_watcher has unexpected offset % instead of 776", ((cast(*void)(*instance.inotify_read_watcher)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.inotify_read_watcher)) == 56, "uv_loop_s.inotify_read_watcher has unexpected size % instead of 56", size_of(type_of(uv_loop_s.inotify_read_watcher)));
        assert(((cast(*void)(*instance.inotify_watchers)) - cast(*void)(*instance)) == 832, "uv_loop_s.inotify_watchers has unexpected offset % instead of 832", ((cast(*void)(*instance.inotify_watchers)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.inotify_watchers)) == 8, "uv_loop_s.inotify_watchers has unexpected size % instead of 8", size_of(type_of(uv_loop_s.inotify_watchers)));
        assert(((cast(*void)(*instance.inotify_fd)) - cast(*void)(*instance)) == 840, "uv_loop_s.inotify_fd has unexpected offset % instead of 840", ((cast(*void)(*instance.inotify_fd)) - cast(*void)(*instance)));
        assert(size_of(type_of(uv_loop_s.inotify_fd)) == 4, "uv_loop_s.inotify_fd has unexpected size % instead of 4", size_of(type_of(uv_loop_s.inotify_fd)));
        assert(size_of(uv_loop_s) == 848, "uv_loop_s has size % instead of 848", size_of(uv_loop_s));
    }
}

