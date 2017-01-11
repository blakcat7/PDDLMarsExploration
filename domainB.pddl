(define (domain domain2)
    (:requirements
        :strips
    )
    
    (:predicates
        (can-move ?from-site ?to-site)
        (send-result ?comsat ?site)
        (recieve-result ?site-x ?test ?site)
        (send-message ?comsat ?rover)
        (recieve-message ?rover ?test)
        (relay-message ?rover ?comsat)
        (save ?rover ?test ?site)
        (got-result-at ?rover ?site)
        (is-facing-earth ?comsat)
        (is-facing-mars ?comsat)
        (is-mission-control ?site)
        (is-at ?test ?site)
        (at ?rover ?site)
        (test ?test)
        (rover ?rover)
        (comsat ?comsat)
        (site ?site)
    )
    (:action face-mars
        :parameters
            (?comsat ?rover ?site ?test)
        :precondition
        (and
            (comsat ?comsat)
            (rover ?rover)
            (site ?site)
            (test ?test)
        )
        
        :effect
        (and
            (is-facing-mars ?comsat)
            (send-message ?comsat ?rover)
            (recieve-message ?rover ?test)
            (not (is-facing-earth ?comsat))
        )
    )
    
    (:action face-earth
        :parameters
            (?comsat ?rover ?site ?test)
            
        :precondition
        (and
            (comsat ?comsat)
            (site ?site)
            (test ?test)
            (is-mission-control ?site)
            (relay-message ?rover ?comsat)
            
        )
        
        :effect
        (and
            (not (is-facing-mars ?comsat))
            (is-facing-earth ?comsat)
            (send-result ?comsat ?site)
        )
    )
    
    (:action perform-test
        :parameters
            (?rover ?comsat ?test ?site)
        :precondition
        (and
            (comsat ?comsat)
            (rover ?rover)
            (test ?test)
            (site ?site)
            (is-facing-mars ?comsat)
            (at ?rover ?site)
            (is-at ?test ?site)
        )
            
        :effect
        (and
            (got-result-at ?rover ?site)
            (save ?rover ?test ?site)
            (not (is-at ?test ?site))
            (relay-message ?rover ?comsat)
        )
            
    )
    
    (:action relay-result
        :parameters
            (?rover ?comsat ?test ?site ?site-x)
        
        :precondition
        (and
            (comsat ?comsat)
            (rover ?rover)
            (test ?test)
            (site ?site)
            (is-mission-control ?site-x)
            (is-facing-earth ?comsat)
            (got-result-at ?rover ?site)
            (relay-message ?rover ?comsat)
            (send-result ?comsat ?site-x)
        )
            
        :effect
        (and
            (recieve-result ?site-x ?test ?site)
        )
    )
    
    (:action can-move
        :parameters
            (?rover ?from-site ?to-site)
            
        :precondition
        (and
            (rover ?rover)
            (site ?from-site)
            (site ?to-site)
            (at ?rover ?from-site))
        
        :effect
        (and
            (at ?rover ?to-site)
            (not (at ?rover ?from-site)))
    )
)