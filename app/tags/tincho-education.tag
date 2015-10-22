<tincho-education>
    <div id="education" class="section section-orange section-bg-squares section-bg-animated">
        <div class="header-group">
            <div class="title title-main">
                Educaci&oacute;n
            </div>
        </div>
        <div class="section-content">
            <div class="education-section col-xs-offset-2 col-xs-10 col-lg-offset-0 col-lg-6 animated pulse" each={ educations }>
                <div class="education-header">
                    { header }
                </div>
                <div class="education-content">
                    <ul class="ul-reset">
                        <li each={ content }>
                            <div class="education-title">
                                { title }
                            </div>
                            <div class="education-institute">
                                { institute }
                                <div class="education-period">
                                    { period }
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

        self.educations = [
            {
                header: 'Estudios',
                content: [
                    {
                        title: 'Ingeniería en Sistemas de Información',
                        institute: 'Universidad Tecnológica Nacional – Facultad Regional Córdoba',
                        period: '2008 - 2015'
                    },
                    {
                        title: 'Bachiller orientado en humanidades, especialización en ciencias sociales',
                        institute: 'Secundario - Instituto Nuestra Madre de la Merced',
                        period: '2002 - 2007'
                    }
                ]
            },
            {
                header: 'Cursos y Talleres',
                content: [
                    {
                        title: 'Oratoria',
                        institute: 'Ceicos',
                        period: '2013'
                    },
                    {
                        title: 'Desarrollo y Programación de Páginas Web',
                        institute: 'Universidad Tecnológica Nacional – Facultad Regional Córdoba',
                        period: '2010'
                    }
                ]
            }
        ]
    </script>
</tincho-education>
