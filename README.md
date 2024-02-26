## main steps

### create a worker on cloudflare
1. get a domain,like *xxx.com*
2. add *xxx.com* to cloudflare
3. create workders on cloudflare **Workers & Pages**
4. hit the** Quick edit** button copy *work_sample.js* to it
5. modify the **userID at line 7 **of yours
6. add the **Custom Domains**,add a subdomain of yours,like *v2.xxx.com*
7. wait the process,and type the *v2.xxx.com/your_uuid*
8. copy the *vless line* to your passwall

### filter the ip 
1. get the node id, type  `cat /etc/config/passwall`
2. edit the *cf.sh*,replace *xxxx at line 23* of your node id 
3. get the **CloudflareSpeedTest **from [CloudflareSpeedTest](https://github.com/XIU2/CloudflareSpeedTest)
4. `bash cf.sh`