#!/bin/bash -x
clear()
{
  clear
}

degF()
  {
    degF1=$( echo ((degC * 9/5) + 32))
   echo $degF

  }

degC()
  {
    degC1=$( echo ((degF - 32) * 5/9))
   echo $degC

  }
