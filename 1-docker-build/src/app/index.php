<!DOCTYPE html>
<html>
        <head>
                <meta charset="utf-8" />
                <title>SYSAD-Lecture</title>
                <meta name="robots" content="noindex,follow" />
                <link rel="stylesheet" href="errorstyle.css" />
                <style>
                        body {
                                width: 500px;
                                height: 150px;
                                position: absolute;
                                top: 50%;
                                left: 50%;
                                margin-top: -75px;
                                margin-left: -250px;
                                padding-top: 0;
                        }
                </style>
                <script>
                        var hy = 0;
                        var direction = 1; // 1 = rechts, 2 = links
                        var al_max = 10;
                        var al_step = 0.1;
                        var upd_func = function() {
                                if(direction == 1)
                                {
                                        hy += al_step;
                                        if(hy >= al_max)
                                                direction = 2;
                                } else {
                                        hy -= al_step;
                                        if(hy <= -al_max)
                                                direction = 1;
                                }
                                document.body.style.transform = "rotate(" + hy + "deg)";
                                window.setTimeout(upd_func, 1);
                                al_step = Math.abs(1 - (Math.abs(hy)/10)) + 0.1;
                        };
                        window.onload = function() { window.setTimeout(upd_func, 1); };
                </script>
        </head>
        <body>
                <h2>Glückwunsch! Docker-Build-Übung erfolgreich abgeschlossen</h2>
                <img src="thumbsup.jpg" width="400px" alt="" />
        </body>
</html>