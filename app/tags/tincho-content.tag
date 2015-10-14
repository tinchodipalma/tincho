<tincho-content>
    <div id="menu"></div>
    <div id="content"></div>

    <script>
        var self = this
        self.tag = 'about-me'

        riot.route(function (hash, tag, id) {
            riot.mount('#content', 'tincho-' + tag)
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
            self.menuTag = riot.mount('#menu', 'tincho-menu', { parent: self })[0]
            self.contentTag = riot.mount('#content', 'tincho-' + self.tag)[0]
        })

    </script>

</tincho-content>
