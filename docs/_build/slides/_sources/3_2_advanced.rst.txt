.. rst-class:: agenda

Agenda
------

1. What is YANG?
2. What is OpenConfig?
3. **What is napalm-yang?**
    1. Basics
    2. **Advanced features**
    3. Integration with ``ansible``

Merging Configurations
----------------------

.. image:: _static/merge.png
   :scale: 60 %

.. rst-class:: flex-columns-2

Merging Configurations (1)
--------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.py
   :caption: merge_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 4

.. image:: _static/merge_1.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.result
   :caption: running config
   :linenos:
   :lines: 1-10
   :emphasize-lines: 7

.. rst-class:: flex-columns-2

Merging Configurations (2)
--------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.py
   :caption: merge_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 6-15

.. image:: _static/merge_2.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.result
   :caption: running config
   :linenos:
   :lines: 1-10
   :emphasize-lines: 7

.. rst-class:: flex-columns-2

Merging Configurations (3)
--------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.py
   :caption: merge_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 17

.. image:: _static/merge_3.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.result
   :caption: diff
   :language: python
   :linenos:
   :lines: 12-24
   :emphasize-lines: 3, 8-12

.. rst-class:: flex-columns-2

Merging Configurations (4)
--------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.py
   :caption: merge_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 19-20

.. image:: _static/merge_3.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.result
   :caption: merge commands
   :language: python
   :linenos:
   :lines: 26-29
   :emphasize-lines: 2-3

.. rst-class:: flex-columns-2

Merging Configurations (5)
--------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.py
   :caption: merge_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 22-23

.. image:: _static/merge_4.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/merge_config.result
   :caption: running config
   :linenos:
   :lines: 33-42
   :emphasize-lines: 7

Replacing Configuration
-----------------------

.. image:: _static/replace.png
   :scale: 60 %

.. rst-class:: flex-columns-2

Replacing Configurations (1)
----------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.py
   :caption: replace_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 4

.. image:: _static/replace_1.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.result
   :caption: running config
   :linenos:
   :lines: 1-15
   :emphasize-lines: 10

.. rst-class:: flex-columns-2

Replacing Configurations (2)
----------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.py
   :caption: replace_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 6-16

.. image:: _static/replace_2.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.result
   :caption: running config
   :linenos:
   :lines: 1-15
   :emphasize-lines: 13

.. rst-class:: flex-columns-2

Replacing Configurations (3)
----------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.py
   :caption: replace_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 18

.. image:: _static/replace_3.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.result
   :caption: diff
   :language: python
   :linenos:
   :lines: 18-32
   :emphasize-lines: 2, 9-13

.. rst-class:: flex-columns-2

Replacing Configurations (4)
----------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.py
   :caption: replace_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 20-21

.. image:: _static/replace_3.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.result
   :caption: replace commands
   :language: python
   :linenos:
   :lines: 35, 49-62
   :emphasize-lines: 1

.. rst-class:: flex-columns-2

Replacing Configurations (5)
----------------------------

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.py
   :caption: replace_config.py
   :language: python
   :linenos:
   :lines: 16-43
   :emphasize-lines: 23-24

.. image:: _static/replace_4.png
   :scale: 30 %

.. rst-class:: smaller-text float-50

.. literalinclude:: ../examples/napalm-yang/advanced/replace_config.result
   :caption: running config
   :linenos:
   :lines: 65-78
   :emphasize-lines: 12

Merging vs Replacing
--------------------

* Merge
    * Works fine when you don't control the entirety of the configuration
* Replace
    * Best option for greenfield, fully automated environments
