<div class="sec sec-footer">
    <div class="container">
        <footer id="footer" class="sec-heading footer">
            <ul class="icons">
                <li><a href="https://twitter.com/{{ config.twitter }}" class="footer-link" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="{{ url_for('atom.xml') }}" class="footer-link fa-rss"><span class="label">RSS</span></a></li>
                <li><a href="https://github.com/{{ config.github.user }}/{{ config.github.repo }}" class="footer-link" target="_blank"><i class="fa fa-github-alt"></i></a></li>
            </ul>
            <div class="footer-sec copyright">
            &copy; {{ moment(Date.now()).year() }} <a href="http://aotu.io" target="_blank">{{ config.author }}</a><br>
            Documentation licensed under <a href="http://creativecommons.org/licenses/by/4.0/" target="_blank">CC BY 4.0</a>.
            </div>
            <div class="footer-sec words">
            "
            {% if theme.daily_words %}
            {% set cnt = site.data.words.length %}
            {% set pick = Math.floor(Math.random()*cnt) %}
            {{ site.data.words[pick].en }}
            {% else %}
            {{ config.slogan }}
            {% endif %}
            "
            </div>
            {% if theme.busuanzi %}
            <div class="footer-sec site-stats" style="display:none">
                <span id="busuanzi_container_site_pv" class="site-pv">
                    {{ __('site.pv') }}: <span id="busuanzi_value_site_pv" class="site-pv-num"></span> {{ __('site.pv_unit') }}
                </span>
                <span id="busuanzi_container_site_uv" class="site-uv">
                    {{ __('site.uv') }}: <span id="busuanzi_value_site_uv" class="site-uv-num"></span> {{ __('site.uv_unit') }}
                </span>
            </div>
            {% endif %}
        </footer>
    </div>
</div>
