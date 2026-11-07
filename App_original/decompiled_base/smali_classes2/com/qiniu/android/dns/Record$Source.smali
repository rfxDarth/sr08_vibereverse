.class public Lcom/qiniu/android/dns/Record$Source;
.super Ljava/lang/Object;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Source"
.end annotation


# static fields
.field public static final Custom:I = 0x1

.field public static final DnspodEnterprise:I = 0x2

.field public static final Doh:I = 0x5

.field public static final System:I = 0x3

.field public static final Udp:I = 0x4

.field public static final Unknown:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
