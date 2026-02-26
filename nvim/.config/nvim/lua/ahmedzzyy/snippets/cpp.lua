local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
	s("cp-main", {
		t({
			"#include <iostream>",
			"",
			"int main()",
			"{",
			"\tstd::ios::sync_with_stdio(false);",
			"\tstd::cin.tie(nullptr);",
			"#ifdef LOCAL",
			'\tfreopen("input.txt", "r", stdin);',
			'\tfreopen("output.txt", "w", stdout);',
			'\tfreopen("error.txt", "w", stderr);',
			"#endif",
			"",
			"\t// ---- CODE ----",
			"",
		}),
		i(0),
		t({
			"",
			"\t// ---- ----",
			"\treturn 0;",
			"}",
		}),
	}),
}
