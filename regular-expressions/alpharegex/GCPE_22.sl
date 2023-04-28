;; GCPE_22: len > 2, not end 10

;; Positive-example wildcard character: 20 (only matched by `any`)
;; Negative-example wildcard character: 30 (matched by all character classes)
(declare-term-types
    ;; Nonterminals
    ((Start 0) (R 0))
    
    ;; Productions
    (
        (($eval R))
        (
            ($char_0)
            ($char_1)
            ($any)
            ($question R)
            ($or R R)
            ($concat R R)
            ($star R)
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ((t Start) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (s_3 Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (s_3 Int) (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool)) Bool)
    )
    
    (
        (! (match t (
            (($eval t1) 
                (exists
                    ( (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 1) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_1))
                )
                (exists
                    ( (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 2) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_2))
                )
                (exists
                    ( (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 3) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_3))
                )
                (exists
                    ( (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 4) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_4))
                )
            )
        )) :input (len s_0 s_1 s_2 s_3) :output (result))
        (! (match t (
            ($any (and  (= X_0_0 false) (= X_0_1 true) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 true) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 true) (= X_2_4 false) (= X_3_3 false) (= X_3_4 true) (= X_4_4 false)))
            ($char_0 (and  (= X_0_0 false) (= X_0_1 (or (= s_0 0) (= s_0 30))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (or (= s_1 0) (= s_1 30))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (or (= s_2 0) (= s_2 30))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (or (= s_3 0) (= s_3 30))) (= X_4_4 false)))
            ($char_1 (and  (= X_0_0 false) (= X_0_1 (or (= s_0 1) (= s_0 30))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (or (= s_1 1) (= s_1 30))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (or (= s_2 1) (= s_2 30))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (or (= s_3 1) (= s_3 30))) (= X_4_4 false)))
            (($or t1 t2)
                (exists
                    (
                         (A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool)
                         (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_4_4 Bool)
                    )
                    (and 
                        (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4)
                        (R.Sem t2 len s_0 s_1 s_2 s_3 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_1_1 B_1_2 B_1_3 B_1_4 B_2_2 B_2_3 B_2_4 B_3_3 B_3_4 B_4_4)
                        (and
                            (= X_0_0 (or A_0_0 B_0_0))
                            (= X_0_1 (or A_0_1 B_0_1))
                            (= X_0_2 (or A_0_2 B_0_2))
                            (= X_0_3 (or A_0_3 B_0_3))
                            (= X_0_4 (or A_0_4 B_0_4))
                            (= X_1_1 (or A_1_1 B_1_1))
                            (= X_1_2 (or A_1_2 B_1_2))
                            (= X_1_3 (or A_1_3 B_1_3))
                            (= X_1_4 (or A_1_4 B_1_4))
                            (= X_2_2 (or A_2_2 B_2_2))
                            (= X_2_3 (or A_2_3 B_2_3))
                            (= X_2_4 (or A_2_4 B_2_4))
                            (= X_3_3 (or A_3_3 B_3_3))
                            (= X_3_4 (or A_3_4 B_3_4))
                            (= X_4_4 (or A_4_4 B_4_4))
                        )
                    )
                )
            )
            (($concat t1 t2)
                (exists
                    (
                         (A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool)
                         (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_4_4 Bool)
                    )
                    (and 
                        (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4)
                        (R.Sem t2 len s_0 s_1 s_2 s_3 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_1_1 B_1_2 B_1_3 B_1_4 B_2_2 B_2_3 B_2_4 B_3_3 B_3_4 B_4_4)
                        (and
                            (= X_0_0 (and A_0_0 B_0_0))
                            (= X_0_1 (or (and A_0_0 B_0_1) (and A_0_1 B_1_1)))
                            (= X_0_2 (or (and A_0_0 B_0_2) (and A_0_1 B_1_2) (and A_0_2 B_2_2)))
                            (= X_0_3 (or (and A_0_0 B_0_3) (and A_0_1 B_1_3) (and A_0_2 B_2_3) (and A_0_3 B_3_3)))
                            (= X_0_4 (or (and A_0_0 B_0_4) (and A_0_1 B_1_4) (and A_0_2 B_2_4) (and A_0_3 B_3_4) (and A_0_4 B_4_4)))
                            (= X_1_1 (and A_1_1 B_1_1))
                            (= X_1_2 (or (and A_1_1 B_1_2) (and A_1_2 B_2_2)))
                            (= X_1_3 (or (and A_1_1 B_1_3) (and A_1_2 B_2_3) (and A_1_3 B_3_3)))
                            (= X_1_4 (or (and A_1_1 B_1_4) (and A_1_2 B_2_4) (and A_1_3 B_3_4) (and A_1_4 B_4_4)))
                            (= X_2_2 (and A_2_2 B_2_2))
                            (= X_2_3 (or (and A_2_2 B_2_3) (and A_2_3 B_3_3)))
                            (= X_2_4 (or (and A_2_2 B_2_4) (and A_2_3 B_3_4) (and A_2_4 B_4_4)))
                            (= X_3_3 (and A_3_3 B_3_3))
                            (= X_3_4 (or (and A_3_3 B_3_4) (and A_3_4 B_4_4)))
                            (= X_4_4 (and A_4_4 B_4_4))
                            
                        )
                    )
                )
            )
            (($question t1)
                (exists
                    (
                         (A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool)
                    )
                    (and 
                        (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4)
                        (and
                            (= X_0_0 true)
                            (= X_0_1 A_0_1)
                            (= X_0_2 A_0_2)
                            (= X_0_3 A_0_3)
                            (= X_0_4 A_0_4)
                            (= X_1_1 true)
                            (= X_1_2 A_1_2)
                            (= X_1_3 A_1_3)
                            (= X_1_4 A_1_4)
                            (= X_2_2 true)
                            (= X_2_3 A_2_3)
                            (= X_2_4 A_2_4)
                            (= X_3_3 true)
                            (= X_3_4 A_3_4)
                            (= X_4_4 true)
                        )
                    )
                )
            )
            (($star t1)
                (exists
                    (
                         (A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool)
                    )
                    (and 
                        (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4)
                        
                        (and
                        (= X_0_0 true)
                        (= X_0_1 A_0_1)
                        (= X_0_2 (or A_0_2 (and A_0_1 A_1_2)))
                        (= X_0_3 (or A_0_3 (and A_0_2 A_2_3) (and A_0_1 A_1_3) (and A_0_1 A_1_2 A_2_3)))
                        (= X_0_4 (or A_0_4 (and A_0_3 A_3_4) (and A_0_2 A_2_4) (and A_0_2 A_2_3 A_3_4) (and A_0_1 A_1_4) (and A_0_1 A_1_3 A_3_4) (and A_0_1 A_1_2 A_2_4) (and A_0_1 A_1_2 A_2_3 A_3_4)))
                        
                        (= X_1_1 true)
                        (= X_1_2 A_1_2)
                        (= X_1_3 (or A_1_3 (and A_1_2 A_2_3)))
                        (= X_1_4 (or A_1_4 (and A_1_3 A_3_4) (and A_1_2 A_2_4) (and A_1_2 A_2_3 A_3_4)))
                        
                        (= X_2_2 true)
                        (= X_2_3 A_2_3)
                        (= X_2_4 (or A_2_4 (and A_2_3 A_3_4)))
                        
                        (= X_3_3 true)
                        (= X_3_4 A_3_4)
                        
                        (= X_4_4 true)
                        
                        )
                    )
                )
            )
        )) :input (len s_0 s_1 s_2 s_3) :output ( X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4))
    )
)

(synth-fun match_regex() Start)

(constraint (Start.Sem match_regex 2 0 0 40 40 true))
(constraint (Start.Sem match_regex 2 0 1 40 40 true))
(constraint (Start.Sem match_regex 2 1 1 40 40 true))
(constraint (Start.Sem match_regex 3 20 0 0 40 true))
(constraint (Start.Sem match_regex 3 20 0 1 40 true))
(constraint (Start.Sem match_regex 3 20 1 1 40 true))
(constraint (Start.Sem match_regex 4 20 20 0 0 true))
(constraint (Start.Sem match_regex 4 20 20 0 1 true))
(constraint (Start.Sem match_regex 4 20 20 1 1 true))
(constraint (Start.Sem match_regex 1 30 40 40 40 false))
(constraint (Start.Sem match_regex 2 1 0 40 40 false))
(constraint (Start.Sem match_regex 3 30 1 0 40 false))
(constraint (Start.Sem match_regex 4 30 30 1 0 false))
(check-synth)
