(setq foo '(1 2 3))
(setq bar '(a b c))

(append foo bar)

foo

bar


(setq foobar (nconc foo bar))

foobar

foo

bar
