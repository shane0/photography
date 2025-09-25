#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""photography"""

from cli import (
    BUJO_FOLDER,
    ISODATE,
    ISOFILE,
    # MONTH,
    # WEEK,
    MONTHFILE,
    DAYFILE,
    WEEKFILE,
    YEAR,
)
import click

# import subprocess
import os
import sys
import inspect

# import glob
# import datetime

# using inspect to import globals from parent dir module
current_dir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
parent_dir = os.path.dirname(current_dir)
sys.path.insert(0, parent_dir)


@click.group()
def cli(args=None):
    """\b
    photography
    """
    return 0


@cli.command()
def edit():
    """edit plugin"""
    click.edit(filename=inspect.getfile(inspect.currentframe()), editor="code")


@cli.command()
def i():
    """init repo"""
    cmds = [
        "git init",
        "git remote add origin git@github.com:shane0/photography.git",
        "git branch -M main",
        "git push -u origin main",
    ]
    for c in cmds:
        click.pause()
        os.system(c)


@cli.command()
def t():
    """edit theme"""
    cmd = "code /Users/shanenull/photography/venv/lib/python3.9/site-packages/sigal/"
    os.system(cmd)


@cli.command()
def f():
    """find fat files"""
    cmd = "find shane_null/ -type f -exec du -h {} + | sort -rh | head -n 5"
    os.system(cmd)


@cli.command()
def c():
    """clean ignore folder"""
    cmd = "rm -rf ignore/*"
    os.system(cmd)


@cli.command()
def b():
    """build serve"""
    click.launch("http://127.0.0.1:8000/")
    cmds = [
        "find . -name .DS_Store -delete",
        "rm -rf _build",
        "sigal build",
        "sigal serve",
    ]
    for c in cmds:
        os.system(c)


# TODO
# wipe empty dirs
# prompt string input output dirs move stuff string*.jpeg
# prompt choose a folder in shane_null
# recursively move photos to output folder
