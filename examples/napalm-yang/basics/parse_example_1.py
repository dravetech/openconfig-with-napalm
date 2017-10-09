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
        r = device.yang.get_openconfig_interfaces()
        pretty_print(r)

    junos_driver = get_network_driver("junos")
    with junos_driver(**configuration.junos) as device:
        r = device.yang.get_openconfig_interfaces()
        pretty_print(r)


if __name__ == "__main__":
    main()
