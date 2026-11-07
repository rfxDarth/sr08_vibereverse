.class public Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;
.super Ljava/lang/Object;
.source "SoundPlayUtil.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SoundPlayUtil"

.field private static alMedie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static am:Landroid/content/res/AssetManager;

.field private static audioManager:Landroid/media/AudioManager;

.field private static bAdjust:Z

.field private static hmSound:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mSoundPlayer:Landroid/media/SoundPool;

.field private static mVibrator:Landroid/os/Vibrator;

.field private static mp:Landroid/media/MediaPlayer;

.field private static musicVolume:I

.field private static soundPlayUtils:Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mSoundPlayer:Landroid/media/SoundPool;

    .line 28
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->hmSound:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->alMedie:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->bAdjust:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAssetsMp3(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 7

    .line 149
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 151
    aget-object v2, v0, v1

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    const-string v4, "/"

    if-nez v2, :cond_2

    :try_start_1
    aget-object v2, v0, v1

    const-string v5, ".wav"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    aget-object v2, v0, v1

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 162
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->getAssetsMp3(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_1
    aget-object v2, v0, v1

    invoke-static {p0, v2}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->getAssetsMp3(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_2

    .line 152
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    aget-object v2, v0, v1

    .line 155
    :cond_3
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->alMedie:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 158
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mSoundPlayer:Landroid/media/SoundPool;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    .line 159
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mp3 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->hmSound:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;
    .locals 1

    .line 39
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->soundPlayUtils:Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->soundPlayUtils:Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;

    .line 42
    :cond_0
    sput-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mContext:Landroid/content/Context;

    .line 43
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->audioManager:Landroid/media/AudioManager;

    .line 45
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    sput-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mVibrator:Landroid/os/Vibrator;

    .line 48
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    sput-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->am:Landroid/content/res/AssetManager;

    .line 49
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil$1;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 55
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil$2;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 62
    const-string p0, ""

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->setPath(Ljava/lang/String;)V

    .line 63
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->soundPlayUtils:Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;

    return-object p0
.end method

.method public static playLong(Ljava/lang/String;)V
    .locals 6

    .line 75
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->alMedie:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 79
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 82
    :cond_1
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->am:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 83
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 84
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static playShort(Ljava/lang/String;F)V
    .locals 8

    .line 91
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->hmSound:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 95
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 97
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->hmSound:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-float v3, v0, p1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static playShortMax(Ljava/lang/String;F)V
    .locals 11

    const-string v0, "playShortMax getStreamVolume : "

    .line 104
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->hmSound:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->bAdjust:Z

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez v1, :cond_1

    .line 108
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->musicVolume:I

    .line 109
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->musicVolume:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sput-boolean v2, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->bAdjust:Z

    .line 112
    :cond_1
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 113
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 116
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->hmSound:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/high16 p0, 0x3f800000    # 1.0f

    mul-float v6, p1, p0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 118
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 119
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    .line 120
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mVibrator:Landroid/os/Vibrator;

    const/4 p1, 0x4

    new-array p1, p1, [J

    fill-array-data p1, :array_0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x64
        0xc8
    .end array-data
.end method

.method public static playSystem(I)V
    .locals 1

    .line 67
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    return-void
.end method

.method public static resetVolume()V
    .locals 4

    .line 129
    const-string v0, "playShortMax resetVolume : "

    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->musicVolume:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->audioManager:Landroid/media/AudioManager;

    sget v1, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->musicVolume:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v0, 0x0

    .line 131
    sput-boolean v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->bAdjust:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static setPath(Ljava/lang/String;)V
    .locals 1

    .line 143
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->alMedie:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->am:Landroid/content/res/AssetManager;

    invoke-static {v0, p0}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->getAssetsMp3(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void
.end method

.method public static stop()V
    .locals 1

    .line 138
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 139
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method
