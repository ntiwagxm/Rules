allow-lan: true
bind-address: '*'
mode: rule
log-level: info
ipv6: true
find-process-mode: strict
tcp-concurrent: true
keep-alive-interval: 30
unified-delay: true
dns:
  enable: true
  listen: 0.0.0.0:1053
  ipv6: true
  use-hosts: true
  use-system-hosts: false
  enhanced-mode: fake-ip
  fake-ip-range: 198.18.0.1/16
  fake-ip-range6: 'fdfe:dcba:9876::1/64'
  fake-ip-filter-mode: blacklist
  fake-ip-filter:
    - '*.example'
    - '*.home.arpa'
    - '*.invalid'
    - '*.lan'
    - '*.local'
    - '*.localdomain'
    - '*.localhost'
    - '*.test'
    - '*.router.asus.com'
    - '*.linksys.com'
    - '*.linksyssmartwifi.com'
    - '*.ipv6.microsoft.com'
    - '*.msftconnecttest.com'
    - '*.msftncsi.com'
    - 'msftconnecttest.com'
    - 'msftncsi.com'
    - 'ntp.*.com'
    - 'ntp1.*.com'
    - 'ntp2.*.com'
    - 'ntp3.*.com'
    - 'ntp4.*.com'
    - 'ntp5.*.com'
    - 'ntp6.*.com'
    - 'ntp7.*.com'
    - 'time.*.apple.com'
    - 'time.*.com'
    - 'time.*.gov'
    - 'time1.*.com'
    - 'time2.*.com'
    - 'time3.*.com'
    - 'time4.*.com'
    - 'time5.*.com'
    - 'time6.*.com'
    - 'time7.*.com'
    - 'time.*.edu.cn'
    - '*.time.edu.cn'
    - '*.ntp.org.cn'
    - '+.pool.ntp.org'
  default-nameserver:
    - 223.5.5.5
    - 119.29.29.29
  nameserver:
    - https://dns.cloudflare.com/dns-query#RULES
    - https://dns.google/dns-query#RULES
  nameserver-policy:
    geosite:cn,private:
      - 'https://180.184.1.1/dns-query#DIRECT'
      - 'https://doh.pub/dns-query#DIRECT'
      - 'https://dns.alidns.com/dns-query#DIRECT'
  fallback:
    - 'https://1.1.1.1/dns-query'
    - 'https://8.8.8.8/dns-query'
  fallback-filter:
    geoip: true
    geoip-code: 'CN'
    ipcidr:
      - '240.0.0.0/4'
      - '0.0.0.0/32'
    domain:
      - '+.google.com'
      - '+.facebook.com'
      - '+.youtube.com'
  proxy-server-nameserver:
    - 119.29.29.29
    - 223.5.5.5
  direct-nameserver-follow-policy: true
  direct-nameserver:
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
