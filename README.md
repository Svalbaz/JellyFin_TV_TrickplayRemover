# JellyFin_TV_TrickplayRemover

# SvalbazNet: TV_TrickplayRemove.ps1

## Target
TV

## Description
This script scans all folders in `$rootTV` for any `.trickplay` folders and removes them. Trickplay folders are often created by media servers like JellyFin and can clutter your library.

## Purpose
The purpose of this script is to clean up and remove unnecessary Trickplay folders after you've cleaned and reorganised your library for better use with JellyFin. (Basically I buggered it up the first time and needed to REALLY go to town fixing the collection)

## Safe Mode
This script runs in "SAFE MODE" by default. It will display what it plans to delete (`Write-Host`) without actually removing anything. To apply the changes, remove the `-WhatIf` parameter.

## Usage
Run the script to scan for Trickplay folders. The script will display the folders that would be removed. Only after removing the `-WhatIf` flag will it actually remove the folders.
