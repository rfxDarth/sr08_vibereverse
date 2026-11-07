.class public Lcom/qiniu/android/http/dns/DnsSource;
.super Ljava/lang/Object;
.source "DnsSource.java"


# static fields
.field public static final Custom:Ljava/lang/String; = "customized"

.field public static final Dnspod:Ljava/lang/String; = "dnspod"

.field public static final Doh:Ljava/lang/String; = "doh"

.field public static final None:Ljava/lang/String; = "none"

.field public static final System:Ljava/lang/String; = "system"

.field public static final Udp:Ljava/lang/String; = "dns"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCustom(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 88
    const-string v0, "customized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDnspod(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 68
    const-string v0, "dnspod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDoh(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 48
    const-string v0, "doh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSystem(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 78
    const-string/jumbo v0, "system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUdp(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 58
    const-string v0, "dns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
