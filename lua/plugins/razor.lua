return {
  "jlcrochet/vim-razor",
  ft = { "razor", "cshtml" },
  config = function()
    vim.filetype.add({
      extension = {
        cshtml = "razor",
        razor = "razor",
      },
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "razor", "cshtml" },
      callback = function()
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.expandtab = true
        vim.opt_local.commentstring = "@* %s *@"
        vim.opt_local.omnifunc = "htmlcomplete#CompleteTags"

        -- Function to create abbreviation with cursor positioning
        local function create_tag_abbrev(trigger, tag)
          vim.keymap.set("ia", trigger, function()
            local opening = "<" .. tag .. ">"
            local closing = "</" .. tag .. ">"
            return opening .. closing .. string.rep("<Left>", #closing)
          end, { expr = true, buffer = true })
        end

        -- Function for self-closing tags
        local function create_selfclose_abbrev(trigger, tag, attrs)
          vim.keymap.set("ia", trigger, function()
            return "<" .. tag .. (attrs or "") .. " />"
          end, { expr = true, buffer = true })
        end

        -- Function for tags with attributes
        local function create_attr_abbrev(trigger, tag, attrs)
          vim.keymap.set("ia", trigger, function()
            local opening = "<" .. tag .. (attrs or "") .. ">"
            local closing = "</" .. tag .. ">"
            return opening .. closing .. string.rep("<Left>", #closing)
          end, { expr = true, buffer = true })
        end

        -- Create abbreviations
        create_tag_abbrev("h1", "h1")
        create_tag_abbrev("h2", "h2")
        create_tag_abbrev("h3", "h3")
        create_tag_abbrev("h4", "h4")
        create_tag_abbrev("h5", "h5")
        create_tag_abbrev("h6", "h6")
        create_tag_abbrev("div", "div")
        create_tag_abbrev("p", "p")
        create_tag_abbrev("span", "span")
        create_tag_abbrev("ul", "ul")
        create_tag_abbrev("ol", "ol")
        create_tag_abbrev("li", "li")
        create_attr_abbrev("button", "button", ' type=""')
        create_attr_abbrev("a", "a", ' href=""')
        create_selfclose_abbrev("img", "img", ' src="" alt=""')
        create_selfclose_abbrev("input", "input", ' type="" text=""')
        create_tag_abbrev("table", "table")
        create_tag_abbrev("tr", "tr")
        create_tag_abbrev("td", "td")
        create_tag_abbrev("th", "th")
        create_tag_abbrev("thead", "thead")
        create_tag_abbrev("tbody", "tbody")
        create_attr_abbrev("form", "form", ' action="" method="post"')
        create_tag_abbrev("label", "label")
        create_selfclose_abbrev("br", "br")
        create_selfclose_abbrev("hr", "hr")
        create_tag_abbrev("pre", "pre")
        create_tag_abbrev("article", "article")
        create_tag_abbrev("nav", "nav")
        create_tag_abbrev("select", "select")
        create_tag_abbrev("option", "option")
      end,
    })
  end,
}
