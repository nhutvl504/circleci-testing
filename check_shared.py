import sysconfig
print('is Enable Shared?')
sysconfig.get_config_vars('Py_ENABLE_SHARED')
print('all python env vars')
sysconfig.get_config_vars()
