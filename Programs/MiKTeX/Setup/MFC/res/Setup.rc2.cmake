/* Setup.rc2:                                           -*- C++ -*-

   Copyright (C) 1996-2018 Christian Schenk

   This file is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published
   by the Free Software Foundation; either version 2, or (at your
   option) any later version.

   This file is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this file; if not, write to the Free Software
   Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307,
   USA. */

#if defined(APSTUDIO_INVOKED)
#  error this file is not editable by Microsoft Visual C++
#endif

IDR_LICENSE LICENSE "${MIKTEX_COPYING_CONDITIONS_RTF}"

VS_VERSION_INFO VERSIONINFO
 FILEVERSION MIKTEX_MAJOR_VERSION,MIKTEX_MINOR_VERSION,MIKTEX_COMP_J2000_VERSION,0
 PRODUCTVERSION MIKTEX_MAJOR_VERSION,MIKTEX_MINOR_VERSION,MIKTEX_PATCH_VERSION,0
 FILEFLAGSMASK 0x3fL
#ifdef _DEBUG
 FILEFLAGS 0x1L
#else
 FILEFLAGS 0x0L
#endif
 FILEOS 0x4L
 FILETYPE 0x1L
 FILESUBTYPE 0x0L
BEGIN
    BLOCK "StringFileInfo"
    BEGIN
        BLOCK "040904b0"
        BEGIN
            VALUE "CompanyName", MIKTEX_COMP_COMPANY_STR
            VALUE "FileDescription", "MiKTeX Setup Wizard"
            VALUE "FileVersion", MIKTEX_COMPONENT_VERSION_STR
            VALUE "InternalName", "setup"
            VALUE "LegalCopyright", MIKTEX_COMP_COPYRIGHT_STR_1252
            VALUE "OriginalFilename", "setup.exe"
            VALUE "ProductName", MIKTEX_PRODUCTNAME_STR
            VALUE "ProductVersion", MIKTEX_VERSION_STR
        END
    END
    BLOCK "VarFileInfo"
    BEGIN
        VALUE "Translation", 0x409, 1200
    END
END
