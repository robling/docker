#Docker
Personal maintained LEMP server based on debian

***
####You need to volume a dictionary with the forrowing tree

<pre><code>
/data
    /config
        /nginx
            /conf.d     #some extra config files
            /certs
            /vhost.d    #some vitrul host config file
    /log
    /www                #web root path
</code></pre>

A sample has been listed in the [git repository](https://github.com/robling/docker)