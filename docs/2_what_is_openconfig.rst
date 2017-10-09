.. rst-class:: agenda

Agenda
------

1. What is YANG?
2. **What is OpenConfig?**
3. What is napalm-yang?

What is OpenConfig?
-------------------

1. OpenConfig is an industry effort policed by Google to create vendor agnostic models
2. A bunch of models:
    * repo: https://github.com/openconfig/public
    * docs: http://ops.openconfig.net/branches/master/

----

.. rst-class:: sub-title build-item-1

What is not OpenConfig?

.. rst-class:: build-item-1

1. Very open despite of what the name might imply :P

Why OpenConfig
--------------

OpenConfig provides a set of models you can use to configure and to validate the state of any device regardless of the vendor or OS.

.. rst-class:: build-item-1

.. image:: _static/laughing.gif
   :scale: 150 %
   :alt: I'm outta here

The sad truth
-------------

1. Very few vendors care (or care very little)
2. Those who care implement a few models only in their very latest releases
3. Vendors implement almost as many deviations as models
4. Current implementations don't seem very stable
