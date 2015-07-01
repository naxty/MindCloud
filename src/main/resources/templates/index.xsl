<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <html lang="en">

        <head>
            <title>MindCloud</title>
            <link rel="icon" type="image/x-icon" href="/img/favicon.ico" />

            <link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
            <link href="/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
            <link href="/css/bootstrap-colorpicker.min.css" rel="stylesheet" type="text/css" />
            <link href="/css/sidebar.css" rel="stylesheet" type="text/css" />
            <link href="/css/style.css" rel="stylesheet" type="text/css" />
            <script src="/js/sockjs-0.3.4.min.js"></script>
            <script src="/js/stomp.min.js"></script>
            <script src="/js/jquery-2.1.4.min.js"></script>
            <script src="/js/jquery.hotkeys.js"></script>
            <script src="/js/bootstrap.min.js"></script>
            <script src="/js/bootstrap-colorpicker.min.js"></script>
            <script src="/js/cytoscape.min.js"></script>
            <script src="/js/cytoscape-cxtmenu.js"></script>
            <script src="/js/engines/arbor.js"></script>
            <script src="/js/engines/cola.v3.min.js"></script>
            <script src="/js/engines/dagre.js"></script>
            <script src="/js/engines/foograph.js"></script>
            <script src="/js/engines/rhill-voronoi-core.js"></script>
            <script src="/js/engines/springy.js"></script>
        </head>

        <body>
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/">
                            <img alt="MindCloud" src="img/brand.png" /><span>MindCloud</span>
                        </a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-inbox"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Notification 1</a>
                                    </li>
                                    <li><a href="#">Notification 2</a>
                                    </li>
                                    <li><a href="#">Notification 3</a>
                                    </li>
                                    <li><a href="#">Notification 4</a>
                                    </li>
                                    <li><a href="#">Notification 5</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-envelope"></span><span class="badge">4</span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Message 1</a>
                                    </li>
                                    <li><a href="#">Message 2</a>
                                    </li>
                                    <li><a href="#">Message 3</a>
                                    </li>
                                    <li><a href="#">Message 4</a>
                                    </li>
                                    <li><a href="#">Message 5</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown" id="profile_dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img class="profile-thumbnail" src="/img/user.png" /><span><xsl:value-of select="/mindcloud/session/user/name" /></span> <span class="caret"></span>
                                </a>
                                <!--<ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Mein Profil</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span> Abmelden</a>
                            </li>
                        </ul>-->
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <span class="glyphicon glyphicon-off"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="nav-side-menu">
                <div class="menu-search">
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" id="searchInput" placeholder="Suchen..." />
                        <span class="glyphicon glyphicon-search form-control-feedback" aria-hidden="true"></span>
                    </div>
                </div>

                <div class="menu-list">
                    <ul class="menu-content">
                        <li id="search-results-header" data-toggle="collapse" data-target="#search-results" aria-expanded="true" class="hidden">
                            <a href="#"><span class="glyphicon glyphicon-search"></span> Suchergebnisse <span class="caret"></span></a>
                        </li>
                        <ul class="sub-menu collapse in hidden" id="search-results">
                        </ul>
                        <li data-toggle="collapse" data-target="#my-mindmaps" aria-expanded="true">
                            <a href="#"><span class="glyphicon glyphicon-th-list"></span> Meine Mindmaps <span class="caret"></span></a>
                        </li>
                        <ul class="sub-menu collapse in" id="my-mindmaps">
                        </ul>
                        <li id="create-mindmap">
                            <a href="#"><span class="glyphicon glyphicon-plus-sign"></span> Neue Mindmap</a>
                        </li>
                        <li id="import-mindmap">
                            <a href="#"><span class="glyphicon glyphicon-cloud-upload"></span> Mindmap importieren</a>
                        </li>
                        <li data-toggle="collapse" data-target="#my-friends" class="collapsed">
                            <a href="#"><span class="glyphicon glyphicon-user"></span> Meine Freunde<span class="caret"></span></a>
                        </li>
                        <ul class="sub-menu collapse" id="my-friends">
                            <li><a href="#">Freund 1</a>
                            </li>
                            <li><a href="#">Freund 2</a>
                            </li>
                            <li><a href="#">Freund 3</a>
                            </li>
                            <li><a href="#">Freund 4</a>
                            </li>
                            <li><a href="#">Freund 5</a>
                            </li>
                        </ul>
                    </ul>
                </div>
            </div>

            <div class="mindmap-editor">
                <nav class="navbar navbar-default">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mindmap <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><span class="glyphicon glyphicon-share"></span> Freigeben</a>
                                </li>
                                <li role="separator" class="divider"></li>
                                <li><a id="editor-rename" href="#"><span class="glyphicon glyphicon-pencil"></span> Umbenennen</a>
                                </li>
                                <li><a id="editor-save" href="#"><span class="glyphicon glyphicon-floppy-disk"></span> Speichern<span class="text-muted">Strg + S</span></a>
                                </li>
                                <li><a id="editor-delete" href="#"><span class="glyphicon glyphicon-trash"></span> Löschen</a>
                                </li>
                                <li role="separator" class="divider"></li>
                                <li><a id="editor-export" href="#"><span class="glyphicon glyphicon-cloud-download"></span> Exportieren</a>
                                </li>
                                <li><a id="editor-export-image" href="#"><span class="glyphicon glyphicon-picture"></span> Als Bild exportieren</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Bearbeiten <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a id="editor-step-backwards" href="#"><span class="glyphicon glyphicon-circle-arrow-left"></span> Rückgängig<span class="text-muted">Strg + Z</span></a>
                                </li>
                                <li><a id="editor-step-forward" href="#"><span class="glyphicon glyphicon-circle-arrow-right"></span> Wiederholen<span class="text-muted">Strg + Y</span></a>
                                </li>
                            </ul>
                        </li>
                        <!--
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ansicht <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Zoom</a>
                                </li>
                                <li class="dropdown dropdown-submenu">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Level 2</a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">Link 3</a>
                                        </li>
                                        <li>
                                            <a href="#">Link 3</a>
                                        </li>
                                        <li>
                                            <a href="#">Link 3</a>
                                        </li>
                                        <li class="dropdown dropdown-submenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Level 3</a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="#">Link 3</a>
                                                </li>
                                                <li>
                                                    <a href="#">Link 3</a>
                                                </li>
                                                <li>
                                                    <a href="#">Link 3</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        -->
                    </ul>
                    <a href="#" class="mindmap-name navbar-text navbar-right"></a>
                </nav>
                <div class="mindmap">
                </div>
                <div class="empty-message">Bitte Mindmap zum Anzeigen links auswählen!</div>
            </div>

            <div id="profil_container" class="">
                <div class="row profile">
                    <div class="col-md-3">
                        <div class="profile-sidebar">
                            <!-- SIDEBAR USERPIC -->
                            <div class="profile-userpic">
                                <img src="/img/user.png" class="img-responsive" alt="" />
                            </div>
                            <!-- END SIDEBAR USERPIC -->
                            <!-- SIDEBAR USER TITLE -->
                            <div class="profile-usertitle">
                                <div class="profile-usertitle-name">
                                    Samuel
                                </div>
                                <div class="profile-usertitle-job">
                                    Mindmapper
                                </div>
                            </div>
                            <!-- END SIDEBAR USER TITLE -->
                            <!-- SIDEBAR MENU -->
                            <div class="profile-usermenu">
                                <ul class="nav" id="profile_menu">
                                    <li class="active">
                                        <a href="#">
                                            <i class="glyphicon glyphicon-home"></i> Übersicht </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="glyphicon glyphicon-user"></i> Profil anpassen </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="glyphicon glyphicon-ok"></i> Profil bearbeiten </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="glyphicon glyphicon-flag"></i> Freunde verwalten </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- END MENU -->
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="profile-content">
                            <div>

                            </div>
                            <div style="display:none">
                                <form>
                                    <label>Username</label>
                                    <br/>
                                    <input type="text" value="jsmith" class="input-xlarge" />
                                    <br/>
                                    <label>Passwort</label>
                                    <br/>
                                    <input type="text" value="****" class="input-xlarge" />
                                    <br/>
                                    <br/>
                                    <div>
                                        <button class="btn btn-primary">Update</button>
                                    </div>
                                </form>
                            </div>
                            <div style="display:none">
                                <form id="tab">
                                    <label>First Name</label>
                                    <br/>
                                    <input type="text" value="John" class="input-xlarge" />
                                    <br/>
                                    <label>Last Name</label>
                                    <br/>
                                    <input type="text" value="Smith" class="input-xlarge" />
                                    <br/>
                                    <label>Email</label>
                                    <br/>
                                    <input type="text" value="jsmith@yourcompany.com" class="input-xlarge" />
                                    <br/>
                                    <label>Address</label>
                                    <br/>
                                    <textarea value="Smith" rows="3" class="input-xlarge">
                                        2817 S 49th Apt 314 San Jose, CA 95101
                                    </textarea>
                                    <br/>
                                    <div>
                                        <button class="btn btn-primary">Update</button>
                                    </div>
                                </form>
                            </div>
                            <div class="friend_search" style="display:none">
                                <div class="friend_row">
                                    <h4>Freunde suchen und hinzufügen</h4>
                                    <div>Suche erfolgt dynamisch, Ergebnisse werden angezeigt und können manuell ausgewählt werden.</div>
                                    <div id="friend_search_input">
                                        <div class="input_group col-md-12">
                                            <input type="text" class="search-query form-control" placeholder="Suche nach Freunden" />
                                            <span class="input-group-btn">
                                        <span class="glyphicon glyphicon-search"></span>
                                            </span>
                                            <div class="friend_search_result">
                                                <div class="friend_search_item">
                                                    <img src="img/user.png" class="img-fsearch img-circle img-responsive" />
                                                    <span>Samuel</span>
                                                    <button type="button" class="btn-fsearch btn btn-default">
                                                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                                    </button>
                                                </div>
                                                <div class="f_clearfix"></div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="">
                                    <h4>Freunde löschen</h4>
                                    <div class="friend_search_result">
                                        <div class="friend_search_item">
                                            <img src="img/user.png" class="img-fsearch img-circle img-responsive" />
                                            <span>Samuel</span>
                                            <button type="button" class="btn-fsearch btn btn-default">
                                                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                            </button>
                                        </div>
                                        <div class="f_clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <input class="hidden" type="file" name="file" id="import-mindmap-file" />

            <script src="/js/mindcloud.js"></script>
            <script src="/js/notify.js"></script>
            <script src="/js/client.js"></script>
            <script src="/js/ui.js"></script>
            <script src="/js/mindmap.cache.js"></script>

            <script src="/js/modules.menu.js"></script>
            <script src="/js/modules.mindmap.js"></script>
            <script src="/js/modules.editor.js"></script>

            <script src="/js/runtime.js"></script>

        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>