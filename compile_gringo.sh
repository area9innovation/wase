#!/bin/bash

gringo file=wise/wise.gringo compile=1 types=1 type-prefix=Wi master-type=WiseAst

gringo file=wase/wase.gringo compile=1 types=1 type-prefix=We master-type=WaseAst
