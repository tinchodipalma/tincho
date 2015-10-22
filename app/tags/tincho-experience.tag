<tincho-experience>
    <div id="experience" class="section section-blue section-bg-net section-bg-animated">
        <div class="header-group">
            <div class="title title-main">
                { experience.header }
            </div>
        </div>
        <div class="section-content">
            <div class="experience-section col-xs-offset-2 col-xs-8 col-lg-offset-0 col-lg-12 animated bounceIn">
                <div class="experience-content">
                    <ul class="ul-reset">
                        <li each={ experience.content }>
                            <div class="experience-image col-xs-12 col-lg-2">
                                <img src={ imgSrc } alt={ company }>
                            </div>
                            <div class="experience-data col-xs-12 col-lg-10">
                                <div class="experience-title col-xs-6 col-md-5">
                                    { role }
                                </div>
                                <div class="experience-company col-xs-6 col-md-7">
                                    { company }
                                    <span class="experience-period">
                                        { period }
                                    </span>
                                </div>
                                <div class="experience-tags col-xs-12">
                                    <ul class="ul-reset">
                                        <li class="experience-tag" each={ tag in tags }>
                                            #{ tag }
                                        </li>
                                    </ul>
                                </div>
                                <div class="experience-description col-xs-12">
                                    { description }
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <script>
        var self = this

        self.experience = {
            header: 'Experiencia Laboral',
            content: [
                {
                    role: 'Frontend Developer',
                    company: 'Santex',
                    period: '2015 - actual',
                    imgSrc: '/app/img/experience/santex.png',
                    description: 'Some text for Santex',
                    tags: [
                        'HTML5',
                        'CSS3',
                        'JavaScript',
                        'RiotJS'
                    ]
                },
                {
                    role: 'Web Developer',
                    company: 'Globant',
                    period: '2013 - 2015',
                    imgSrc: '/app/img/experience/globant.png',
                    description: 'Some text for Globant',
                    tags: [
                        'HTML5',
                        'CSS3',
                        'PHP',
                        'JavaScript',
                        'jQuery',
                        'AngularJS'
                    ]
                }
            ]
        }
    </script>
</tincho-experience>
