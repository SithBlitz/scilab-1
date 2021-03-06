// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 9920 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=9920
//
// <-- Short Description -->
// winqueryreg did not manage HKEY_CURRENT_CONFIG.

ierr = execstr('winqueryreg(''HKEY_CURRENT_CONFIG'', ''Software\Fonts\'',''LogPixels'')', 'errcatch');
assert_checkequal(ierr, 0);
