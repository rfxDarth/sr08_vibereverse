.class public Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;
.super Ljava/lang/Object;
.source "EcgRecord.java"


# instance fields
.field public ecgPosition1:Ljava/lang/String;

.field public ecgPosition2:Ljava/lang/String;

.field public ecgPosition3:Ljava/lang/String;

.field public ecgPosition4:Ljava/lang/String;

.field public ecgPosition5:Ljava/lang/String;

.field public ecgScore:Ljava/lang/String;

.field public healthScore:I

.field public heartRate:I

.field public hrvScore:Ljava/lang/String;

.field public macid:Ljava/lang/String;

.field public mid:Ljava/lang/String;

.field public suggest:Ljava/lang/String;

.field public timestamp:J

.field public timezone:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->macid:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->mid:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->timestamp:J

    .line 11
    const-string v1, "+0000"

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->timezone:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->type:I

    .line 14
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->healthScore:I

    .line 15
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->heartRate:I

    .line 16
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgScore:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->hrvScore:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition1:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition2:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition3:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition4:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition5:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->suggest:Ljava/lang/String;

    return-void
.end method
