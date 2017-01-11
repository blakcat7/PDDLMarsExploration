(define (problem problemB3)
    (:domain domain2)
    
    (:objects
        rover1 rover2
        
        comsat
        
        site1 site2 site3 site4 site5 mission-control
        
        soil-composition no-result
    )
    
    (:init
        (comsat comsat)
        
        (rover rover1) (rover rover2)
        
        (test soil-composition) (test no-result)
        
        (site site1) (site site2) 
        (site site3) (site site4) 
        (site site5) (site mission-control)
        
        (is-facing-earth comsat)
        
        (can-move site1 site2) (can-move site2 site3) 
        (can-move site3 site4) (can-move site4 site5) 
        (can-move site5 site1)
        
        (send-result comsat mission-control)
        
        (send-message comsat rover1) (send-message comsat rover2)
        
        (recieve-message rover1 soil-composition) (recieve-message rover2 soil-composition)
        
        (relay-message rover1 comsat)   (relay-message rover2 comsat)
        
        (is-mission-control mission-control)
        
        (save rover1 no-result site1) (save rover2 no-result site2)
        
        (is-at soil-composition site1) (is-at soil-composition site2) (is-at soil-composition site3) 
        (is-at soil-composition site4) (is-at soil-composition site5)
        
        (at rover1 site1) (at rover2 site2)
    ) 
    
    (:goal
        (and
            (is-facing-earth comsat)
            (recieve-result mission-control soil-composition site1)
            (recieve-result mission-control soil-composition site2)
            (recieve-result mission-control soil-composition site3)
            (recieve-result mission-control soil-composition site4)
            (save rover2 soil-composition site5)
        )
    )
)