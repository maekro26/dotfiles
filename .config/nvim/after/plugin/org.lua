-- init.lua

-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Treesitter configuration
require('nvim-treesitter.configs').setup {
    -- If TS highlights are not enabled at all, or disabled via `disable` prop,
    -- highlighting will fallback to default Vim syntax highlighting
    highlight = {
        enable = true,
        -- Required for spellcheck, some LaTex highlights and
        -- code block highlights that do not have ts grammar
        additional_vim_regex_highlighting = { 'org' },
    },
    ensure_installed = { 'org' }, -- Or run :TSUpdate org
}

require('orgmode').setup({
    org_agenda_files = { '~/_org/notes/*' },
    org_default_notes_file = '~/_org/notes/note.org',
    org_agenda_span = 'month',
    org_agenda_skip_schedules_if_done = true,
    org_agenda_skip_deadline_if_done = true,
    org_agenda_skip_if_done = true,
})
