Contributing to CCBASIC
=======================

This document explains the procedures and standards for contributions to the
CCBASIC project.

Commit Messages
---------------

Commit messages should be descriptive of the changes made. Commit often, but
don't commit before your changes have been tested at the very least to
compile. Commit messages should finish the sentence "This commit will...",
e.g. "Add PRINT statement to parser".

Compatibility
-------------

One of the primary goals of CCBASIC is broad compatibility with a variety of
hardware and operating systems.

- C code should be ANSI compliant. The compiler flags are set in such a way as
  to point out compliance errors.
- Unix shell scripts should be strictly Bourne compliant. DOS batch files
  should be compatible with standard COMMAND.COM, not extensions such as 4DOS.
- Makefiles should not use GNU extensions.
- Source and build file names must be FAT compatible (8-character names,
  3-character extensions) for DOS compatibility. Auxiliary files such as this
  one need not adhere to this standard.
- Unix line separation (LF) ONLY in distribution files. However, program output
  should use appropriate line separation for the target platform.

Style
-----

Follow the style you see in the code. Lines should not exceed 79 columns in
length, with the exception of strings which are part of program output, so that
they may be easily searched for by users. Indent with tabs; tabs count as 8
columns.

Documentation
-------------

All functions in the public interface should be documented using doxygen-style
comments above the function prototypes in header files.
