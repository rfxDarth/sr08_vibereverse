.class public Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;
.super Ljava/lang/Object;
.source "EcgHistory.java"


# instance fields
.field public blood_high:Ljava/lang/String;

.field public blood_low:Ljava/lang/String;

.field public ecg:Ljava/lang/String;

.field public heart:Ljava/lang/String;

.field public macid:Ljava/lang/String;

.field public mid:Ljava/lang/String;

.field public timestamp:J

.field public timestamp_record:J

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->macid:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->mid:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->timestamp:J

    .line 7
    const-string v1, "+0000"

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->timezone:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->ecg:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->heart:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->blood_high:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->blood_low:Ljava/lang/String;

    return-void
.end method
