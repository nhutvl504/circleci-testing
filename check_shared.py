import sysconfig
import pprint
print('is Enable Shared?')
pprint.pprint(sysconfig.get_config_vars('Py_ENABLE_SHARED'))
print('all python env vars')
pprint.pprint(sysconfig.get_config_vars())
