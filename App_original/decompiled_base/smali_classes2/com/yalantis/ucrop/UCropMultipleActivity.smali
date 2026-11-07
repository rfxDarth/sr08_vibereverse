.class public Lcom/yalantis/ucrop/UCropMultipleActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UCropMultipleActivity.java"

# interfaces
.implements Lcom/yalantis/ucrop/UCropFragmentCallback;


# instance fields
.field private aspectRatioList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yalantis/ucrop/model/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field private currentFragmentPosition:I

.field private final filterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yalantis/ucrop/UCropFragment;",
            ">;"
        }
    .end annotation
.end field

.field private galleryAdapter:Lcom/yalantis/ucrop/UCropGalleryAdapter;

.field private isForbidCropGifWebp:Z

.field private isSkipCropForbid:Z

.field private mShowLoader:Z

.field private mStatusBarColor:I

.field private mToolbarCancelDrawable:I

.field private mToolbarColor:I

.field private mToolbarCropDrawable:I

.field private mToolbarTitle:Ljava/lang/String;

.field private mToolbarTitleSize:I

.field private mToolbarWidgetColor:I

.field private outputCropFileName:Ljava/lang/String;

.field private uCropCurrentFragment:Lcom/yalantis/ucrop/UCropFragment;

.field private uCropNotSupportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uCropSupportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uCropTotalQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->fragments:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropTotalQueue:Ljava/util/LinkedHashMap;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->filterSet:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/yalantis/ucrop/UCropMultipleActivity;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->isSkipCropForbid:Z

    return p0
.end method

.method static synthetic access$100(Lcom/yalantis/ucrop/UCropMultipleActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yalantis/ucrop/UCropMultipleActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getPathToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/yalantis/ucrop/UCropMultipleActivity;)Ljava/util/HashSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->filterSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yalantis/ucrop/UCropMultipleActivity;)Lcom/yalantis/ucrop/UCropGalleryAdapter;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->galleryAdapter:Lcom/yalantis/ucrop/UCropGalleryAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yalantis/ucrop/UCropMultipleActivity;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->fragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yalantis/ucrop/UCropMultipleActivity;Lcom/yalantis/ucrop/UCropFragment;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/yalantis/ucrop/UCropMultipleActivity;->switchCropFragment(Lcom/yalantis/ucrop/UCropFragment;I)V

    return-void
.end method

.method private getCropSupportPosition()I
    .locals 6

    .line 163
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    const-string v2, "com.yalantis.ucrop.SkipCropMimeType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 171
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 172
    :goto_0
    iget-object v4, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 173
    iget-object v4, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 174
    invoke-direct {p0, v4}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getPathToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 176
    iget-object v5, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v3, v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v3, v0, :cond_3

    goto :goto_2

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v1
.end method

.method private getPathToMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 195
    invoke-static {p1}, Lcom/yalantis/ucrop/util/FileUtils;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yalantis/ucrop/util/FileUtils;->getMimeTypeFromMediaContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yalantis/ucrop/util/FileUtils;->getMimeTypeFromMediaContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSandboxPathDir()Ljava/lang/String;
    .locals 3

    .line 275
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.yalantis.ucrop.CropOutputDir"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Sandbox"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCropError(Landroid/content/Intent;)V
    .locals 1

    .line 436
    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 440
    :cond_0
    const-string p1, "Unexpected error"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private immersive()V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    const-string v1, "com.yalantis.ucrop.isDarkStatusBarBlack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    sget v2, Lcom/yalantis/ucrop/R$color;->ucrop_color_statusbar:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const-string v3, "com.yalantis.ucrop.StatusBarColor"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mStatusBarColor:I

    .line 104
    invoke-static {p0, v0, v0, v1}, Lcom/yalantis/ucrop/statusbar/ImmersiveManager;->immersiveAboveAPI23(Landroidx/appcompat/app/AppCompatActivity;IIZ)V

    return-void
.end method

.method private initCropFragments(Landroid/content/Intent;)V
    .locals 8

    .line 108
    const-string v0, "com.yalantis.ucrop.ForbidSkipCrop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->isSkipCropForbid:Z

    .line 109
    const-string v0, "com.yalantis.ucrop.CropTotalDataSource"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_b

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropNotSupportList:Ljava/util/ArrayList;

    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropTotalQueue:Ljava/util/LinkedHashMap;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v2}, Lcom/yalantis/ucrop/util/FileUtils;->isContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yalantis/ucrop/util/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    .line 119
    :goto_1
    invoke-direct {p0, v2}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getPathToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v3}, Lcom/yalantis/ucrop/util/FileUtils;->isUrlHasVideo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v4}, Lcom/yalantis/ucrop/util/FileUtils;->isHasVideo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v4}, Lcom/yalantis/ucrop/util/FileUtils;->isHasAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_6

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_7

    .line 129
    :cond_2
    invoke-static {v2}, Lcom/yalantis/ucrop/util/FileUtils;->isContent(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Lcom/yalantis/ucrop/util/FileUtils;->isHasHttp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 130
    :goto_3
    iget-boolean v4, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->isForbidCropGifWebp:Z

    invoke-static {p0, v4, v2}, Lcom/yalantis/ucrop/util/FileUtils;->getPostfixDefaultJPEG(Landroid/content/Context;ZLandroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 132
    iget-object v5, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->outputCropFileName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CROP_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/yalantis/ucrop/util/FileUtils;->getCreateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 133
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yalantis/ucrop/util/FileUtils;->getCreateFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->outputCropFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    :goto_4
    new-instance v5, Ljava/io/File;

    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getSandboxPathDir()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 135
    const-string v5, "com.yalantis.ucrop.InputUri"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    const-string v2, "com.yalantis.ucrop.OutputUri"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->aspectRatioList:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_6

    iget-object v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->aspectRatioList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yalantis/ucrop/model/AspectRatio;

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_7

    .line 139
    const-string v4, "com.yalantis.ucrop.AspectRatioX"

    invoke-virtual {v2}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioX()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 140
    const-string v4, "com.yalantis.ucrop.AspectRatioY"

    invoke-virtual {v2}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioY()F

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 142
    :cond_7
    invoke-static {v3}, Lcom/yalantis/ucrop/UCropFragment;->newInstance(Landroid/os/Bundle;)Lcom/yalantis/ucrop/UCropFragment;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->fragments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 122
    :cond_8
    :goto_6
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropNotSupportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 147
    :cond_9
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_a

    .line 150
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->setGalleryAdapter()V

    .line 151
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->fragments:Ljava/util/List;

    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getCropSupportPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yalantis/ucrop/UCropFragment;

    .line 152
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getCropSupportPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->switchCropFragment(Lcom/yalantis/ucrop/UCropFragment;I)V

    .line 153
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->galleryAdapter:Lcom/yalantis/ucrop/UCropGalleryAdapter;

    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getCropSupportPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCropGalleryAdapter;->setCurrentSelectPosition(I)V

    return-void

    .line 148
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No clipping data sources are available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing required parameters, count cannot be less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private mergeCropResult(Landroid/content/Intent;)V
    .locals 5

    .line 419
    :try_start_0
    const-string v0, "com.yalantis.ucrop.CropInputOriginal"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropTotalQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 421
    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    .line 422
    const-string v3, "outPutPath"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v2, "imageWidth"

    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutputImageWidth(Landroid/content/Intent;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 424
    const-string v2, "imageHeight"

    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutputImageHeight(Landroid/content/Intent;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 425
    const-string v2, "offsetX"

    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutputImageOffsetX(Landroid/content/Intent;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 426
    const-string v2, "offsetY"

    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutputImageOffsetY(Landroid/content/Intent;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 427
    const-string v2, "aspectRatio"

    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutputCropAspectRatio(Landroid/content/Intent;)F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 428
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropTotalQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private onCropCompleteFinish()V
    .locals 3

    .line 401
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 402
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropTotalQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 403
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 404
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 406
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 407
    const-string v2, "output"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 408
    invoke-virtual {p0, v0, v1}, Lcom/yalantis/ucrop/UCropMultipleActivity;->setResult(ILandroid/content/Intent;)V

    .line 409
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->finish()V

    return-void
.end method

.method private setGalleryAdapter()V
    .locals 5

    .line 227
    sget v0, Lcom/yalantis/ucrop/R$id;->recycler_gallery:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 230
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 231
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Lcom/yalantis/ucrop/decoration/GridSpacingItemDecoration;

    const/high16 v2, 0x40c00000    # 6.0f

    .line 233
    invoke-static {p0, v2}, Lcom/yalantis/ucrop/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7fffffff

    invoke-direct {v1, v4, v2, v3}, Lcom/yalantis/ucrop/decoration/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 232
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 235
    :cond_0
    sget v1, Lcom/yalantis/ucrop/R$anim;->ucrop_layout_animation_fall_down:I

    .line 236
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 238
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.yalantis.ucrop.GalleryBarBackground"

    sget v3, Lcom/yalantis/ucrop/R$drawable;->ucrop_gallery_bg:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 240
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundResource(I)V

    .line 241
    new-instance v1, Lcom/yalantis/ucrop/UCropGalleryAdapter;

    iget-object v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/yalantis/ucrop/UCropGalleryAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->galleryAdapter:Lcom/yalantis/ucrop/UCropGalleryAdapter;

    .line 242
    new-instance v2, Lcom/yalantis/ucrop/UCropMultipleActivity$1;

    invoke-direct {v2, p0}, Lcom/yalantis/ucrop/UCropMultipleActivity$1;-><init>(Lcom/yalantis/ucrop/UCropMultipleActivity;)V

    invoke-virtual {v1, v2}, Lcom/yalantis/ucrop/UCropGalleryAdapter;->setOnItemClickListener(Lcom/yalantis/ucrop/UCropGalleryAdapter$OnItemClickListener;)V

    .line 265
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->galleryAdapter:Lcom/yalantis/ucrop/UCropGalleryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setStatusBarColor(I)V
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method private setupAppBar()V
    .locals 4

    .line 309
    iget v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mStatusBarColor:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->setStatusBarColor(I)V

    .line 311
    sget v0, Lcom/yalantis/ucrop/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 314
    iget v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 315
    iget v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarWidgetColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 317
    sget v1, Lcom/yalantis/ucrop/R$id;->toolbar_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 318
    iget v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarWidgetColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarTitleSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 323
    iget v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarCancelDrawable:I

    invoke-static {p0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 324
    iget v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarWidgetColor:I

    sget-object v3, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    invoke-static {v2, v3}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 325
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 326
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 328
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 330
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setupViews(Landroid/content/Intent;)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.yalantis.ucrop.MultipleAspectRatio"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->aspectRatioList:Ljava/util/ArrayList;

    .line 289
    const-string v0, "com.yalantis.ucrop.ForbidCropGifWebp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->isForbidCropGifWebp:Z

    .line 290
    const-string v0, "com.yalantis.ucrop.CropOutputFileName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->outputCropFileName:Ljava/lang/String;

    .line 291
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_statusbar:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.StatusBarColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mStatusBarColor:I

    .line 292
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.ToolbarColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarColor:I

    .line 294
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar_widget:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.UcropToolbarWidgetColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarWidgetColor:I

    .line 295
    const-string v0, "com.yalantis.ucrop.UcropToolbarCancelDrawable"

    sget v1, Lcom/yalantis/ucrop/R$drawable;->ucrop_ic_cross:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarCancelDrawable:I

    .line 296
    const-string v0, "com.yalantis.ucrop.UcropToolbarCropDrawable"

    sget v1, Lcom/yalantis/ucrop/R$drawable;->ucrop_ic_done:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarCropDrawable:I

    .line 297
    const-string v0, "com.yalantis.ucrop.UcropToolbarTitleText"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarTitle:Ljava/lang/String;

    .line 298
    const-string v0, "com.yalantis.ucrop.UcropToolbarTitleTextSize"

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarTitleSize:I

    .line 299
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarTitle:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/yalantis/ucrop/R$string;->ucrop_label_edit_photo:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarTitle:Ljava/lang/String;

    .line 301
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->setupAppBar()V

    return-void
.end method

.method private switchCropFragment(Lcom/yalantis/ucrop/UCropFragment;I)V
    .locals 4

    .line 211
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/yalantis/ucrop/UCropFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropCurrentFragment:Lcom/yalantis/ucrop/UCropFragment;

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 216
    :cond_0
    sget v1, Lcom/yalantis/ucrop/R$id;->fragment_container:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/yalantis/ucrop/UCropFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropCurrentFragment:Lcom/yalantis/ucrop/UCropFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 219
    invoke-virtual {p1}, Lcom/yalantis/ucrop/UCropFragment;->fragmentReVisible()V

    .line 221
    :goto_0
    iput p2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->currentFragmentPosition:I

    .line 222
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropCurrentFragment:Lcom/yalantis/ucrop/UCropFragment;

    .line 223
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method public loadingProgress(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mShowLoader:Z

    .line 353
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->immersive()V

    .line 95
    sget p1, Lcom/yalantis/ucrop/R$layout;->ucrop_activity_multiple:I

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropMultipleActivity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropMultipleActivity;->setupViews(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropMultipleActivity;->initCropFragments(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 452
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$menu;->ucrop_menu_activity:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 456
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_loader:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 461
    iget v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarWidgetColor:I

    sget-object v3, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    invoke-static {v2, v3}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 462
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 463
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 465
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 467
    :goto_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 470
    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 471
    iget v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarCropDrawable:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 474
    iget v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mToolbarWidgetColor:I

    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    invoke-static {v1, v2}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 476
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onCropFinish(Lcom/yalantis/ucrop/UCropFragment$UCropResult;)V
    .locals 3

    .line 358
    iget v0, p1, Lcom/yalantis/ucrop/UCropFragment$UCropResult;->mResultCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x60

    if-eq v0, v1, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object p1, p1, Lcom/yalantis/ucrop/UCropFragment$UCropResult;->mResultData:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropMultipleActivity;->handleCropError(Landroid/content/Intent;)V

    return-void

    .line 360
    :cond_1
    iget v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->currentFragmentPosition:I

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropNotSupportList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropNotSupportList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 362
    iget-object p1, p1, Lcom/yalantis/ucrop/UCropFragment$UCropResult;->mResultData:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropMultipleActivity;->mergeCropResult(Landroid/content/Intent;)V

    if-ne v0, v1, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->onCropCompleteFinish()V

    return-void

    .line 366
    :cond_2
    iget p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->currentFragmentPosition:I

    add-int/lit8 p1, p1, 0x1

    .line 367
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getPathToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_0
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_3

    .line 381
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->onCropCompleteFinish()V

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 376
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropSupportList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->getPathToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_4
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/UCropFragment;

    .line 384
    invoke-direct {p0, v0, p1}, Lcom/yalantis/ucrop/UCropMultipleActivity;->switchCropFragment(Lcom/yalantis/ucrop/UCropFragment;I)V

    .line 385
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->galleryAdapter:Lcom/yalantis/ucrop/UCropGalleryAdapter;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/UCropGalleryAdapter;->getCurrentSelectPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropGalleryAdapter;->notifyItemChanged(I)V

    .line 386
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->galleryAdapter:Lcom/yalantis/ucrop/UCropGalleryAdapter;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCropGalleryAdapter;->setCurrentSelectPosition(I)V

    .line 387
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->galleryAdapter:Lcom/yalantis/ucrop/UCropGalleryAdapter;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/UCropGalleryAdapter;->getCurrentSelectPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCropGalleryAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 446
    invoke-static {}, Lcom/yalantis/ucrop/UCropDevelopConfig;->destroy()V

    .line 447
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 491
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    if-ne v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropCurrentFragment:Lcom/yalantis/ucrop/UCropFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yalantis/ucrop/UCropFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->uCropCurrentFragment:Lcom/yalantis/ucrop/UCropFragment;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/UCropFragment;->cropAndSaveImage()V

    goto :goto_0

    .line 495
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropMultipleActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 499
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 484
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mShowLoader:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 485
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_loader:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropMultipleActivity;->mShowLoader:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
