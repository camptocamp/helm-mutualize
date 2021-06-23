import c2cwsgiutils.setup_process  # noqa  # pylint: disable=unused-import
import logging
import os
import requests

LOG = logging.getLogger("test-c2c")
BASE_URL = os.environ["BASE_URL"]


LOG.info("Checking the health-check")
r = requests.get(f"{BASE_URL}/c2c/health_check?max_level=10")
r.raise_for_status()

LOG.info("All good")
