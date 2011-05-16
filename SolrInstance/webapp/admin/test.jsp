<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%--
 Licensed to the Apache Software Foundation (ASF) under one or more
 contributor license agreements.  See the NOTICE file distributed with
 this work for additional information regarding copyright ownership.
 The ASF licenses this file to You under the Apache License, Version 2.0
 (the "License"); you may not use this file except in compliance with
 the License.  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
--%>

<form name="queryForm" method="GET" action="../test" accept-charset="UTF-8">
<!-- these are good defaults to have if people bookmark the resulting
     URLs, but they should not show up in the form since they are very
     output type specific.
  -->
<input name="indent" type="hidden" value="on">
<input name="version" type="hidden" value="2.2">

<table>
<tr>
  <td>
	<strong>Solr/Lucene Statement</strong>
  </td>
  <td>
	<textarea rows="5" cols="60" name="q"></textarea>
  </td>
</tr>
<tr>
  <td>
	<strong>Campo mm (Minimum 'Should' Match)</strong><br />
	100% = AND, 0% = OR
  </td>
  <td>
	<input name="mm" type="text" value="100%" size="20"  />
  </td>
</tr>
<tr>
  <td>
  </td>
  <td>
    <input class="stdbutton" type="submit" value="search" onclick="if (queryForm.q.value.length==0) { alert('no empty queries, please'); return false; } else { queryForm.submit(); } ">
  </td>
</tr>
</table>
</form>

</body>
</html>
