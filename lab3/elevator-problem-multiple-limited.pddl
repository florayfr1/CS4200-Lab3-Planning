

;;3 elevators, 5 passengers, 8 floors
(define (problem mixed-f2-p1-u0-v0-g0-a0-n0-A0-B0-N0-F0-r0)
   (:domain task2)
   (:objects p0 p1 p2 p3 p4 - passenger
             e0 e1 e2 - elevator
             f0 f1 f2 f3 f4 f5 f6 f7 - floor)


(:init

;;e0 goes to even floors
(restriction e0 f0)
(restriction e0 f2)
(restriction e0 f4)
(restriction e0 f6)

;;e1 goes to odd floors
(restriction e1 f1)
(restriction e1 f3)
(restriction e1 f5)
(restriction e1 f7)

;;e2 goes to floors divisible by 3
(restriction e2 f0)
(restriction e2 f3)
(restriction e2 f6)

(above f0 f1)
(above f0 f2)
(above f0 f3)
(above f0 f4)
(above f0 f5)
(above f0 f6)
(above f0 f7)

(above f1 f2)
(above f1 f3)
(above f1 f4)
(above f1 f5)
(above f1 f6)
(above f1 f7)

(above f2 f3)
(above f2 f4)
(above f2 f5)
(above f2 f6)
(above f2 f7)

(above f3 f4)
(above f3 f5)
(above f3 f6)
(above f3 f7)

(above f4 f5)
(above f4 f6)
(above f4 f7)

(above f5 f6)
(above f5 f7)

(above f6 f7)


(origin p0 f2)
(destin p0 f7)

(origin p1 f6)
(destin p1 f0)

(origin p2 f3)
(destin p2 f7)

(origin p3 f7)
(destin p3 f6)

(origin p4 f4)
(destin p4 f1)


(lift-at e0 f0)
(lift-at e1 f3)
(lift-at e2 f7)

)


(:goal (forall (?p - passenger) (served ?p)))

)


