.. rst-class:: agenda

Agenda
------

1. What is YANG?
2. What is OpenConfig?
3. **What is napalm-yang?**
    1. **Basics**
    2. Advanced features
    3. Integration with ``ansible``

What is napalm-yang?
--------------------

A library that provides a framework to map native configuration/state to OpenConfig and vice versa

Parsing native data (1)
-----------------------

.. image:: _static/napalm-yang-parse.png
   :scale: 70 %

Parsing native data (2)
-----------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/parse_example_1.py
   :caption: parse_example_1.py
   :language: python
   :linenos:
   :lines: 16-25

.. rst-class:: flex-columns-2

Parsing native data (3)
-----------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/parse_example_1.py
   :caption: parse_example_1.py
   :language: python
   :linenos:
   :lines: 16-25
   :emphasize-lines: 2-5

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/parse_example_1.ios.native
   :caption: ios-native
   :linenos:
   :emphasize-lines: 1-4

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/parse_example_1.ios.json
   :caption: ios-openconfig
   :language: json
   :linenos:
   :lines: -28
   :emphasize-lines: 4-18

.. rst-class:: flex-columns-2

Parsing native data (4)
-----------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/parse_example_1.py
   :caption: parse_example_1.py
   :language: python
   :linenos:
   :lines: 16-25
   :emphasize-lines: 7-10

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/parse_example_1.junos.native
   :caption: junos-native
   :linenos:
   :emphasize-lines: 1-7

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/parse_example_1.junos.json
   :caption: junos-openconfig
   :language: json
   :linenos:
   :lines: -28
   :emphasize-lines: 4-28


Translating to native data
--------------------------

.. image:: _static/napalm-yang-translate.png
   :scale: 70 %

.. nextslide::

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/translate_example_1.py
   :caption: translate_example_1.py
   :language: python
   :linenos:
   :lines: 12-26

.. nextslide::

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/translate_example_1.py
   :caption: translate_example_1.py
   :language: python
   :linenos:
   :lines: 12-26
   :emphasize-lines: 2-3

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/translate_example_1.data.json
   :caption: translate_example_1.data.json
   :lines: 4-30
   :linenos:
   :dedent: 12

.. nextslide::

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/translate_example_1.py
   :caption: translate_example_1.py
   :language: python
   :linenos:
   :lines: 12-26
   :emphasize-lines: 5-9

.. rst-class:: smaller-text float-50

.. code-block:: bash
   :caption: ios
   :linenos:

    interface eth1
        no switchport
        ip address 192.168.1.1 255.255.255.0
        shutdown
        description my description
        mtu 9000
        exit

.. nextslide::

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/basics/translate_example_1.py
   :caption: translate_example_1.py
   :language: python
   :linenos:
   :lines: 12-26
   :emphasize-lines: 11-15

.. rst-class:: smaller-text float-50

.. code-block:: xml
   :caption: junos
   :linenos:

    <configuration>
      <interfaces>
        <interface>
          <name>eth1</name>
          <family>
            <inet>
              <address>
                <name>192.168.1.1/24</name>
              </address>
            </inet>
          </family>
          <disable/>
          <description>my description</description>
          <mtu>9000</mtu>
        </interface>
      </interfaces>
    </configuration>

Profiles/Mappings
-----------------

* A **mapping** is a set of rules to map native data to a YANG model and vice versa
    * A mappings maps to a specific YANG model and follows its structure
    * There is a mapping for each YANG model and supported NOS pair
* A **profile** is a set of mappings for a specific NOS
    * A NOS might have different associated profiles.
    * For example, ``['nos15', 'nos']``

Example (parser)
----------------

.. rst-class:: smaller-text

.. literalinclude:: ../examples/napalm-yang/basics/parse_interfaces.yaml
   :caption: mappings/ios/parsers/config/openconfig-interfaces/interfaces.yaml
   :language: yaml
   :linenos:
   :lines: 1-14, 25-26, 40-49

Example (translator)
--------------------

.. rst-class:: smaller-text

.. literalinclude:: ../examples/napalm-yang/basics/translate_interfaces.yaml
   :caption: napalm_yang/mappings/ios/translators/openconfig-interfaces/interfaces.yaml
   :language: yaml
   :linenos:
   :lines: 1-11, 22-23, 28-39
