class Sphere implements SceneObject
{
    PVector center;
    float radius;
    Material material;
    
    Sphere(PVector center, float radius, Material material)
    {
       this.center = center;
       this.radius = radius;
       this.material = material;
    }
    
    ArrayList<RayHit> intersect(Ray r)
    {
        ArrayList<RayHit> result = new ArrayList<RayHit>();
        PVector d = r.direction;
        PVector o = r.origin;
        float tp = PVector.dot(PVector.sub(this.center, r.origin),d); // (c-o) * d
        PVector p = PVector.add(o, PVector.mult(d,tp));
        float x = PVector.sub(this.center, p).mag();
        
        //if x is greater than radius, no hit
        if(x > this.radius)
        {
          return result;
        }
        
        //if x isn't greater than radius...
        float t1 = tp - sqrt(pow(this.radius,2) - pow(x,2));
        float t2 = tp + sqrt(pow(this.radius,2) - pow(x,2));
        
        if(t1 < 0 && t2 < 0)
        {
          //behind camera, don't care
          return result;
        }
        
        else if(t1 < 0 || t2 < 0)
        {
          //return one hit value t2 is hit value, inside sphere
          //PVector location = PVector.add(o,PVector.mult());
        }
        
        else
        {
            //it's a hit
            //t1 is entry
            PVector entry = PVector.add(o,PVector.mult(d,t1));
            PVector exit = PVector.add(o,PVector.mult(d,t2));
            PVector entrynorm = PVector.sub(entry,this.center).normalize();
            PVector exitnorm = PVector.sub(exit,this.center).normalize();
            result.add(new RayHit(t1,entry,entrynorm,true,this.material,0,0));
            result.add(new RayHit(t2,exit,exitnorm,false,this.material,0,0));
        }
        
        
        // TODO: Step 2: implement ray-sphere intersections
        return result;
    }
}

class Plane implements SceneObject
{
    PVector center;
    PVector normal;
    float scale;
    Material material;
    PVector left;
    PVector up;
    
    Plane(PVector center, PVector normal, Material material, float scale)
    {
       this.center = center;
       this.normal = normal.normalize();
       this.material = material;
       this.scale = scale;
       
       // remove this line when you implement planes
       throw new NotImplementedException("Planes not implemented yet");
    }
    
    ArrayList<RayHit> intersect(Ray r)
    {
        ArrayList<RayHit> result = new ArrayList<RayHit>();
        return result;
    }
}

class Triangle implements SceneObject
{
    PVector v1;
    PVector v2;
    PVector v3;
    PVector normal;
    PVector tex1;
    PVector tex2;
    PVector tex3;
    Material material;
    
    Triangle(PVector v1, PVector v2, PVector v3, PVector tex1, PVector tex2, PVector tex3, Material material)
    {
       this.v1 = v1;
       this.v2 = v2;
       this.v3 = v3;
       this.tex1 = tex1;
       this.tex2 = tex2;
       this.tex3 = tex3;
       this.normal = PVector.sub(v2, v1).cross(PVector.sub(v3, v1)).normalize();
       this.material = material;
       
       // remove this line when you implement triangles
       throw new NotImplementedException("Triangles not implemented yet");
    }
    
    ArrayList<RayHit> intersect(Ray r)
    {
        ArrayList<RayHit> result = new ArrayList<RayHit>();
        return result;
    }
}

class Cylinder implements SceneObject
{
    float radius;
    float height;
    Material material;
    float scale;
    
    Cylinder(float radius, Material mat, float scale)
    {
       this.radius = radius;
       this.height = -1;
       this.material = mat;
       this.scale = scale;
       
       // remove this line when you implement cylinders
       throw new NotImplementedException("Cylinders not implemented yet");
    }
    
    Cylinder(float radius, float height, Material mat, float scale)
    {
       this.radius = radius;
       this.height = height;
       this.material = mat;
       this.scale = scale;
    }
    
    ArrayList<RayHit> intersect(Ray r)
    {
        ArrayList<RayHit> result = new ArrayList<RayHit>();
        return result;
    }
}

class Cone implements SceneObject
{
    Material material;
    float scale;
    
    Cone(Material mat, float scale)
    {
        this.material = mat;
        this.scale = scale;
        
        // remove this line when you implement cones
       throw new NotImplementedException("Cones not implemented yet");
    }
    
    ArrayList<RayHit> intersect(Ray r)
    {
        ArrayList<RayHit> result = new ArrayList<RayHit>();
        return result;
    }
   
}

class Paraboloid implements SceneObject
{
    Material material;
    float scale;
    
    Paraboloid(Material mat, float scale)
    {
        this.material = mat;
        this.scale = scale;
        
        // remove this line when you implement paraboloids
       throw new NotImplementedException("Paraboloid not implemented yet");
    }
    
    ArrayList<RayHit> intersect(Ray r)
    {
        ArrayList<RayHit> result = new ArrayList<RayHit>();
        return result;
    }
   
}

class HyperboloidOneSheet implements SceneObject
{
    Material material;
    float scale;
    
    HyperboloidOneSheet(Material mat, float scale)
    {
        this.material = mat;
        this.scale = scale;
        
        // remove this line when you implement one-sheet hyperboloids
        throw new NotImplementedException("Hyperboloids of one sheet not implemented yet");
    }
  
    ArrayList<RayHit> intersect(Ray r)
    {
        ArrayList<RayHit> result = new ArrayList<RayHit>();
        return result;
    }
}

class HyperboloidTwoSheet implements SceneObject
{
    Material material;
    float scale;
    
    HyperboloidTwoSheet(Material mat, float scale)
    {
        this.material = mat;
        this.scale = scale;
        
        // remove this line when you implement two-sheet hyperboloids
        throw new NotImplementedException("Hyperboloids of two sheets not implemented yet");
    }
    
    ArrayList<RayHit> intersect(Ray r)
    {
        ArrayList<RayHit> result = new ArrayList<RayHit>();
        return result;
    }
}