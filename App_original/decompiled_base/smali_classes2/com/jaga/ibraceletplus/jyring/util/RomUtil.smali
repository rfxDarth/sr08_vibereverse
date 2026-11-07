.class public Lcom/jaga/ibraceletplus/jyring/util/RomUtil;
.super Ljava/lang/Object;
.source "RomUtil.java"


# instance fields
.field private HARMONY_OS:Ljava/lang/String;

.field private KEY_VERSION_EMUI:Ljava/lang/String;

.field private KEY_VERSION_MIUI:Ljava/lang/String;

.field private KEY_VERSION_OPPO:Ljava/lang/String;

.field private KEY_VERSION_SMARTISAN:Ljava/lang/String;

.field private KEY_VERSION_VIVO:Ljava/lang/String;

.field private ROM_EMUI:Ljava/lang/String;

.field private ROM_FLYME:Ljava/lang/String;

.field private ROM_MIUI:Ljava/lang/String;

.field private ROM_OPPO:Ljava/lang/String;

.field private ROM_QIKU:Ljava/lang/String;

.field private ROM_SMARTISAN:Ljava/lang/String;

.field private ROM_VIVO:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private sName:Ljava/lang/String;

.field private sVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "RomUtil"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->TAG:Ljava/lang/String;

    .line 15
    const-string v0, "harmony"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->HARMONY_OS:Ljava/lang/String;

    .line 17
    const-string v0, "MIUI"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_MIUI:Ljava/lang/String;

    .line 18
    const-string v0, "EMUI"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_EMUI:Ljava/lang/String;

    .line 19
    const-string v0, "FLYME"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_FLYME:Ljava/lang/String;

    .line 20
    const-string v0, "OPPO"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_OPPO:Ljava/lang/String;

    .line 21
    const-string v0, "SMARTISAN"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_SMARTISAN:Ljava/lang/String;

    .line 22
    const-string v0, "VIVO"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_VIVO:Ljava/lang/String;

    .line 23
    const-string v0, "QIKU"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_QIKU:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "ro.miui.ui.version.name"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_MIUI:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "ro.build.version.emui"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_EMUI:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "ro.build.version.opporom"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_OPPO:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "ro.smartisan.version"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_SMARTISAN:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "ro.vivo.os.version"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_VIVO:Ljava/lang/String;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sVersion:Ljava/lang/String;

    return-void
.end method

.method private check(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_MIUI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_MIUI:Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_MIUI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sVersion:Ljava/lang/String;

    goto/16 :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_EMUI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_EMUI:Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_EMUI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sVersion:Ljava/lang/String;

    goto/16 :goto_1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_OPPO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_OPPO:Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_OPPO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sVersion:Ljava/lang/String;

    goto :goto_1

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_VIVO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_VIVO:Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_VIVO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sVersion:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_SMARTISAN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 124
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_SMARTISAN:Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->KEY_VERSION_SMARTISAN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sVersion:Ljava/lang/String;

    goto :goto_1

    .line 127
    :cond_6
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sVersion:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_FLYME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_FLYME:Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    goto :goto_1

    .line 131
    :cond_7
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sVersion:Ljava/lang/String;

    .line 132
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->sName:Ljava/lang/String;

    if-ne v0, p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 140
    const-string p1, "BufferedReader.close()"

    const/4 v0, 0x0

    .line 142
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop $name"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 154
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    .line 147
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->TAG:Ljava/lang/String;

    const-string v4, "Unable to read prop $name"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 152
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    .line 154
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 152
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    .line 154
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :cond_1
    :goto_3
    throw v0
.end method


# virtual methods
.method isEmui()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_EMUI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->check(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isFlyme()Ljava/lang/Boolean;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_FLYME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->check(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isLetv()Ljava/lang/Boolean;
    .locals 2

    .line 68
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "letv"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isMiui()Ljava/lang/Boolean;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_MIUI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->check(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isOppo()Ljava/lang/Boolean;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_OPPO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->check(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isQiku()Ljava/lang/Boolean;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_QIKU:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->check(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "360"

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->check(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isSamsung()Ljava/lang/Boolean;
    .locals 2

    .line 73
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "samsung"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isSmartisan()Ljava/lang/Boolean;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_SMARTISAN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->check(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method isVivo()Ljava/lang/Boolean;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->ROM_VIVO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/RomUtil;->check(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method onePlus()Ljava/lang/Boolean;
    .locals 2

    .line 78
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
