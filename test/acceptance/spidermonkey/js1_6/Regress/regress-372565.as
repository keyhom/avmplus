/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;

var gTestfile = 'regress-372565.js';
//-----------------------------------------------------------------------------
var BUGNUMBER = 372565;
var summary = 'Do not assert: top < ss->printer->script->depth" decompiling a function where a const identifier is used as a for-loop variable';
var actual = '';
var expect = '';

//printBugNumber(BUGNUMBER);
//printStatus (summary);

(function() { for each(x in y) { } const x; });

//reportCompare(expect, actual, summary);
Assert.expectEq(summary, expect, actual);

