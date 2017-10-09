.. rst-class:: agenda

Agenda
------

1. What is YANG?
2. What is OpenConfig?
3. **What is napalm-yang?**
    1. Basics
    2. Advanced features
    3. **Integration with ansible**

Setup
-----

.. rst-class:: smaller-text

.. literalinclude:: ../examples/napalm-yang/ansible/hosts

Parsing Configuration (playbook)
--------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_parse.yaml
   :caption: playbook_parse.yaml
   :language: yaml
   :linenos:

Parsing Configuration (junos)
-----------------------------

.. rst-class:: smaller-text

.. literalinclude:: ../examples/napalm-yang/ansible/results/parse_junos
   :caption: ansible-playbook --limit junos playbook_parse.yaml
   :linenos:

Parsing Configuration (ios)
---------------------------

.. rst-class:: smaller-text

.. literalinclude:: ../examples/napalm-yang/ansible/results/parse_ios
   :caption: ansible-playbook --limit ios playbook_parse.yaml
   :linenos:

Configuring Devices (data, junos)
---------------------------------

.. rst-class:: smaller-text

.. literalinclude:: ../examples/napalm-yang/ansible/host_vars/junos.yaml
   :caption: host_vars/junos.yaml
   :language: yaml
   :linenos:
   :lines: 4-

Configuring Devices (data, ios)
-------------------------------

.. rst-class:: smaller-text

.. literalinclude:: ../examples/napalm-yang/ansible/host_vars/ios.yaml
   :caption: host_vars/ios.yaml
   :language: yaml
   :linenos:
   :lines: 6-

Configuring Devices (playbook)
-------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:

Configuring Devices (junos, execution)
--------------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 9-19

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_junos.1
   :caption: ansible-playbook --limit junos ...
   :linenos:
   :lines: -2
   :emphasize-lines: -2

Configuring Devices (junos, config)
-----------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 20-22

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_junos.1
   :caption: ansible-playbook --limit junos ...
   :linenos:
   :lines: -28
   :emphasize-lines: 3-28

Configuring Devices (junos, yang diff)
--------------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 23-25

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_junos.1
   :caption: ansible-playbook --limit junos ...
   :linenos:
   :lines: 85-112
   :emphasize-lines: 3-

Configuring Devices (junos, native diff)
----------------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 26-28

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_junos.1
   :caption: ansible-playbook --limit junos ...
   :linenos:
   :lines: 127-154
   :emphasize-lines: 3-

Configuring Devices (junos, again)
----------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 9-28

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_junos.2
   :caption: ansible-playbook --limit junos ...
   :linenos:
   :lines: 1-4, 85-

Configuring Devices (ios, execution)
--------------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 9-19

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_ios.1
   :caption: ansible-playbook --limit ios ...
   :linenos:
   :lines: -2
   :emphasize-lines: -2

Configuring Devices (ios, config)
-----------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 20-22

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_ios.1
   :caption: ansible-playbook --limit ios ...
   :linenos:
   :lines: -28
   :emphasize-lines: 3-28

Configuring Devices (ios, yang diff)
--------------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 23-25

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_ios.1
   :caption: ansible-playbook --limit ios ...
   :linenos:
   :lines: 39-66
   :emphasize-lines: 3-

Configuring Devices (ios, native diff)
----------------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 26-28

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_ios.1
   :caption: ansible-playbook --limit ios ...
   :linenos:
   :lines: 111-
   :emphasize-lines: 3-23

Configuring Devices (ios, again)
----------------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/playbook_configure.yaml
   :caption: playbook_configure.yaml
   :language: yaml
   :linenos:
   :emphasize-lines: 9-28

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/ansible/results/configure_ios.2
   :caption: ansible-playbook --limit ios ...
   :linenos:
   :lines: 1-

Data ain't easy
---------------

.. image:: _static/data.jpg
   :scale: 70 %
   :alt: data

Abstractions/Intentions
-----------------------

From simple service definitions to complex/descriptive data structures

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/abstractions/service.yaml
   :caption: service.yaml
   :linenos:
   :lines: 2-

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/abstractions/expanded.yaml
   :caption: expanded.yaml
   :linenos:
   :lines: 2-
