(define (domain task2)
  (:requirements :adl :typing)
  (:types passenger - object
          floor - object
          elevator - object
         )

(:predicates 
(restriction ?elevator - elevator ?floor - floor)
;; entry of ?person is ?floor
;; inertia

(origin ?person - passenger ?floor - floor)
;; entry of ?person is ?floor
;; inertia

(destin ?person - passenger ?floor - floor)
;; exit of ?person is ?floor
;; inertia

(above ?floor1 - floor  ?floor2 - floor)
;; ?floor2 is located above of ?floor1

(boarded ?person - passenger ?elevator - elevator)
;; true if ?person has boarded the lift

(served ?person - passenger)
;; true if ?person has alighted as her destination

(lift-at ?elevator - elevator ?floor - floor)
;; current position of the lift is at ?floor

(person-at ?person - passenger ?floor - floor)
)


;;enter
(:action enter
  :parameters (?e - elevator ?f - floor ?p - passenger)
  :precondition (and (person-at ?p ?f)(and(lift-at ?e ?f)(restriction ?e ?f)))
  :effect 
          (when 
              (not (served ?p))
                        
            (and
              (boarded ?p ?e)
              (not(person-at ?p ?f))
            )
          )
)

;;leave
(:action leave
  :parameters (?e - elevator ?f - floor ?p - passenger)
  :precondition (and(and(lift-at ?e ?f)(restriction ?e ?f)))
  :effect(and 
          (when 
            
            (and 
              (boarded ?p ?e) 
              (not(destin ?p ?f))
            )
              
            (and 
              (not (boarded ?p ?e)) 
              (person-at ?p ?f)              
            )
          )
          
          (when
            (and
              (boarded ?p ?e) 
              (destin ?p ?f)
            )
            (served  ?p)
          )
  )
)

;;drive up

(:action up
  :parameters (?e - elevator ?f1 - floor ?f2 - floor)
  :precondition (and(and (lift-at ?e ?f1) (above ?f1 ?f2))(restriction ?e ?f2))
  :effect (and (lift-at ?e ?f2) (not (lift-at ?e ?f1))))


;;drive down

(:action down
  :parameters (?e - elevator ?f1 - floor ?f2 - floor)
  :precondition (and(and (lift-at ?e ?f1) (above ?f2 ?f1))(restriction ?e ?f1))
  :effect (and (lift-at ?e ?f2) (not (lift-at ?e ?f1))))
)



