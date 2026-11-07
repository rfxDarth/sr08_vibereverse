.class public Lcom/jaga/ibraceletplus/jyring/util/SafeStorageUtil;
.super Ljava/lang/Object;
.source "SafeStorageUtil.java"


# static fields
.field private static sSafePictureDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPictureCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 13
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SafeStorageUtil;->sSafePictureDir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 15
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/SafeStorageUtil;->sSafePictureDir:Ljava/io/File;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "Pictures"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/SafeStorageUtil;->sSafePictureDir:Ljava/io/File;

    .line 22
    :goto_0
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SafeStorageUtil;->sSafePictureDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 24
    :cond_1
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SafeStorageUtil;->sSafePictureDir:Ljava/io/File;

    return-object p0
.end method
