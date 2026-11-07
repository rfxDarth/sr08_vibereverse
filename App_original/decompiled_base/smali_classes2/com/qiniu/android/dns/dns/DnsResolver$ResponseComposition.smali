.class Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/dns/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseComposition"
.end annotation


# instance fields
.field completedCount:I

.field exception:Ljava/io/IOException;

.field response:Lcom/qiniu/android/dns/dns/DnsResponse;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;->completedCount:I

    return-void
.end method
