#!/usr/bin/env python

from napalm_base import get_network_driver

import napalm_yang

import configuration

import json


def pretty_print(data):
    print(json.dumps(data, indent=4))


def main():
    ios_driver = get_network_driver("ios")
    with ios_driver(**configuration.ios) as device:
        device.yang.get_openconfig_interfaces(candidate=True)

        iface = device.yang.candidate.interfaces.\
          interface['GigabitEthernet2']

        addr = iface.routed_vlan.ipv4.addresses.address.\
                add('192.168.2.1')
        addr.config.ip = '192.168.2.1'
        addr.config.prefix_length = 24

        iface.routed_vlan.ipv4.addresses.address.\
          delete('192.168.1.1')

        pretty_print(device.yang.diff())

        merge_config = device.yang.translate(merge=True)
        print(merge_config)

        device.load_merge_candidate(config=merge_config)
        device.commit_config()

        device.yang.get_openconfig_interfaces()
        pretty_print(device.yang.diff())


if __name__ == "__main__":
    main()


