<tincho-menu>
    <div id="menuList" class="col-xs-12 col-sm-12 col-md-offset-2 col-md-8">
        <ul>
            <li each={ links } class="{ color } { 'active': isActive(tag) }">
                <a href={ getMenuLink(tag) }>
                    <span>{ text }</span>
                </a>
            </li>
        </ul>
    </div>

    <script>
        var self = this

        self.links = [
            {
                color: 'green',
                tag: 'about-me',
                text: 'About me'
            },
            {
                color: 'orange',
                tag: 'education',
                text: 'Education'
            },
            {
                color: 'blue',
                tag: 'experience',
                text: 'Experience'
            },
        ]

        getMenuLink(tag) {
            return '#/' + tag
        }

        isActive(tag) {
            return self.tag === tag
        }

        updateTag(tag) {
            self.tag = tag
            self.update()
        }

        self.on('mount', function() {
            self.tag = opts.parent.tag
            self.update()
        })

    </script>
</tincho-menu>
