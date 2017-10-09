#!/usr/bin/env python

from napalm_base import get_network_driver

import napalm_yang

import configuration

import json


def main():
    with open("translate_example_1.data.json", 'r') as f:
        data = json.loads(f.read())

    ios_driver = get_network_driver("ios")
    with ios_driver(**configuration.ios) as device:
        device.yang.candidate.load_dict(data)
        r = device.yang.translate()
        print(r)

    junos_driver = get_network_driver("junos")
    with junos_driver(**configuration.junos) as device:
        device.yang.candidate.load_dict(data)
        r = device.yang.translate()
        print(r)


if __name__ == "__main__":
    main()

