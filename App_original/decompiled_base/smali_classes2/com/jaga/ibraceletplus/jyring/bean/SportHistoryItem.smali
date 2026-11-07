.class public Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;
.super Ljava/lang/Object;
.source "SportHistoryItem.java"


# instance fields
.field private calorie:I

.field private date:Ljava/lang/String;

.field private distance:I

.field private heartrate:I

.field private id:I

.field private macid:Ljava/lang/String;

.field private step:I

.field private sync:I

.field private syncGoogleFit:I

.field private syncGoogleFitId:Ljava/lang/String;

.field private timestamp:J

.field private timezone:Ljava/lang/String;

.field private type:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->timestamp:J

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->timezone:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->type:I

    .line 7
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->sync:I

    .line 8
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->syncGoogleFit:I

    .line 9
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->step:I

    .line 10
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->distance:I

    .line 11
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->calorie:I

    .line 12
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->heartrate:I

    .line 13
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->uid:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->date:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->macid:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->id:I

    .line 17
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->syncGoogleFitId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCalorie()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->calorie:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->distance:I

    return v0
.end method

.method public getHeartrate()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->heartrate:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->id:I

    return v0
.end method

.method public getMacid()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->macid:Ljava/lang/String;

    return-object v0
.end method

.method public getStep()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->step:I

    return v0
.end method

.method public getSync()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->sync:I

    return v0
.end method

.method public getSyncGoogleFit()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->syncGoogleFit:I

    return v0
.end method

.method public getSyncGoogleFitId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->syncGoogleFitId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->timestamp:J

    return-wide v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCalorie(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->calorie:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->date:Ljava/lang/String;

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->distance:I

    return-void
.end method

.method public setHeartrate(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->heartrate:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->id:I

    return-void
.end method

.method public setMacid(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->macid:Ljava/lang/String;

    return-void
.end method

.method public setStep(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->step:I

    return-void
.end method

.method public setSync(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->sync:I

    return-void
.end method

.method public setSyncGoogleFit(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->syncGoogleFit:I

    return-void
.end method

.method public setSyncGoogleFitId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->syncGoogleFitId:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->timestamp:J

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->timezone:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->type:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->uid:Ljava/lang/String;

    return-void
.end method
