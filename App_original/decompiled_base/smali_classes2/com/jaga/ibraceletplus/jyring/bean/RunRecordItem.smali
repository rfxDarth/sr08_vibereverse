.class public Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;
.super Ljava/lang/Object;
.source "RunRecordItem.java"


# instance fields
.field private addtimestamp:J

.field private finish:I

.field private hasheart:I

.field private hasstep:I

.field private heartrateavg:I

.field private heartratemax:I

.field private macid:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private pace:I

.field private runid:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private totalcalories:F

.field private totaldistance:F

.field private totalstep:I

.field private totaltime:I

.field private type:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->macid:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->mid:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->uid:Ljava/lang/String;

    .line 11
    const-string v1, "0"

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->runid:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->addtimestamp:J

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totalcalories:F

    .line 14
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totaldistance:F

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totalstep:I

    .line 16
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totaltime:I

    .line 17
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->pace:I

    .line 18
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->timezone:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->finish:I

    .line 20
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->type:I

    .line 21
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->heartrateavg:I

    .line 22
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->heartratemax:I

    .line 23
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->hasheart:I

    .line 24
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->hasstep:I

    return-void
.end method


# virtual methods
.method public getAddtimestamp()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->addtimestamp:J

    return-wide v0
.end method

.method public getFinish()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->finish:I

    return v0
.end method

.method public getHasheart()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->hasheart:I

    return v0
.end method

.method public getHasstep()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->hasstep:I

    return v0
.end method

.method public getHeartrateavg()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->heartrateavg:I

    return v0
.end method

.method public getHeartratemax()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->heartratemax:I

    return v0
.end method

.method public getMacid()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->macid:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getPace()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->pace:I

    return v0
.end method

.method public getRunid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->runid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalcalories()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totalcalories:F

    return v0
.end method

.method public getTotaldistance()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totaldistance:F

    return v0
.end method

.method public getTotalstep()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totalstep:I

    return v0
.end method

.method public getTotaltime()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totaltime:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAddtimestamp(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->addtimestamp:J

    return-void
.end method

.method public setFinish(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->finish:I

    return-void
.end method

.method public setHasheart(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->hasheart:I

    return-void
.end method

.method public setHasstep(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->hasstep:I

    return-void
.end method

.method public setHeartrateavg(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->heartrateavg:I

    return-void
.end method

.method public setHeartratemax(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->heartratemax:I

    return-void
.end method

.method public setMacid(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->macid:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->mid:Ljava/lang/String;

    return-void
.end method

.method public setPace(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->pace:I

    return-void
.end method

.method public setRunid(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->runid:Ljava/lang/String;

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->timezone:Ljava/lang/String;

    return-void
.end method

.method public setTotalcalories(F)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totalcalories:F

    return-void
.end method

.method public setTotaldistance(F)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totaldistance:F

    return-void
.end method

.method public setTotalstep(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totalstep:I

    return-void
.end method

.method public setTotaltime(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->totaltime:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->type:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->uid:Ljava/lang/String;

    return-void
.end method
