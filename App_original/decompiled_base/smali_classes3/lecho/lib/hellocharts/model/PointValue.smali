.class public Llecho/lib/hellocharts/model/PointValue;
.super Ljava/lang/Object;
.source "PointValue.java"


# instance fields
.field private color:I

.field private diffX:F

.field private diffY:F

.field private hasLine:Z

.field private label:[C

.field private originX:F

.field private originY:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PointValue;->hasLine:Z

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->color:I

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, v0}, Llecho/lib/hellocharts/model/PointValue;->set(FF)Llecho/lib/hellocharts/model/PointValue;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PointValue;->hasLine:Z

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->color:I

    .line 47
    invoke-virtual {p0, p1, p2}, Llecho/lib/hellocharts/model/PointValue;->set(FF)Llecho/lib/hellocharts/model/PointValue;

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/PointValue;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PointValue;->hasLine:Z

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->color:I

    .line 51
    iget v0, p1, Llecho/lib/hellocharts/model/PointValue;->x:F

    iget v1, p1, Llecho/lib/hellocharts/model/PointValue;->y:F

    invoke-virtual {p0, v0, v1}, Llecho/lib/hellocharts/model/PointValue;->set(FF)Llecho/lib/hellocharts/model/PointValue;

    .line 52
    iget-object p1, p1, Llecho/lib/hellocharts/model/PointValue;->label:[C

    iput-object p1, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    check-cast p1, Llecho/lib/hellocharts/model/PointValue;

    .line 124
    iget v2, p1, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 125
    :cond_2
    iget v2, p1, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 126
    :cond_3
    iget v2, p1, Llecho/lib/hellocharts/model/PointValue;->originX:F

    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 127
    :cond_4
    iget v2, p1, Llecho/lib/hellocharts/model/PointValue;->originY:F

    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 128
    :cond_5
    iget v2, p1, Llecho/lib/hellocharts/model/PointValue;->x:F

    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 129
    :cond_6
    iget v2, p1, Llecho/lib/hellocharts/model/PointValue;->y:F

    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 130
    :cond_7
    iget-object v2, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    iget-object p1, p1, Llecho/lib/hellocharts/model/PointValue;->label:[C

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public finish()V
    .locals 3

    .line 61
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    add-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    iget v2, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Llecho/lib/hellocharts/model/PointValue;->set(FF)Llecho/lib/hellocharts/model/PointValue;

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 25
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->color:I

    return v0
.end method

.method public getLabel()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    return-object v0
.end method

.method public getLabelAsChars()[C
    .locals 1

    .line 103
    iget-object v0, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 85
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 89
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 137
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_4

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget v3, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_5

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-object v2, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    if-eqz v2, :cond_6

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public isHasLine()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/PointValue;->hasLine:Z

    return v0
.end method

.method public set(FF)Llecho/lib/hellocharts/model/PointValue;
    .locals 0

    .line 65
    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    .line 66
    iput p2, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    .line 67
    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    .line 68
    iput p2, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    .line 70
    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    return-object p0
.end method

.method public setColor(I)Llecho/lib/hellocharts/model/PointValue;
    .locals 0

    .line 29
    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->color:I

    return-object p0
.end method

.method public setHasLine(Z)Llecho/lib/hellocharts/model/PointValue;
    .locals 0

    .line 38
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PointValue;->hasLine:Z

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/PointValue;
    .locals 0

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    return-object p0
.end method

.method public setLabel([C)Llecho/lib/hellocharts/model/PointValue;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    iput-object p1, p0, Llecho/lib/hellocharts/model/PointValue;->label:[C

    return-object p0
.end method

.method public setTarget(FF)Llecho/lib/hellocharts/model/PointValue;
    .locals 2

    .line 78
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    invoke-virtual {p0, v0, v1}, Llecho/lib/hellocharts/model/PointValue;->set(FF)Llecho/lib/hellocharts/model/PointValue;

    .line 79
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    sub-float/2addr p1, v0

    iput p1, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    .line 80
    iget p1, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    sub-float/2addr p2, p1

    iput p2, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointValue [x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 2

    .line 56
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originX:F

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->diffX:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->x:F

    .line 57
    iget v0, p0, Llecho/lib/hellocharts/model/PointValue;->originY:F

    iget v1, p0, Llecho/lib/hellocharts/model/PointValue;->diffY:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/PointValue;->y:F

    return-void
.end method
