/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /media/ridgek/EFIUSB/EFI/OC/ACPI/SSDT-BRG0.aml, Sun Sep 27 22:08:57 2026
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000A6 (166)
 *     Revision         0x02
 *     Checksum         0x64
 *     OEM ID           "ACDT"
 *     OEM Table ID     "BRG0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "BRG0", 0x00000000)
{
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)

    Scope (\_SB.PC00.PEG1.PEGP)
    {
        Device (BRG0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Device (GFX0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }
}

