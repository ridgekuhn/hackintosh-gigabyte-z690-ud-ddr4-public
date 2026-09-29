/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /media/ridgek/EFIUSB/EFI/OC/ACPI/SSDT-USBW.aml, Sun Sep 27 22:08:59 2026
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000096 (150)
 *     Revision         0x02
 *     Checksum         0x7E
 *     OEM ID           "OSY86 "
 *     OEM Table ID     "USBW"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "OSY86 ", "USBW", 0x00001000)
{
    External (_SB_.PC00.XHCI._PRW, MethodObj)    // 0 Arguments

    If ((CondRefOf (\_OSI, Local0) && _OSI ("Darwin")))
    {
        Device (\_SB.USBW)
        {
            Name (_HID, "PNP0D10" /* XHCI USB Controller with debug */)  // _HID: Hardware ID
            Name (_UID, "WAKE")  // _UID: Unique ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (\_SB.PC00.XHCI._PRW ())
            }
        }
    }
}

