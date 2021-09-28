Replace ISO Image file path with real one and you are good to go...

That is in the [ ./Hyper-V__CreateVM.ps1 ] file ...

    Set-VMDvdDrive -VMName DC -CommandontrollerNumber 1 -Path \"<-path to ISO->\" 

> **Replace This with real path >>>** [  <-path to ISO-> ]
