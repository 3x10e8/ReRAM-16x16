// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * col driver blackbox
 *
 *-------------------------------------------------------------
 */

module col_driver #()
(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif
    /*
    inout row, 	// analog I/O
    inout col, 	// analog I/O
    inout body, 	// analog I/O
    input WL, 		// digital I/O
    */
    
    inout Vref, 	// analog I/O
    inout Vgpc, 	// analog I/O
    inout Vgnc, 	// analog I/O
    inout Vc_plus, 	// analog I/O
    inout Vc_minus, 	// analog I/O
    
    input SWref,	// GPIO input
    input SWc_plus,	// GPIO input
    input SWc_minus,	// GPIO input
);
endmodule

`default_nettype wire
