.class public Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;
.super Ljava/lang/Object;
.source "EcgRecord2.java"


# instance fields
.field public adddate:J

.field public dbp:I

.field public ecgScore:Ljava/lang/String;

.field public ecgdatacount:I

.field public ecgid:Ljava/lang/String;

.field public healthScore:I

.field public heartRate:I

.field public heartavg:I

.field public heartmax:I

.field public heartmin:I

.field public hrvScore:Ljava/lang/String;

.field public macid:Ljava/lang/String;

.field public memberid:Ljava/lang/String;

.field public p_beatStop:Ljava/lang/String;

.field public p_fastBeat:Ljava/lang/String;

.field public p_pvc:Ljava/lang/String;

.field public p_slowBeat:Ljava/lang/String;

.field public p_vesc:Ljava/lang/String;

.field public sbp:I

.field public sessionid:Ljava/lang/String;

.field public suggest:Ljava/lang/String;

.field public t_arrhythmia:I

.field public t_beatStop:I

.field public t_fastBeat:I

.field public t_pvc:I

.field public t_slowBeat:I

.field public t_vesc:I

.field public timestamp:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->memberid:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->macid:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->timestamp:J

    const/4 v3, 0x0

    .line 11
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->type:I

    .line 12
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->dbp:I

    .line 13
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->sbp:I

    .line 14
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->adddate:J

    .line 15
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgdatacount:I

    .line 16
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgid:Ljava/lang/String;

    .line 18
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    .line 19
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartRate:I

    .line 20
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgScore:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->hrvScore:Ljava/lang/String;

    .line 23
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartavg:I

    .line 24
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartmax:I

    .line 25
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartmin:I

    .line 27
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->sessionid:Ljava/lang/String;

    .line 28
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_arrhythmia:I

    .line 30
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_beatStop:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_fastBeat:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_pvc:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_slowBeat:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_vesc:Ljava/lang/String;

    .line 36
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_beatStop:I

    .line 37
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_fastBeat:I

    .line 38
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_pvc:I

    .line 39
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_slowBeat:I

    .line 40
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_vesc:I

    .line 42
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->suggest:Ljava/lang/String;

    return-void
.end method
