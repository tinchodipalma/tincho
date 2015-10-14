<tincho-content>
    <div id="content">
        <tincho-about-me></tincho-about-me>
        <tincho-education></tincho-education>
        <tincho-experience></tincho-experience>
    </div>

    <script>
        var self = this
        self.tag = 'about-me'

        riot.route(function (hash, tag, id) {
            riot.mount('#content', 'tincho-' + tag)
        })

        riot.route.exec(function (hash, tag, id) {
            if (!tag) {
                tag = 'about-me'
            }
            self.tag = tag
        })

        self.on('mount', function() {
            // riot.mount('#content', 'tincho-' + self.tag)
        })

    </script>

</tincho-content>
