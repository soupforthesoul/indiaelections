
$('#constituencies').html('<table>\n   \n  <tr>\n    <td class=\"pretty\">Bijapur<\/td>\n    \n<script type=\"text/javascript\">\n\nvar image;\n\n\n           \n           \n\n\n            var d = new Date();\n            var t = d.getTime();\n           \n            var link_mp_constituency;\n                            var link_mp_netaid;\n                \n//              $.ajax({\n//   data: \'id=\' + id,\n//   dataType: \'script\',\n//   type: \'post\',\n//   url: \"/constituencies/action\"\n// });\n\n\n\n    \n                   \n\n                      switch (\"BJP\")\n                            {\n                            case \"INC\":\n                              image=\'<img alt=\"Inc\" src=\"/assets/INC.png\" />\';\n                              break;\n                            case \"BJP\":\n                              image=\'<img alt=\"Bjp\" src=\"/assets/BJP.png\" />\';\n                              break;\n                            case \"BSP\":\n                              image=\'<img alt=\"Bsp\" src=\"/assets/BSP.gif\" />\';\n                              break;\n                            case \"SP\":\n                              image=\'<img alt=\"Sp\" src=\"/assets/SP.gif\" />\';\n                              break;\n                            case \"JD(U)\":\n                              image=\'<img alt=\"Jdu\" src=\"/assets/JDU.png\" />\';\n                              break;\n                            case \"JKN\":\n                              image=\'<img alt=\"Jkn\" src=\"/assets/JKN.png\" />\';\n                              break;\n                            case \"NCP\":\n                              image=\'<img alt=\"Ncp\" src=\"/assets/NCP.png\" />\';\n                              break;\n                            case \"RJD\":\n                              image=\'<img alt=\"Rjd\" src=\"/assets/RJD.png\" />\';\n                              break;\n                            case \"SDF\":\n                              image=\'<img alt=\"Sdf\" src=\"/assets/SDF.png\" />\';\n                              break;\n                            case \"AITC\":\n                              image=\'<img alt=\"Tmc\" src=\"/assets/TMC.png\" />\';\n                              break;\n                            case \"CPI\":\n                              image=\'<img alt=\"Cpi\" src=\"/assets/CPI.png\" />\';\n                              break;\n                            case \"CPM\":\n                              image=\'<img alt=\"Cpm\" src=\"/assets/CPM.gif\" />\';\n                              break;\n                            case \"SHS\":\n                              image=\'<img alt=\"Shs\" src=\"/assets/SHS.jpg\" />\';\n                              break;\n                            case \"SAD\":\n                              image=\'<img alt=\"Sad\" src=\"/assets/SAD.png\" />\';\n                              break;\n                            case \"DMK\":\n                              image=\'<img alt=\"Dmk\" src=\"/assets/DMK.jpg\" />\';\n                              break;\n                            case \"ADMK\":\n                              image=\'<img alt=\"Admk\" src=\"/assets/ADMK.png\" />\';\n                              break;\n                            case \"MDMK\":\n                              image=\'<img alt=\"Mdmk\" src=\"/assets/MDMK.png\" />\';\n                              break;\n                            case \"PMK\":\n                              image=\'<img alt=\"Pmk\" src=\"/assets/PMK.png\" />\';\n                              break;\n                            case \"TDP\":\n                              image=\'<img alt=\"Tdp\" src=\"/assets/TDP.png\" />\';\n                              break;\n                            case \"RLD\":\n                              image=\'<img alt=\"Rld\" src=\"/assets/RLD.png\" />\';\n                              break;\n                            case \"BJD\":\n                              image=\'<img alt=\"Bjd\" src=\"/assets/BJD.jpg\" />\';\n                              break;\n                            case \"JD(S)\":\n                              image=\'<img alt=\"Jds\" src=\"/assets/JDS.jpg\" />\';\n                              break;\n                            default:\n                              image=\"\";\n\n                            }\n                            \n                            \n                            \n                                  {\n                                    link_mp_constituency=\"170\";\n                                link_mp_netaid=\"631.0\";}\n     $.ajax({\n      url: \"/constituencies\",\n    type: \"POST\",\n    data: {html: image},\n\n    success: function(resp){ $(\'#Popup\').html(\"Constituency: Bijapur\" + \"<div> ID: \"+id_const+\"<\/div>\"+ \"<div>MP: Ramesh Chandappa Jigajinagi <\/div>\" + \"<div>Party: BJP \"+image+\"<\/div> \" + \"<img src=\'http://164.100.47.132/mpimage/photo/\"+link_mp_constituency+\".jpg\' class=\'MP_Portrait\'/>\"  + \"<a id=\'linktoparliament\' target=\'_blank\' href=\'http://164.100.47.132/LssNew/Members/Biography.aspx?mpsno=\"+link_mp_constituency+\"\' style= \'color:red \'>MP\'s Parliament Webpage<\/a>\").css({\n            // \'display\': \'block\',\n            // \'top\': e.pageY + moveDown,\n            // \'left\': e.pageX + moveLeft\n\n        }).stop().fadeIn(0);}\n\n    });\n\n // $.ajax({\n //      url: \"/constituencies\",\n //    type: \"POST\",\n //    data: {},\n //    success: function(resp){ $(\'#testing_div\').html(\"testing_div\").css({\n //            \'display\': \'block\',\n //            \'top\': e.pageY + moveDown,\n //            \'left\': e.pageX + moveLeft\n\n //        }).stop().fadeIn(0);}\n\n //    });\n\n     $(\".test\").remove();\n   \n                    \n                 \n                  \n\n                             $(\'<div class=\"test\" />\').html(\"<iframe id=\'Mynetaframe\' src=\'http://myneta.info/ls2009/candidate.php?candidate_id=\"+link_mp_netaid+\"#main\' height=\'1000\' width=\'600\'><\/iframe>\").dialog({ width: 600 }, { height: 1000 }, {position: [1000,0] });\n                            \n     <\/script>\n  <\/tr>\n<\/table>');