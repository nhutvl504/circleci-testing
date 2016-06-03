import sysconfig
print('is Enable Shared?')
print sysconfig.get_config_vars('Py_ENABLE_SHARED')
print('all python env vars')
print sysconfig.get_config_vars()
