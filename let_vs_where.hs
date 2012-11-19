whereBmi :: (RealFloat a) => [(a, a)] -> [a]  
whereBmi xs = [bmi w h | (w, h) <- xs]  
    where bmi weight height = weight / height ^ 2
--Where is syntactic sugar. It is visible across guards.

letBmi :: (RealFloat a) => [(a, a)] -> [a]  
letBmi xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]
-- Let is an expression. It is local. It can be used almost anywhere. But, since it is local, it cant be used across guards

let zoot x y z = x * y + z 
let zoot = 3 in (zoot+2) -- Local to in