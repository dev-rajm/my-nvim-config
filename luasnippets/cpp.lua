local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  s("cp", {
    t({
      "#include <bits/stdc++.h>",
      "using namespace std;",
      "",
      "void solve() {",
      "",
      "}",
      "",
      "int32_t main() {",
      " ios::sync_with_stdio(false);",
      " cin.tie(0);",
      "",
      "int tc;",
      "cin >> tc;",
      "while(tc--) {",
      " solve();",
      "}",
      "",
      " return 0;",
      "}"
    }),
  }),
}
