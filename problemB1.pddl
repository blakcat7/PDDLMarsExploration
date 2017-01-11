(define (problem problemB1)
    (:domain domain2)
    
    (:objects
        rover1
        
        comsat
        
        site1 site2 mission-control
        
        soil-composition no-result
    )
    
    (:init
        (rover rover1)
        
        (comsat comsat)
        
        (test soil-composition) (test no-result)
        
        (site site1) (site site2) (site mission-control)
        
        (is-facing-earth comsat)
        
        (can-move site1 site2) (can-move site2 site1)

        (send-result comsat mission-control)
        
        (send-message comsat rover1)
        
        (recieve-message rover1 soil-composition)
        
        (relay-message rover1 comsat)
        
        (is-mission-control mission-control)
        
        (save rover1 no-result site1)
        
        (is-at soil-composition site2)
        
        (at rover1 site1)
    ) 
    
    (:goal
        (and
            (recieve-result mission-control soil-composition site2)
        )
    )
)