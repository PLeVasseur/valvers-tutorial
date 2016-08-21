1.2.3 ARM physical addresses
Physical addresses start at 0x00000000 for RAM.

The ARM section of the RAM starts at 0x00000000.
The VideoCore section of the RAM is mapped in only if the system is configured to
support a memory mapped display (this is the common case).
The VideoCore MMU maps the ARM physical address space to the bus address space seen
by VideoCore (and VideoCore peripherals). The bus addresses for RAM are set up to map
onto the uncached 1 bus address range on the VideoCore starting at 0xC0000000.
Physical addresses range from 0x20000000 to 0x20FFFFFF for peripherals. The bus
addresses for peripherals are set up to map onto the peripheral bus address range starting at
0x7E000000. Thus a peripheral advertised here at bus address 0x7Ennnnnn is available at
physical address 0x20nnnnnn.


+#ifdef CONFIG_BCM2836
+#define BCM2835_GPIO_BASE		0x3f200000
+#else
 #define BCM2835_GPIO_BASE		0x20200000
+#endif
 #define BCM2835_GPIO_COUNT		54
