interface Port-Channel1
    no switchport
    no switchport
    description blah
    mtu 9000
    exit
interface Port-Channel1.1
    exit
interface GigabitEthernet1
    description This is a description
    exit
interface GigabitEthernet2
    no switchport
    ip address 192.168.0.1 255.255.255.0
    no switchport
    no switchport
    shutdown
    description so much oc
    mtu 1500
    exit
interface GigabitEthernet2.1
    encapsulation dot1q 1
    ip address 172.20.1.1 255.255.255.0 secondary
    ip address 192.168.1.1 255.255.255.0
    description another subiface
    exit
interface GigabitEthernet2.2
    encapsulation dot1q 2
    ip address 192.168.2.1 255.255.255.0
    description asdasdasd
    exit
interface Loopback1
    description a loopback
    exit


