.class public Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;
.super Ljava/lang/Object;
.source "EcgSession2.java"


# instance fields
.field public count:I

.field public endtime:J

.field public fasttimes:I

.field public issync:I

.field public macid:Ljava/lang/String;

.field public memberid:Ljava/lang/String;

.field public pvctimes:I

.field public sessionid:Ljava/lang/String;

.field public slowtimes:I

.field public starttime:J

.field public stoptimes:I

.field public type:I

.field public vesstimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->sessionid:Ljava/lang/String;

    return-void
.end method
