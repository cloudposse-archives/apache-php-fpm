changequote({{,}})dnl
define(APACHE_EVENT_START_SERVERS, {{2}})dnl
define(APACHE_EVENT_MIN_SPARE_THREADS, {{25}})dnl
define(APACHE_EVENT_MAX_SPARE_THREADS, {{75}})dnl
define(APACHE_EVENT_THREAD_LIMIT, {{64}})dnl
define(APACHE_EVENT_THREADS_PER_CHILD, {{25}})dnl
define(APACHE_EVENT_MAX_REQUEST_WORKERS, {{150}})dnl
define(APACHE_EVENT_MAX_CONNECTIONS_PER_CHILD, {{0}})dnl
# event MPM
# StartServers: initial number of server processes to start
# MinSpareThreads: minimum number of worker threads which are kept spare
# MaxSpareThreads: maximum number of worker threads which are kept spare
# ThreadsPerChild: constant number of worker threads in each server process
# MaxRequestWorkers: maximum number of worker threads
# MaxConnectionsPerChild: maximum number of requests a server process serves
<IfModule mpm_event_module>
  StartServers           APACHE_EVENT_START_SERVERS
  MinSpareThreads        APACHE_EVENT_MIN_SPARE_THREADS
  MaxSpareThreads        APACHE_EVENT_MAX_SPARE_THREADS
  ThreadLimit            APACHE_EVENT_THREAD_LIMIT
  ThreadsPerChild        APACHE_EVENT_THREADS_PER_CHILD
  MaxRequestWorkers      APACHE_EVENT_MAX_REQUEST_WORKERS
  MaxConnectionsPerChild APACHE_EVENT_MAX_CONNECTIONS_PER_CHILD
</IfModule>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
