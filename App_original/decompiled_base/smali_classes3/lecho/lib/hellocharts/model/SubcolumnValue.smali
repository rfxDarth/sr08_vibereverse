.class public Llecho/lib/hellocharts/model/SubcolumnValue;
.super Ljava/lang/Object;
.source "SubcolumnValue.java"


# instance fields
.field private arrow:Z

.field private color:I

.field private darkenColor:I

.field private diff:F

.field private label:[C

.field public labelTop:Z

.field private originValue:F

.field private round:Z

.field private touchWidth:I

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->touchWidth:I

    .line 26
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->labelTop:Z

    .line 37
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->round:Z

    .line 48
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->arrow:Z

    .line 62
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    .line 63
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SubcolumnValue;->setValue(F)Llecho/lib/hellocharts/model/SubcolumnValue;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->touchWidth:I

    .line 26
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->labelTop:Z

    .line 37
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->round:Z

    .line 48
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->arrow:Z

    .line 62
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    .line 63
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    .line 72
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->setValue(F)Llecho/lib/hellocharts/model/SubcolumnValue;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->touchWidth:I

    .line 26
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->labelTop:Z

    .line 37
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->round:Z

    .line 48
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->arrow:Z

    .line 62
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    .line 63
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    .line 77
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->setValue(F)Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 78
    invoke-virtual {p0, p2}, Llecho/lib/hellocharts/model/SubcolumnValue;->setColor(I)Llecho/lib/hellocharts/model/SubcolumnValue;

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/SubcolumnValue;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->touchWidth:I

    .line 26
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->labelTop:Z

    .line 37
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->round:Z

    .line 48
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->arrow:Z

    .line 62
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    .line 63
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    .line 82
    iget v0, p1, Llecho/lib/hellocharts/model/SubcolumnValue;->value:F

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SubcolumnValue;->setValue(F)Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 83
    iget v0, p1, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SubcolumnValue;->setColor(I)Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 84
    iget-object p1, p1, Llecho/lib/hellocharts/model/SubcolumnValue;->label:[C

    iput-object p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->label:[C

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

    if-eqz p1, :cond_8

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    check-cast p1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 169
    iget v2, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    iget v3, p1, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    if-eq v2, v3, :cond_2

    return v1

    .line 170
    :cond_2
    iget v2, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    iget v3, p1, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    if-eq v2, v3, :cond_3

    return v1

    .line 171
    :cond_3
    iget v2, p1, Llecho/lib/hellocharts/model/SubcolumnValue;->diff:F

    iget v3, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->diff:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 172
    :cond_4
    iget v2, p1, Llecho/lib/hellocharts/model/SubcolumnValue;->originValue:F

    iget v3, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->originValue:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 173
    :cond_5
    iget v2, p1, Llecho/lib/hellocharts/model/SubcolumnValue;->value:F

    iget v3, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->value:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 174
    :cond_6
    iget-object v2, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->label:[C

    iget-object p1, p1, Llecho/lib/hellocharts/model/SubcolumnValue;->label:[C

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public finish()V
    .locals 2

    .line 92
    iget v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->originValue:F

    iget v1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->diff:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SubcolumnValue;->setValue(F)Llecho/lib/hellocharts/model/SubcolumnValue;

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 119
    iget v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    return v0
.end method

.method public getDarkenColor()I
    .locals 1

    .line 134
    iget v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    return v0
.end method

.method public getLabel()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iget-object v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->label:[C

    return-object v0
.end method

.method public getLabelAsChars()[C
    .locals 1

    .line 148
    iget-object v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->label:[C

    return-object v0
.end method

.method public getTouchWidth()I
    .locals 1

    .line 18
    iget v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->touchWidth:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 96
    iget v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 181
    iget v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->value:F

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

    .line 182
    iget v3, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->originValue:F

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

    .line 183
    iget v3, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->diff:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 184
    iget v2, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget v2, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 186
    iget-object v2, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->label:[C

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public isArrow()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->arrow:Z

    return v0
.end method

.method public isLabelTop()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->labelTop:Z

    return v0
.end method

.method public isRound()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->round:Z

    return v0
.end method

.method public setArrow(Z)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 0

    .line 55
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->arrow:Z

    return-object p0
.end method

.method public setColor(I)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 0

    .line 123
    iput p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->color:I

    .line 124
    invoke-static {p1}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    return-object p0
.end method

.method public setDarkenColor(I)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 0

    .line 129
    iput p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->darkenColor:I

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 0

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->label:[C

    return-object p0
.end method

.method public setLabel([C)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    iput-object p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->label:[C

    return-object p0
.end method

.method public setLabelTop(Z)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 0

    .line 33
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->labelTop:Z

    return-object p0
.end method

.method public setRound(Z)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 0

    .line 44
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->round:Z

    return-object p0
.end method

.method public setTarget(F)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 1

    .line 113
    iget v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->value:F

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SubcolumnValue;->setValue(F)Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 114
    iget v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->originValue:F

    sub-float/2addr p1, v0

    iput p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->diff:F

    return-object p0
.end method

.method public setTouchWidth(I)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 0

    .line 22
    iput p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->touchWidth:I

    return-object p0
.end method

.method public setValue(F)Llecho/lib/hellocharts/model/SubcolumnValue;
    .locals 0

    .line 100
    iput p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->value:F

    .line 101
    iput p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->originValue:F

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->diff:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnValue [value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 2

    .line 88
    iget v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->originValue:F

    iget v1, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->diff:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/SubcolumnValue;->value:F

    return-void
.end method
