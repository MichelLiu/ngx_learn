NGX_ROOT = /home/c-proj/nginx-1.8.1

TARGETS = ngx_pool_t_test
TARGETS_C_FILE = $(TARGETS).c


CC =	cc
CFLAGS = -I/usr/local/include   
CPP =	
LINK =	$(CC)


ALL_INCS = -I . \
  -I $(NGX_ROOT)/src/core \
	-I $(NGX_ROOT)/src/event \
	-I $(NGX_ROOT)/src/event/modules \
	-I $(NGX_ROOT)/src/os/unix \
	-I $(NGX_ROOT)/objs \
	-I $(NGX_ROOT)/src/http \
	-I $(NGX_ROOT)/src/http/modules \
	-I $(NGX_ROOT)/src/mail


CORE_DEPS = $(NGX_ROOT)/src/core/nginx.h \
	$(NGX_ROOT)/src/core/ngx_config.h \
	$(NGX_ROOT)/src/core/ngx_core.h \
	$(NGX_ROOT)/src/core/ngx_log.h \
	$(NGX_ROOT)/src/core/ngx_palloc.h \
	$(NGX_ROOT)/src/core/ngx_array.h \
	$(NGX_ROOT)/src/core/ngx_list.h \
	$(NGX_ROOT)/src/core/ngx_hash.h \
	$(NGX_ROOT)/src/core/ngx_buf.h \
	$(NGX_ROOT)/src/core/ngx_queue.h \
	$(NGX_ROOT)/src/core/ngx_string.h \
	$(NGX_ROOT)/src/core/ngx_parse.h \
	$(NGX_ROOT)/src/core/ngx_inet.h \
	$(NGX_ROOT)/src/core/ngx_file.h \
	$(NGX_ROOT)/src/core/ngx_crc.h \
	$(NGX_ROOT)/src/core/ngx_crc32.h \
	$(NGX_ROOT)/src/core/ngx_murmurhash.h \
	$(NGX_ROOT)/src/core/ngx_md5.h \
	$(NGX_ROOT)/src/core/ngx_sha1.h \
	$(NGX_ROOT)/src/core/ngx_rbtree.h \
	$(NGX_ROOT)/src/core/ngx_radix_tree.h \
	$(NGX_ROOT)/src/core/ngx_slab.h \
	$(NGX_ROOT)/src/core/ngx_times.h \
	$(NGX_ROOT)/src/core/ngx_shmtx.h \
	$(NGX_ROOT)/src/core/ngx_connection.h \
	$(NGX_ROOT)/src/core/ngx_cycle.h \
	$(NGX_ROOT)/src/core/ngx_conf_file.h \
	$(NGX_ROOT)/src/core/ngx_resolver.h \
	$(NGX_ROOT)/src/core/ngx_open_file_cache.h \
	$(NGX_ROOT)/src/core/ngx_crypt.h \
	$(NGX_ROOT)/src/core/ngx_proxy_protocol.h \
	$(NGX_ROOT)/src/core/ngx_syslog.h \
	$(NGX_ROOT)/src/event/ngx_event.h \
	$(NGX_ROOT)/src/event/ngx_event_timer.h \
	$(NGX_ROOT)/src/event/ngx_event_posted.h \
	$(NGX_ROOT)/src/event/ngx_event_connect.h \
	$(NGX_ROOT)/src/event/ngx_event_pipe.h \
	$(NGX_ROOT)/src/os/unix/ngx_time.h \
	$(NGX_ROOT)/src/os/unix/ngx_errno.h \
	$(NGX_ROOT)/src/os/unix/ngx_alloc.h \
	$(NGX_ROOT)/src/os/unix/ngx_files.h \
	$(NGX_ROOT)/src/os/unix/ngx_channel.h \
	$(NGX_ROOT)/src/os/unix/ngx_shmem.h \
	$(NGX_ROOT)/src/os/unix/ngx_process.h \
	$(NGX_ROOT)/src/os/unix/ngx_setaffinity.h \
	$(NGX_ROOT)/src/os/unix/ngx_setproctitle.h \
	$(NGX_ROOT)/src/os/unix/ngx_atomic.h \
	$(NGX_ROOT)/src/os/unix/ngx_gcc_atomic_x86.h \
	$(NGX_ROOT)/src/os/unix/ngx_thread.h \
	$(NGX_ROOT)/src/os/unix/ngx_socket.h \
	$(NGX_ROOT)/src/os/unix/ngx_os.h \
	$(NGX_ROOT)/src/os/unix/ngx_user.h \
	$(NGX_ROOT)/src/os/unix/ngx_process_cycle.h \
	$(NGX_ROOT)/src/os/unix/ngx_linux_config.h \
	$(NGX_ROOT)/src/os/unix/ngx_linux.h \
	$(NGX_ROOT)/src/core/ngx_regex.h \
	$(NGX_ROOT)/objs/ngx_auto_config.h


CORE_INCS = -I $(NGX_ROOT)/src/core \
	-I $(NGX_ROOT)/src/event \
	-I $(NGX_ROOT)/src/event/modules \
	-I $(NGX_ROOT)/src/os/unix \
	-I $(NGX_ROOT)/objs


HTTP_DEPS = $(NGX_ROOT)/src/http/ngx_http.h \
	$(NGX_ROOT)/src/http/ngx_http_request.h \
	$(NGX_ROOT)/src/http/ngx_http_config.h \
	$(NGX_ROOT)/src/http/ngx_http_core_module.h \
	$(NGX_ROOT)/src/http/ngx_http_cache.h \
	$(NGX_ROOT)/src/http/ngx_http_variables.h \
	$(NGX_ROOT)/src/http/ngx_http_script.h \
	$(NGX_ROOT)/src/http/ngx_http_upstream.h \
	$(NGX_ROOT)/src/http/ngx_http_upstream_round_robin.h \
	$(NGX_ROOT)/src/http/modules/ngx_http_ssi_filter_module.h


HTTP_INCS = -I $(NGX_ROOT)/src/http \
	-I $(NGX_ROOT)/src/http/modules


$(TARGETS):	$(TARGETS).o \
	$(NGX_ROOT)/objs/src/core/ngx_log.o \
	$(NGX_ROOT)/objs/src/core/ngx_palloc.o \
	$(NGX_ROOT)/objs/src/core/ngx_array.o \
	$(NGX_ROOT)/objs/src/core/ngx_list.o \
	$(NGX_ROOT)/objs/src/core/ngx_hash.o \
	$(NGX_ROOT)/objs/src/core/ngx_buf.o \
	$(NGX_ROOT)/objs/src/core/ngx_queue.o \
	$(NGX_ROOT)/objs/src/core/ngx_output_chain.o \
	$(NGX_ROOT)/objs/src/core/ngx_string.o \
	$(NGX_ROOT)/objs/src/core/ngx_parse.o \
	$(NGX_ROOT)/objs/src/core/ngx_inet.o \
	$(NGX_ROOT)/objs/src/core/ngx_file.o \
	$(NGX_ROOT)/objs/src/core/ngx_crc32.o \
	$(NGX_ROOT)/objs/src/core/ngx_murmurhash.o \
	$(NGX_ROOT)/objs/src/core/ngx_md5.o \
	$(NGX_ROOT)/objs/src/core/ngx_rbtree.o \
	$(NGX_ROOT)/objs/src/core/ngx_radix_tree.o \
	$(NGX_ROOT)/objs/src/core/ngx_slab.o \
	$(NGX_ROOT)/objs/src/core/ngx_times.o \
	$(NGX_ROOT)/objs/src/core/ngx_shmtx.o \
	$(NGX_ROOT)/objs/src/core/ngx_connection.o \
	$(NGX_ROOT)/objs/src/core/ngx_cycle.o \
	$(NGX_ROOT)/objs/src/core/ngx_spinlock.o \
	$(NGX_ROOT)/objs/src/core/ngx_cpuinfo.o \
	$(NGX_ROOT)/objs/src/core/ngx_conf_file.o \
	$(NGX_ROOT)/objs/src/core/ngx_resolver.o \
	$(NGX_ROOT)/objs/src/core/ngx_open_file_cache.o \
	$(NGX_ROOT)/objs/src/core/ngx_crypt.o \
	$(NGX_ROOT)/objs/src/core/ngx_proxy_protocol.o \
	$(NGX_ROOT)/objs/src/core/ngx_syslog.o \
	$(NGX_ROOT)/objs/src/event/ngx_event.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_timer.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_posted.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_accept.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_connect.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_pipe.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_time.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_errno.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_alloc.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_files.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_socket.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_recv.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_readv_chain.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_udp_recv.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_send.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_writev_chain.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_channel.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_shmem.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_process.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_daemon.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_setaffinity.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_setproctitle.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_posix_init.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_user.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_process_cycle.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_linux_init.o \
	$(NGX_ROOT)/objs/src/event/modules/ngx_epoll_module.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_linux_sendfile_chain.o \
	$(NGX_ROOT)/objs/src/core/ngx_regex.o \
	$(NGX_ROOT)/objs/src/http/ngx_http.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_core_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_special_response.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_request.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_parse.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_header_filter_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_write_filter_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_copy_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_log_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_request_body.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_variables.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_script.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_upstream.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_upstream_round_robin.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_parse_time.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_static_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_index_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_chunked_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_range_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_headers_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_not_modified_filter_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_file_cache.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_gzip_filter_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_postpone_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_ssi_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_charset_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_userid_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_autoindex_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_auth_basic_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_access_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_limit_conn_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_limit_req_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_geo_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_map_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_split_clients_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_referer_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_rewrite_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_proxy_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_fastcgi_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_uwsgi_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_scgi_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_memcached_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_empty_gif_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_browser_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_upstream_hash_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_upstream_ip_hash_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_upstream_least_conn_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_upstream_keepalive_module.o \
	$(NGX_ROOT)/objs/ngx_modules.o

	$(LINK) -o $(TARGETS) \
	$(TARGETS).o \
	$(NGX_ROOT)/objs/src/core/ngx_log.o \
	$(NGX_ROOT)/objs/src/core/ngx_palloc.o \
	$(NGX_ROOT)/objs/src/core/ngx_array.o \
	$(NGX_ROOT)/objs/src/core/ngx_list.o \
	$(NGX_ROOT)/objs/src/core/ngx_hash.o \
	$(NGX_ROOT)/objs/src/core/ngx_buf.o \
	$(NGX_ROOT)/objs/src/core/ngx_queue.o \
	$(NGX_ROOT)/objs/src/core/ngx_output_chain.o \
	$(NGX_ROOT)/objs/src/core/ngx_string.o \
	$(NGX_ROOT)/objs/src/core/ngx_parse.o \
	$(NGX_ROOT)/objs/src/core/ngx_inet.o \
	$(NGX_ROOT)/objs/src/core/ngx_file.o \
	$(NGX_ROOT)/objs/src/core/ngx_crc32.o \
	$(NGX_ROOT)/objs/src/core/ngx_murmurhash.o \
	$(NGX_ROOT)/objs/src/core/ngx_md5.o \
	$(NGX_ROOT)/objs/src/core/ngx_rbtree.o \
	$(NGX_ROOT)/objs/src/core/ngx_radix_tree.o \
	$(NGX_ROOT)/objs/src/core/ngx_slab.o \
	$(NGX_ROOT)/objs/src/core/ngx_times.o \
	$(NGX_ROOT)/objs/src/core/ngx_shmtx.o \
	$(NGX_ROOT)/objs/src/core/ngx_connection.o \
	$(NGX_ROOT)/objs/src/core/ngx_cycle.o \
	$(NGX_ROOT)/objs/src/core/ngx_spinlock.o \
	$(NGX_ROOT)/objs/src/core/ngx_cpuinfo.o \
	$(NGX_ROOT)/objs/src/core/ngx_conf_file.o \
	$(NGX_ROOT)/objs/src/core/ngx_resolver.o \
	$(NGX_ROOT)/objs/src/core/ngx_open_file_cache.o \
	$(NGX_ROOT)/objs/src/core/ngx_crypt.o \
	$(NGX_ROOT)/objs/src/core/ngx_proxy_protocol.o \
	$(NGX_ROOT)/objs/src/core/ngx_syslog.o \
	$(NGX_ROOT)/objs/src/event/ngx_event.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_timer.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_posted.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_accept.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_connect.o \
	$(NGX_ROOT)/objs/src/event/ngx_event_pipe.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_time.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_errno.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_alloc.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_files.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_socket.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_recv.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_readv_chain.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_udp_recv.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_send.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_writev_chain.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_channel.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_shmem.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_process.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_daemon.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_setaffinity.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_setproctitle.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_posix_init.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_user.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_process_cycle.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_linux_init.o \
	$(NGX_ROOT)/objs/src/event/modules/ngx_epoll_module.o \
	$(NGX_ROOT)/objs/src/os/unix/ngx_linux_sendfile_chain.o \
	$(NGX_ROOT)/objs/src/core/ngx_regex.o \
	$(NGX_ROOT)/objs/src/http/ngx_http.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_core_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_special_response.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_request.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_parse.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_header_filter_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_write_filter_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_copy_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_log_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_request_body.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_variables.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_script.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_upstream.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_upstream_round_robin.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_parse_time.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_static_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_index_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_chunked_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_range_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_headers_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_not_modified_filter_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_file_cache.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_gzip_filter_module.o \
	$(NGX_ROOT)/objs/src/http/ngx_http_postpone_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_ssi_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_charset_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_userid_filter_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_autoindex_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_auth_basic_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_access_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_limit_conn_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_limit_req_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_geo_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_map_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_split_clients_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_referer_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_rewrite_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_proxy_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_fastcgi_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_uwsgi_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_scgi_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_memcached_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_empty_gif_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_browser_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_upstream_hash_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_upstream_ip_hash_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_upstream_least_conn_module.o \
	$(NGX_ROOT)/objs/src/http/modules/ngx_http_upstream_keepalive_module.o \
	$(NGX_ROOT)/objs/ngx_modules.o \
	-lpthread -lcrypt -lpcre -lcrypto -lcrypto -lz


$(TARGETS).o:	$(CORE_DEPS) \
	$(TARGETS).c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o $(TARGETS).o \
		$(TARGETS).c

clean:
	rm -rf *.o $(TARGETS)
