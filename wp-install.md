## Install wordpress
### Step 1.Create wp instance
1. Create ec2 instace to install wp using bitnami ami. we used [this ami](https://aws.amazon.com/marketplace/pp/prodview-bzstv3wbn5wkq) - this is apache2
2. You can now ssh to machine and get your credentials by `sudo cat /home/bitnami/bitnami_credentials`
3. Login using crendials at http://ip/wp-admin
4. Follow some inital setup steps here
5. Install SSL certificate by this command `sudo /opt/bitnami/bncert-tool` ( [Details here](https://docs.bitnami.com/aws/how-to/generate-install-lets-encrypt-ssl/) )
(redirect http to https)

### Step 2 Add cloudfront rules
1. Go to cloudfront distribution
2. Add origin -> blog.hcode.tech, Https only
3. Add behavior -> blog/, point to above origin and redirect http to https and choose Cache policy as CachingDisabled
4. Add behavior -> blog/*, point to above origin and redirect http to https (Make sure blog/ has higher precedence then blog/*)

### Step 3 Update wp-config and rewrite rules
1. `sudo vim /opt/bitnami/wordpress/wp-config.php` and modify below lines
```
  define( 'WP_SITEURL', 'https://blog.hcode.tech/blog' );
  define( 'WP_HOME', 'https://www.hcode.tech/blog' );
```

2. Modify rewrite rules 
2a. Apache2: `sudo vim /opt/bitnami/apache2/conf/vhosts/wordpress-https-vhost.conf`
Add below line after the `RewriteRule ^bitnami/wordpress(/.*) $1 [L]` line
```
RewriteRule ^blog(/.*) $1 [L]
```


or 2b. Nginx: `sudo vim /opt/bitnami/nginx/conf/server_blocks/wordpress-https-server-block.conf`
Add below line
```
rewrite ^/blog(/.*) $1 last;
```

3. Finally `sudo /opt/bitnami/ctlscript.sh restart`

### Get access to db
to access phpmy-admin, create tunnel
```
ssh -N -L 8888:127.0.0.1:80 hcode-blog
```
where hcode-blog is the name of ssh connection

then open:
http://127.0.0.1:8888/phpmyadmin/
user: root
password is same as application passowrd, accessible at `sudo cat /home/bitnami/bitnami_credentials`


