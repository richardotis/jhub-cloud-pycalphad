from traitlets.config import get_config
import sys


c = get_config()
c.JupyterHub.services.append(
    {
        'name': 'share-link',
        'admin': True,
        'url': 'http://127.0.0.1:21211',
        'command': [sys.executable, '-m', 'jupyterhub_share_link.run',
                    '--log-file-prefix=/var/log/jupyterhub_share_link.log'],
    }
)
c.JupyterHub.admin_access = True  # Service needs to access user servers.
c.JupyterHub.allow_named_servers = True
