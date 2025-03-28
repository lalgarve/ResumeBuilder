#!/usr/bin/gawk -f
#  Licensed to the Leila Otto Algarve. See the NOTICE file
#  distributed with this work for additional information
#  regarding copyright ownership.  The ASF licenses this file
#  to you under the Apache License, Version 2.0 (the
#  "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#  
#    http://www.apache.org/licenses/LICENSE-2.0
#  
#  Unless required by applicable law or agreed to in writing,
#  software distributed under the License is distributed on an
#  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#  KIND, either express or implied.  See the License for the
#  specific language governing permissions and limitations
#  under the License.

NR == line_insertion {
	save_line = $0
    header = "awk 'NR>4{print}' " header_file
    while (header | getline) {
        print
    }
    close(header)
    $0 = save_line
}

{ print $0 }