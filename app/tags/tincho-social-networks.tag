<tincho-social-networks>
    <div class="col-xs-12 col-md-offset-4 col-md-4">
        <ul id="socialNetworksList" class='ul-reset'>
            <li class='social-network-option col-xs-3 col-md-3' each={ item in options }>
                <a target={ getTarget(item) } href={ item.href } title={ item.title } onclick={ doOnClick(item) }>
                    <img src={ '/app/img/social/hex/' + item.imgSrc }>
                </a>
            </li>
        </ul>
    </div>

    <script>
        var self = this

        self.options = [
            {
                href: '//www.facebook.com/tinchodipalma',
                title: 'Facebook',
                imgSrc: 'facebook.png'
            },
            {
                href: '//www.twitter.com/tinchodipalma',
                title: 'Twitter',
                imgSrc: 'twitter.png'
            },
            {
                href: '//www.linkedin.com/in/tinchodipalma',
                title: 'Linkedin',
                imgSrc: 'linkedin.png'
            },
            {
                href: '#/about-me',
                title: 'Email',
                imgSrc: 'email.png',
                noTarget: true,
                onclickFn: function () {
                    debugger
                    // Mount and show contact tag :D
                }
            }
        ]

        doOnClick(item) {
            if (typeof item.onclickFn === 'function') {
                return item.onclickFn;
            }
        }

        getTarget(item) {
            return !!item.noTarget ? '' : '_blank'
        }

    </script>
</tincho-social-networks>
