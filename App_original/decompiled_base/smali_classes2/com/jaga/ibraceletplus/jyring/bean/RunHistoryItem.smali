.class public Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;
.super Ljava/lang/Object;
.source "RunHistoryItem.java"


# instance fields
.field private addtimestamp:J

.field private altitude:D

.field private direction:F

.field private heartrate:I

.field private latitude:D

.field private locType:I

.field private longitude:D

.field private radius:F

.field private runid:Ljava/lang/String;

.field private satellite:I

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->runid:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->addtimestamp:J

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->locType:I

    .line 11
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->satellite:I

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->latitude:D

    .line 13
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->longitude:D

    .line 14
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->altitude:D

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->direction:F

    .line 16
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->radius:F

    .line 17
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->speed:F

    .line 18
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->heartrate:I

    return-void
.end method


# virtual methods
.method public getAddtimestamp()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->addtimestamp:J

    return-wide v0
.end method

.method public getAltitude()D
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->altitude:D

    return-wide v0
.end method

.method public getDirection()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->direction:F

    return v0
.end method

.method public getHeartrate()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->heartrate:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->latitude:D

    return-wide v0
.end method

.method public getLocType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->locType:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->longitude:D

    return-wide v0
.end method

.method public getRadius()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->radius:F

    return v0
.end method

.method public getRunid()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->runid:Ljava/lang/String;

    return-object v0
.end method

.method public getSatellite()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->satellite:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->speed:F

    return v0
.end method

.method public setAddtimestamp(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->addtimestamp:J

    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->altitude:D

    return-void
.end method

.method public setDirection(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->direction:F

    return-void
.end method

.method public setHeartrate(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->heartrate:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->latitude:D

    return-void
.end method

.method public setLocType(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->locType:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->longitude:D

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->radius:F

    return-void
.end method

.method public setRunid(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->runid:Ljava/lang/String;

    return-void
.end method

.method public setSatellite(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->satellite:I

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->speed:F

    return-void
.end method
