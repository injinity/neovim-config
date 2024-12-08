local map = vim.keymap.set

------------------------ CRATES mappings ---------------------------------

local crates = require "crates"

map("n", "<leader>ct", crates.toggle, {desc = "crates toggle", silent = true})
map("n", "<leader>cr", crates.reload, {desc = "crates reload", silent = true})

map("n", "<leader>cv", crates.show_versions_popup, {desc = "crates show version popup", silent = true})
map("n", "<leader>cf", crates.show_features_popup, {desc = "crates show features popup", silent = true})
map("n", "<leader>cd", crates.show_dependencies_popup, {desc = "crates show dependencies popup", silent = true})

map("n", "<leader>cu", crates.update_crate, {desc = "crates update crate", silent = true})
map("v", "<leader>cu", crates.update_crates, {desc = "crates update crates", silent = true})
map("n", "<leader>ca", crates.update_all_crates, {desc = "crates update all crates", silent = true})
map("n", "<leader>cU", crates.upgrade_crate, {desc = "crates upgrade crate", silent = true})
map("v", "<leader>cU", crates.upgrade_crates, {desc = "crates upgrade crates", silent = true})
map("n", "<leader>cA", crates.upgrade_all_crates, {desc = "crates upgrade all crates", silent = true})

------------------------ CRATES mappings ---------------------------------

