ex=:x^3
@test simplify(ex,Pow)==Pow(:x,3)
ex=:x*3*:x*:x
@test simplify(ex,Pow)==Expression({3,Pow(:x,3)})
ex=:x*:y*3*:y*:x
@test simplify(ex,Pow)==Expression({3,Pow(Expression({:x,:y}),2)})
