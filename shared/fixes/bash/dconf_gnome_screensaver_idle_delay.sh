# platform = Red Hat Enterprise Linux 7
. /usr/share/scap-security-guide/remediation_functions
populate inactivity_timeout_value

dconf_settings 'org/gnome/desktop/session' 'idle-delay' "uint32 ${inactivity_timeout_value}" 'local.d' '00-security-settings'
dconf_lock 'org/gnome/desktop/session' 'idle-delay' 'local.d' '00-security-settings-lock'
