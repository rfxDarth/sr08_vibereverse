.class public Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;
.super Ljava/lang/Object;
.source "BodyInfoItem.java"


# instance fields
.field private addDate:Ljava/lang/String;

.field private isUpload:I

.field private macid:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private timestamp:J

.field private type:I

.field private value1:F

.field private value2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddDate()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->addDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUpload()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->isUpload:I

    return v0
.end method

.method public getMacid()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->macid:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->type:I

    return v0
.end method

.method public getValue1()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->value1:F

    return v0
.end method

.method public getValue2()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->value2:F

    return v0
.end method

.method public setAddDate(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->addDate:Ljava/lang/String;

    return-void
.end method

.method public setIsUpload(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->isUpload:I

    return-void
.end method

.method public setMacid(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->macid:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->mid:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->timestamp:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->type:I

    return-void
.end method

.method public setValue1(F)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->value1:F

    return-void
.end method

.method public setValue2(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->value2:F

    return-void
.end method
