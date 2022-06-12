# 256x8 bit Dual Port RAM 
## Implementation of 256bit x 8bit Dual Port RAM in Verilog

### Abstract: 
Asynchronous multiprocessor systems require a means to transmit data between two independently running processors. Dual port memory provides a common memory accessible to both processors that can be used to share and transmit data and system status between the two processors. The DS1609 is a dual-port memory with 256 bytes of SRAM memory that is accessed via two separate 8-bit multiplexed address/data ports. This application note discussed system level considerations to take when designing around dual-port memory as well as shows typical configurations with 8086 and HC11 8-bit microcontrollers/microprocessors.

![image](https://user-images.githubusercontent.com/64649440/173242760-2bfd1b85-6ffd-4022-8bf7-154a897cd08e.png)


Memory devices and systems are diversifying and becoming more complex out of necessity to support information processing needs. The need to centralize data storage in multiprocessor applications challenges both hardware and software designers. New ways must be found that consolidate system information that is controllable by more than one bus. In addition, systems are becoming more power conscious, particularly portable systems as they typically rely on some kind of rechargeable battery for power. For systems where shared bus access requirements are infrequent, but require many megabytes of memory to be transferred, a shared mass storage device such as a floppy disk drive or networked hard disk drive may suffice. However, for frequent, low density access, media such as hard drives or floppy diskettes are impractical and would greatly slow the rate at which data could be stored and retrieved. The DS1609 Dual Port Ram has been specifically designed to be able to meet high frequency, low volume data storage and retrieval between two asynchronous systems. With its ability to operate at voltages as low as 2.5 volts, the DS1609 also fits easily into any portable application where power availability is limited.

### References:
* https://www.maximintegrated.com/en/design/technical-documents/app-notes/6/62.html
* https://www.youtube.com/watch?v=PfMDoH837kI
* https://www.intel.com/content/www/us/en/support/programmable/support-resources/design-examples/horizontal/ver-true-dual-port-ram-sclk.html
* https://www.youtube.com/watch?v=m18YU9xjETU
