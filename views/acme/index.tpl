<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>{{imp[0]}} - {{imp[1][0]}}</title>
        <link rel="stylesheet" href="/views/acme/css/bootstrap.min.css">
        <link rel="stylesheet" href="/views/acme/css/bootstrap-reset.css">
        <link rel="stylesheet" href="/views/acme/css/style.css">
        <link rel="stylesheet" href="/views/acme/css/style-responsive.css">
        <script src="/views/acme/js/jquery.min.js"></script>
        <script src="/views/acme/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
        <script>hljs.initHighlightingOnLoad();</script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/default.min.css">
        <link rel="stylesheet" href="/views/acme/css/font-awesome/css/font-awesome.min.css">
        <script type="text/x-mathjax-config">MathJax.Hub.Config({tex2jax: {inlineMath: [['[math]', '[/math]']]}});</script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS_CHTML"></script>
        <script>
            function folding(num) {
                var fol = document.getElementById('folding_' + num);
                if(fol.style.display == 'inline-block' || fol.style.display == 'block') {
                    fol.style.display = 'none';
                } else {
                    if(num % 3 == 0) {
                        fol.style.display = 'block';
                    } else {
                        fol.style.display = 'inline-block';
                    }
                }
            }
        </script>
        {{!imp[1][5]}}
        {{!imp[2][3]}}
        <meta name="twitter:creator" content="@{{imp[1][0]}}">
        <meta name="twitter:title" content="{{imp[0]}}">
        <meta name="twitter:site" content="@{{imp[1][0]}}">
        <meta name="twitter:card" content="summary">
        <link rel="shortcut icon" href="/views/acme/img/on.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <header class="head-section">
            <div class="navbar navbar-default navbar-static-top container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/" style="margin-top: 30px;">
                        {{!imp[1][4]}}
                    </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li id="right-search">
                            <form method="post" action="/search" id="searchform" role="search">
                                <input style="display: inline-block;" class="form-control search" type="search" name="search" placeholder="Search" id="searchInput" autocomplete="off">
                            </form>                
                        </li>
                        <li>
                            <a href="/recent_changes">
                                <i class="fa fa-refresh" aria-hidden="true"></i>
                                최근 변경
                                <i class="fa fa-angle-left"></i>
                            </a>
                        </li>
                        <li>
                            <a href="/recent_discuss">
                                <i class="fa fa-comment" aria-hidden="true"></i>
                                최근 토론
                                <i class="fa fa-angle-left"></i>
                            </a>
                        </li>
                        <li>
                            <a href="/random">
                                <i class="fa fa-random" aria-hidden="true"></i>
                                무작위
                                <i class="fa fa-angle-left"></i>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover="dropdown" data-toggle="dropdown" href="javascript:void(0);">
                                <i class="fa fa-plus-circle" aria-hidden="true"></i>
                                나머지
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul role="menu" class="dropdown-menu">
                                <li>
                                    <a href="/user">
                                        % if(imp[2][2] == 1):
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                        % elif(imp[2][2] == 0):
                                            <i class="fa fa-user-times" aria-hidden="true"></i>
                                        % else:
                                            <i class="fa fa-user-secret" aria-hidden="true"></i>
                                        % end
                                        사용자
                                    </a>
                                </li>
                                <li>
                                    <a href="/other">
                                        <i class="fa fa-cogs" aria-hidden="true"></i>
                                        기타
                                    </a>
                                </li>
                            </ul>
                        </li>         
                    </ul>
                </div>
            </div>
        </header>
        <section id="body">
            <div class="breadcrumbs">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-sm-4">
                            <h1>
                                {{imp[0]}}
                                % if(imp[3][0] != 0):
                                    <sub>{{imp[3][0]}}</sub>
                                % end
                            </h1>
                        </div>
                        <div class="col-lg-8 col-sm-8">
                            <ol class="breadcrumb pull-right">   
                                <li style="margin: 0;">
                                    % if(menu != 0):
                                        % i = 1
                                        % for sub_d in menu:
                                            % if(sub_d[1] == 1):
                                                <a class="menu-item" href="/{{sub_d[0]}}" id="open">토론</a>
                                            % elif(sub_d[1] == 0):
                                                <a class="menu-item" href="/{{sub_d[0]}}">토론</a>
                                            % else:
                                                <a class="menu-item" href="/{{sub_d[0]}}">{{sub_d[1]}}</a>
                                            % end
                                            % try:
                                                % d = menu[i]
                                                ㆍ
                                            % except:
                                                % break
                                            % end
                                            % i += 1
                                        % end
                                    % end
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 mar-b-30">
                        {{!data}}
                    </div>
                </div>
            </div>
        </section>
        <div class="scroll-buttons">
            <a class="scroll-toc" href="#toc">
                <i class="fa fa-list-alt" aria-hidden="true"></i>
            </a>
            <a class="scroll-button" href="#">
                <i class="fa fa-arrow-up" aria-hidden="true"></i>
            </a>
            <a class="scroll-bottom" href="#footer">
                <i class="fa fa-arrow-down" aria-hidden="true"></i>
            </a>
        </div>
        <footer class="footer-small" id="footer">
            <div class="container">
                <div class="row">
                    <div class="copyright">
                        {{!imp[1][1]}}
                        <span id="left_end" class="pull-right">
                            <a href="https://github.com/2DU/openNAMU">
                                <img src="/views/acme/img/on2.png" alt="opennamu" style="width: 100px;">
                            </a>
                            <a href="/views/acme/list.html">기여자</a>
                        </span>    
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>