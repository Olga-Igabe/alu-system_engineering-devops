\# Load balancer



Bash scripts that configure Nginx web servers and an HAProxy load balancer.



\- `0-custom\_http\_response\_header` - configures Nginx with an X-Served-By header containing the server's hostname

\- `1-install\_load\_balancer` - installs HAProxy on lb-01 and distributes traffic to web-01 and web-02 using roundrobin



