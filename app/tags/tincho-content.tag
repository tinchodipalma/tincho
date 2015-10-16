<tincho-content>
    <div id="menu" class="navbar navbar-default navbar-fixed-top"></div>
    <div id="content" class="pt-perspective">
        <div id="page1" class="pt-page pt-page-1"></div>
        <div id="page2" class="pt-page pt-page-2"></div>
    </div>

    <script>
        var self = this
        self.tag = 'about-me'
        self.isFirstPage = false

        riot.route(function (hash, tag, id) {
            // http://tympanus.net/Development/PageTransitions/ <- Page Transitions!!
            // Mount previous page before changing tag

            var pageIn = self.isFirstPage ? 2 : 1
            var pageOut = self.isFirstPage ? 1 : 2

            $(window).trigger('riotroute')
            riot.mount('#page' + pageOut, 'tincho-' + self.tag)
            self.tag = tag
            riot.mount('#page' + pageIn, 'tincho-' + tag)

            self.isFirstPage = !self.isFirstPage

            // Update tag for current page
            if (!!self.menuTag) {
                self.menuTag.updateTag(tag)
            }
        })

        riot.route.exec(function (hash, tag, id) {
            if (!tag) {
                tag = 'about-me'
            }
            self.tag = tag
        })

        self.on('mount', function() {
            self.isFirstPage = true
            self.menuTag = riot.mount('#menu', 'tincho-menu', { parent: self })[0]
            self.contentTag = riot.mount('#page1', 'tincho-' + self.tag)[0]

            PageTransitions.init()
        })

    </script>

</tincho-content>
