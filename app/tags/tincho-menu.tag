<tincho-menu>
    <div id="menu" class="navbar navbar-default navbar-fixed-top menu-{ selectedColor }">
        <div id="menuList" class="col-xs-12 col-sm-12 col-md-offset-2 col-md-8">
            <ul>
                <li each={ links } class="menu-item { color } { 'active': isActive(tag) }">
                    <a href={ getMenuLink(tag) }>
                        <span>{ text }</span>
                    </a>
                </li>
            </ul>
            <div id="menuBlock" class="hide"></div>
        </div>
    </div>


    <script>
        var self = this
        self.selectedColor = 'black'

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
            self.updateColor()
            self.update()
        }

        updateColor() {
            for (var i = 0; i < self.links.length; i++) {
                if (self.links[i].tag === self.tag) {
                    self.selectedColor = self.links[i].color
                    break;
                }
            }
        }

        self.on('mount', function() {
            self.tag = opts.parent.tag
            self.updateColor()
            self.update()
        })

    </script>
</tincho-menu>
