return{
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.my_dashboard'.config)
    end
}
