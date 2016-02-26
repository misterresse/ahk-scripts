; Copyright (c) 2016 the Institute of Power System Optimization, Guangxi University (the iPso)
; and original author(s). This file is licensed to you under the Apache License, Version 
; 2.0 (the"License"); you may not use this file except in compliance with the License. You 
; may obtain a copy of the License at
; 
;      http://www.apache.org/licenses/LICENSE-2.0
; 
; Unless required by applicable law or agreed to in writing, software distributed under the
; License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
; either express or implied. See the License for the specific language governing permissions
; and limitations under the License.

; Created by Beicun Li (John Resse) at 2015-10-21 21:12. Contact mister.resse@outlook.com.

; copy - long press RButton
; cut - short press Forward
; paste - short press Backward


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

XButton1::
    KeyWait XButton1, T0.5
    if ErrorLevel{
        Send {XButton1}
        return
    }
    Send {Control down}{v}{Control up}
return  

XButton2::
    KeyWait XButton2, T0.5
    if ErrorLevel{
        Send {XButton2}
        return
    }
    Send {Control down}{x}{Control up}
return   

RButton::
    KeyWait RButton, T0.5
    if ErrorLevel{
        Send {Control down}{c}{Control up}
        return
    }
    Send {RButton}
return   




 