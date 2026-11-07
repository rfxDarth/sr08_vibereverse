.class public Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;
.super Ljava/lang/Object;
.source "EcgHistory2.java"


# instance fields
.field public baseFilterData:D

.field public dataind:I

.field public ecgid:Ljava/lang/String;

.field public heart:I

.field public issync:I

.field public originSample:I

.field public procSample:I

.field public sessionid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->sessionid:Ljava/lang/String;

    return-void
.end method
