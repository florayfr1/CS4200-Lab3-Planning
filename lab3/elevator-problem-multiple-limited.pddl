

;;3 elevators, 7 passengers, 13 floors
(define (problem mixed-f2-p1-u0-v0-g0-a0-n0-A0-B0-N0-F0-r0)
   (:domain task2)
   (:objects p0 p1 p2 p3 p4 p5 p6 - passenger
             e0 e1 e2 - elevator
             f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 - floor)


(:init

;;e0 goes to even floors
(restriction e0 f0)
(restriction e0 f2)
(restriction e0 f4)
(restriction e0 f6)
(restriction e0 f8)
(restriction e0 f10)
(restriction e0 f12)

;;e1 goes to odd floors
(restriction e1 f1)
(restriction e1 f3)
(restriction e1 f5)
(restriction e1 f7)
(restriction e1 f9)
(restriction e1 f11)

;;e2 goes to floors divisible by 3
(restriction e2 f0)
(restriction e2 f3)
(restriction e2 f6)
(restriction e2 f9)
(restriction e2 f12)

;; 13 floor
(above f0 f1)
(above f0 f2)
(above f0 f3)
(above f0 f4)
(above f0 f5)
(above f0 f6)
(above f0 f7)
(above f0 f8)
(above f0 f9)
(above f0 f10)
(above f0 f11)
(above f0 f12)

(above f1 f2)
(above f1 f3)
(above f1 f4)
(above f1 f5)
(above f1 f6)
(above f1 f7)
(above f1 f8)
(above f1 f9)
(above f1 f10)
(above f1 f11)
(above f1 f12)

(above f2 f3)
(above f2 f4)
(above f2 f5)
(above f2 f6)
(above f2 f7)
(above f2 f8)
(above f2 f9)
(above f2 f10)
(above f2 f11)
(above f2 f12)

(above f3 f4)
(above f3 f5)
(above f3 f6)
(above f3 f7)
(above f3 f8)
(above f3 f9)
(above f3 f10)
(above f3 f11)
(above f3 f12)

(above f4 f5)
(above f4 f6)
(above f4 f7)
(above f4 f8)
(above f4 f9)
(above f4 f10)
(above f4 f11)
(above f4 f12)

(above f5 f6)
(above f5 f7)
(above f5 f8)
(above f5 f9)
(above f5 f10)
(above f5 f11)
(above f5 f12)

(above f6 f7)
(above f6 f8)
(above f6 f9)
(above f6 f10)
(above f6 f11)
(above f6 f12)

(above f7 f8)
(above f7 f9)
(above f7 f10)
(above f7 f11)
(above f7 f12)

(above f8 f9)
(above f8 f10)
(above f8 f11)
(above f8 f12)

(above f9 f10)
(above f9 f11)
(above f9 f12)

(above f10 f11)
(above f10 f12)

(above f11 f12)


;;7 passengers
(origin p0 f8)
(destin p0 f5)
(person-at p0 f8)

(origin p1 f1)
(destin p1 f10)
(person-at p1 f1)

(origin p2 f9)
(destin p2 f6)
(person-at p2 f9)

(origin p3 f2)
(destin p3 f1)
(person-at p3 f2)

(origin p4 f8)
(destin p4 f10)
(person-at p4 f8)

(origin p5 f7)
(destin p5 f3)
(person-at p5 f7)

(origin p6 f4)
(destin p6 f11)
(person-at p6 f4)

(lift-at e0 f0)
(lift-at e1 f7)
(lift-at e2 f12)

)


(:goal (forall (?p - passenger) (served ?p)))

)


