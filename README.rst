=============
Passkeys demo
=============

A Docker compose solution made up of 3 services:
- Caddy web server and reverse proxy
- PocketID: OIDC provider that uses passkeys only
- Nginx web server shipping with a single demo page

The aim of this repo is to provide a simple platform to protect web-based services with passkeys, including those lacking OIDC support or lacking a native authentication scheme.

See our `blog post: `Protecting internal services using passkeys <https://www.darknet.com/en/protecting-internal-services-using-passkeys>`_ for details.


Domain name
-----------

The following files need to be edited with whatever domain name is used in your personal setup:
- .pocketid.env
- .caddy.env

Additionally, the domain name needs to changed in the virtual hosts files present in the sites-enabled directory.

Finally, you will also need to adapt the line in Caddyfile that reads like this:

.. code-block:: 

    trust login redirect uri domain exact nginxdemo.test.com path prefix /

Put your domain name after nginxdemo.


Start Docker solution
---------------------

.. code-block:: bash

    docker compose
    # or run in detached mode
    docker compose -d
