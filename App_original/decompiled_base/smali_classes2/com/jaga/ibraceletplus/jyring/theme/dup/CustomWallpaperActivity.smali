.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "CustomWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;
    }
.end annotation


# instance fields
.field btUpdate:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a009c
    .end annotation
.end field

.field civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

.field private fontBlue:I

.field private fontColor:I

.field private fontColorPos:I

.field private fontGreen:I

.field private fontRed:I

.field private itemsFontColor:[Ljava/lang/String;

.field private itemsTimeExtraInfo:[Ljava/lang/String;

.field private itemsTimePos:[Ljava/lang/String;

.field ivWallpaper:Landroid/widget/ImageView;

.field ivWallpaperBottom:Landroid/widget/ImageView;

.field ivWallpaperTime:Landroid/widget/ImageView;

.field ivWallpaperTop:Landroid/widget/ImageView;

.field private launcherResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private newFilename:Ljava/lang/String;

.field rlWallpaperPanel:Landroid/widget/RelativeLayout;

.field private selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

.field private timeAboveContent:I

.field private timeBelowContent:I

.field private timePos:I

.field tvClickTip:Landroid/widget/TextView;

.field tvFontColor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a9
    .end annotation
.end field

.field tvTimeBottom:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0536
    .end annotation
.end field

.field tvTimePos:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0539
    .end annotation
.end field

.field tvTimeUp:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a053b
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    const/4 v0, 0x3

    .line 86
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    .line 88
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    const/16 v1, 0xff

    .line 89
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    .line 90
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    .line 91
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    const/4 v1, -0x1

    .line 92
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    .line 93
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColorPos:I

    const/4 v0, 0x4

    .line 95
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimePos:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 96
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimeExtraInfo:[Ljava/lang/String;

    const/16 v0, 0x9

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    return-void
.end method

.method public static BitmapBytes(Landroid/graphics/Bitmap;)[B
    .locals 1

    .line 1291
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 1292
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1293
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1294
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->analyticalSelectResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;II)Lcom/yalantis/ucrop/UCrop$Options;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->buildOptions(II)Lcom/yalantis/ucrop/UCrop$Options;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)[Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateContentFontColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;II)Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getCropFileEngine(II)Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;Lcom/luck/picture/lib/basic/PictureSelectionModel;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->forSelectResult(Lcom/luck/picture/lib/basic/PictureSelectionModel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)[Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimePos:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;IZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimePosContent(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)[Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimeExtraInfo:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;IZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimeAboveContent(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;IZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimeBelowContent(IZ)V

    return-void
.end method

.method private analyticalSelectResults(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 179
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/luck/picture/lib/utils/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 183
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/luck/picture/lib/utils/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 187
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    .line 190
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6587\u4ef6\u540d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u662f\u5426\u538b\u7f29:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u538b\u7f29:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u521d\u59cb\u8def\u5f84:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u7edd\u5bf9\u8def\u5f84:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u662f\u5426\u88c1\u526a:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u88c1\u526a\u8def\u5f84:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u662f\u5426\u5f00\u542f\u539f\u56fe:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isOriginal()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u539f\u56fe\u8def\u5f84:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6c99\u76d2\u8def\u5f84:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getSandboxPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6c34\u5370\u8def\u5f84:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getWatermarkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u89c6\u9891\u7f29\u7565\u56fe:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getVideoThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u539f\u59cb\u5bbd\u9ad8: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u88c1\u526a\u5bbd\u9ad8: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6587\u4ef6\u5927\u5c0f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/luck/picture/lib/utils/PictureFileUtils;->formatAccurateUnitFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6587\u4ef6\u65f6\u957f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WALLPAPER_WATCH_WIDTH-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "240"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WALLPAPER_WATCH_HEIGHT-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 221
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "select result getPath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "select result getCutPath:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 227
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 228
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 229
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    .line 231
    const-string/jumbo v4, "\u901a\u8fc7options\u83b7\u53d6\u5230\u7684bitmap\u4e3a\u7a7a ==="

    invoke-virtual {p0, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 233
    :cond_3
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 234
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v5, 0x0

    if-lt v0, v1, :cond_6

    if-ge v4, v2, :cond_4

    goto :goto_2

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WALLPAPER_WATCH_IMG_FILENAME-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 242
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageURI(Landroid/net/Uri;)V

    .line 243
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 244
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTime:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvClickTip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->enableUpdate()V

    .line 251
    :cond_5
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimePosContent(IZ)V

    .line 252
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimeAboveContent(IZ)V

    .line 253
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimeBelowContent(IZ)V

    goto/16 :goto_0

    .line 236
    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "analyticalSelectResults out size :"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | watch size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f13009b

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 255
    :cond_7
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$2;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private buildOptions(II)Lcom/yalantis/ucrop/UCrop$Options;
    .locals 5

    .line 288
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    const/4 v1, 0x1

    .line 289
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setHideBottomControls(Z)V

    const/4 v2, 0x0

    .line 290
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCrop$Options;->setFreeStyleCropEnabled(Z)V

    .line 291
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setShowCropFrame(Z)V

    .line 292
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCrop$Options;->setShowCropGrid(Z)V

    .line 293
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCrop$Options;->setCircleDimmedLayer(Z)V

    int-to-float v3, p1

    int-to-float v4, p2

    .line 294
    invoke-virtual {v0, v3, v4}, Lcom/yalantis/ucrop/UCrop$Options;->withAspectRatio(FF)V

    .line 295
    invoke-virtual {v0, p1, p2}, Lcom/yalantis/ucrop/UCrop$Options;->withMaxResultSize(II)V

    .line 297
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCrop$Options;->isCropDragSmoothToCenter(Z)V

    .line 299
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->isForbidCropGifWebp(Z)V

    .line 300
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->isForbidSkipMultipleCrop(Z)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 301
    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setMaxScaleMultiplier(F)V

    .line 302
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    const p2, 0x7f06039b

    const v1, 0x7f060393

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getStatusBarColor()I

    move-result p1

    if-eqz p1, :cond_2

    .line 303
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Lcom/luck/picture/lib/style/SelectMainStyle;->isDarkStatusBarBlack()Z

    move-result v2

    .line 305
    invoke-virtual {p1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getStatusBarColor()I

    move-result p1

    .line 306
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCrop$Options;->isDarkStatusBarBlack(Z)V

    .line 307
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V

    .line 309
    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V

    .line 312
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 314
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getTitleBarStyle()Lcom/luck/picture/lib/style/TitleBarStyle;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleTextColor()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {p1}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarWidgetColor(I)V

    return-object v0

    .line 318
    :cond_1
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarWidgetColor(I)V

    return-object v0

    .line 321
    :cond_2
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V

    .line 322
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 323
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarWidgetColor(I)V

    return-object v0
.end method

.method private static checkSDK()Z
    .locals 2

    .line 1201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private createActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    return-object v0
.end method

.method private enableUpdate()V
    .locals 3

    .line 1150
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->btUpdate:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1151
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->btUpdate:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private forSelectResult(Lcom/luck/picture/lib/basic/PictureSelectionModel;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->launcherResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->forResult(Landroidx/activity/result/ActivityResultLauncher;)V

    return-void
.end method

.method private getCropFileEngine(II)Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;
    .locals 1

    .line 334
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;

    invoke-direct {v0, p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;II)V

    return-object v0
.end method

.method public static getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1206
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 1209
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1213
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1216
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private imgToBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1275
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private imgToBitmap2()Landroid/graphics/Bitmap;
    .locals 2

    .line 1282
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 1286
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .locals 8

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimePos:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimePos:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f13012a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimePos:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f130127

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 124
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimePos:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f130128

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 126
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimeExtraInfo:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f13012d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 127
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimeExtraInfo:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f13012b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 128
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimeExtraInfo:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f13012e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimeExtraInfo:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f13012c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 130
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimeExtraInfo:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f13012f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 132
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f13011f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 133
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 134
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 135
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 136
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 137
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 139
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 140
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 142
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WALLPAPER_WATCH_TIME_POS-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    .line 143
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WALLPAPER_WATCH_TIME_ABOVE_CONTENT-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    .line 144
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "WALLPAPER_WATCH_TIME_BELOW_CONTENT-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    .line 145
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "WALLPAPER_WATCH_FONT_COLOR_POS-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColorPos:I

    .line 147
    new-instance v0, Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-direct {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 148
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->createActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->launcherResult:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f0a00e3

    .line 386
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    const v0, 0x7f0a0217

    .line 387
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    const v0, 0x7f0a0370

    .line 389
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->rlWallpaperPanel:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a021a

    .line 390
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    const v0, 0x7f0a0219

    .line 391
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTime:Landroid/widget/ImageView;

    const v0, 0x7f0a0218

    .line 392
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    const v0, 0x7f0a047b

    .line 394
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvClickTip:Landroid/widget/TextView;

    .line 396
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WALLPAPER_WATCH_IMG_FILENAME-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageURI(Landroid/net/Uri;)V

    .line 399
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 400
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvClickTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->enableUpdate()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WALLPAPER_WATCH_SHAPE-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 410
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WALLPAPER_WATCH_WIDTH-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "240"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WALLPAPER_WATCH_HEIGHT-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 420
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v4, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;II)V

    invoke-virtual {v2, v4}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x43200000    # 160.0f

    .line 507
    invoke-static {p0, v4}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    .line 508
    invoke-static {p0, v4}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    if-ge v0, v1, :cond_3

    mul-int v4, v5, v1

    .line 510
    div-int/2addr v4, v0

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_4

    mul-int v5, v4, v0

    .line 513
    div-int/2addr v5, v1

    .line 515
    :cond_4
    :goto_1
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 516
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 518
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->rlWallpaperPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    new-instance v4, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;

    invoke-direct {v4, p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;II)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimePosContent(IZ)V

    .line 608
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimePos:Landroid/widget/TextView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimeAboveContent(IZ)V

    .line 623
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimeBelowContent(IZ)V

    .line 625
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimeUp:Landroid/widget/TextView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimeBottom:Landroid/widget/TextView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$7;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColorPos:I

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateContentFontColor(I)V

    .line 656
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvFontColor:Landroid/widget/TextView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$8;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$8;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static makeRootDirectory(Ljava/lang/String;)V
    .locals 1

    .line 1222
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1224
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "error:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private translateBmpToBin(IIIIII)V
    .locals 21

    move-object/from16 v1, p0

    .line 1161
    const-string v0, "160"

    const-string v2, "240"

    const-string v3, "0"

    .line 0
    const-string v4, "/wallpaper.bin"

    const-string/jumbo v5, "translateBmpToBin: watchReviewHeight: "

    const-string/jumbo v6, "translateBmpToBin: watchReviewWidth: "

    const-string/jumbo v7, "translateBmpToBin: watchUnitWidth: "

    const-string/jumbo v8, "translateBmpToBin: watchHeight: "

    const-string/jumbo v9, "translateBmpToBin: watchWidth: "

    const-string/jumbo v10, "translateBmpToBin: watchShapeType: "

    const-string/jumbo v11, "translateBmpToBin: watchColorType: "

    const-string v12, "WALLPAPER_WATCH_REVIEWHEIGHT-"

    const-string v13, "WALLPAPER_WATCH_REVIEWWIDTH-"

    const-string v14, "WALLPAPER_WATCH_UNITWIDTH-"

    const-string v15, "WALLPAPER_WATCH_HEIGHT-"

    move-object/from16 v16, v4

    const-string v4, "WALLPAPER_WATCH_WIDTH-"

    move-object/from16 v17, v5

    const-string v5, "WALLPAPER_WATCH_SHAPE-"

    move-object/from16 v18, v6

    const-string v6, "WALLPAPER_WATCH_COLORMODE-"

    move-object/from16 v19, v7

    .line 1161
    :try_start_0
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1162
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1163
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1164
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1165
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "30"

    invoke-virtual {v2, v4, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1166
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1167
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1172
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v9, v20

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1173
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v9, v19

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1174
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v9, v18

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1175
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v9, v17

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1177
    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->imgToBitmap2()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1178
    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->BitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    mul-int v9, v3, v7

    mul-int/lit8 v9, v9, 0x8

    .line 1179
    new-array v9, v9, [B

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move v10, v2

    move-object v2, v4

    move v4, v6

    move v6, v3

    move-object v3, v9

    move v9, v0

    move-object/from16 v0, v16

    move/from16 v16, p6

    .line 1181
    invoke-virtual/range {v1 .. v16}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->wallpapergendataFromJNI([B[BIIIIIIIIIIIII)I

    move-result v2

    .line 1184
    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 1185
    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "/JRing/firmware"

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    new-instance v2, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1192
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1194
    :cond_0
    invoke-virtual {v1, v0, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->writeSDFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateContentFontColor(I)V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvFontColor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsFontColor:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColorPos:I

    .line 690
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WALLPAPER_WATCH_FONT_COLOR_POS-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColorPos:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, -0x1

    .line 692
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    const/4 v1, 0x0

    const/16 v2, 0xff

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const p1, -0xff0100

    .line 751
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    .line 752
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    .line 753
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    .line 754
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    goto :goto_0

    :pswitch_1
    const p1, -0xff0001

    .line 744
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    .line 745
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    .line 746
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    .line 747
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    goto :goto_0

    :pswitch_2
    const p1, -0xffff01

    .line 737
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    .line 738
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    .line 739
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    .line 740
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    goto :goto_0

    :pswitch_3
    const p1, -0x7fff80

    .line 730
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    const/16 p1, 0x80

    .line 731
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    .line 732
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    .line 733
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    goto :goto_0

    :pswitch_4
    const/16 p1, -0x3f35

    .line 723
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    .line 724
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    const/16 p1, 0xc0

    .line 725
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    const/16 p1, 0xcb

    .line 726
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    goto :goto_0

    :pswitch_5
    const p1, -0x1c30a9

    .line 716
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    const/16 p1, 0xe3

    .line 717
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    const/16 p1, 0xcf

    .line 718
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    const/16 p1, 0x57

    .line 719
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    goto :goto_0

    :pswitch_6
    const/16 p1, -0x100

    .line 709
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    .line 710
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    .line 711
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    .line 712
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    goto :goto_0

    :pswitch_7
    const/high16 p1, -0x1000000

    .line 702
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    .line 703
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    .line 704
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    .line 705
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    goto :goto_0

    .line 695
    :pswitch_8
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    .line 696
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    .line 697
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    .line 698
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    .line 761
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 762
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTime:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 763
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTimeAboveContent(IZ)V
    .locals 2

    .line 820
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    if-lez p2, :cond_0

    if-ne p1, p2, :cond_0

    .line 821
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f13000e

    .line 822
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1300a5

    .line 823
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f13016b

    const/4 v0, 0x0

    .line 824
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 825
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 829
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimeUp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimeExtraInfo:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    .line 833
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WALLPAPER_WATCH_TIME_ABOVE_CONTENT-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p2, 0x4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, p2, :cond_1

    return-void

    .line 856
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    const p2, 0x7f1001a2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 857
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 851
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    const p2, 0x7f1001a0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 852
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 846
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    const p2, 0x7f1001a1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 847
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 841
    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    const p2, 0x7f10019f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 842
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 837
    :cond_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateTimeBelowContent(IZ)V
    .locals 2

    .line 767
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    if-lez p2, :cond_0

    if-ne p2, p1, :cond_0

    .line 768
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f13000e

    .line 769
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1300a5

    .line 770
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f13016b

    const/4 v0, 0x0

    .line 771
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 772
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 776
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimeBottom:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimeExtraInfo:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    .line 780
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WALLPAPER_WATCH_TIME_BELOW_CONTENT-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p2, 0x4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, p2, :cond_1

    return-void

    .line 803
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    const p2, 0x7f1001a2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 804
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 798
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    const p2, 0x7f1001a0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 799
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 793
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    const p2, 0x7f1001a1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 788
    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    const p2, 0x7f10019f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 789
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 784
    :cond_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateTimePosContent(IZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 873
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimePos:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->itemsTimePos:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    .line 882
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WALLPAPER_WATCH_TIME_POS-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 884
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WALLPAPER_WATCH_SHAPE-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 885
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WALLPAPER_WATCH_WIDTH-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "240"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 886
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "WALLPAPER_WATCH_HEIGHT-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0x43200000    # 160.0f

    .line 888
    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    .line 889
    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    if-ge v15, v1, :cond_0

    mul-int v2, v3, v1

    .line 891
    div-int/2addr v2, v15

    goto :goto_0

    :cond_0
    if-le v15, v1, :cond_1

    mul-int v3, v2, v15

    .line 894
    div-int/2addr v3, v1

    .line 897
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetTimePosition: watchShapeType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetTimePosition: watchWidth: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 899
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetTimePosition: watchHeight: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetTimePosition: uiWidth: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 901
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetTimePosition: uiHeight: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    move/from16 v16, v1

    .line 903
    new-array v1, v4, [I

    move/from16 v18, v2

    .line 904
    new-array v2, v4, [I

    move/from16 v17, v3

    .line 905
    new-array v3, v4, [I

    .line 906
    new-array v5, v4, [I

    move-object v6, v5

    .line 907
    new-array v5, v4, [I

    move-object v7, v6

    .line 908
    new-array v6, v4, [I

    move-object v8, v7

    .line 910
    new-array v7, v4, [I

    move-object v9, v8

    .line 911
    new-array v8, v4, [I

    move-object v10, v9

    .line 912
    new-array v9, v4, [I

    move-object v11, v10

    .line 913
    new-array v10, v4, [I

    move-object v12, v11

    .line 914
    new-array v11, v4, [I

    .line 915
    new-array v4, v4, [I

    .line 921
    iget v13, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    move-object/from16 v19, v12

    move-object v12, v4

    move-object/from16 v4, v19

    invoke-virtual/range {v0 .. v18}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->wallpaperGetTimePositionFromJNI([I[I[I[I[I[I[I[I[I[I[I[IIIIIII)I

    .line 925
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GetTimePosition: outTimeX: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget v1, v1, v8

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "GetTimePosition: outTimeY: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTimePosition: outTopContentX: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v3, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTimePosition: outTopContentY: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v4, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTimePosition: outBottomContentX: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v5, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTimePosition: outBottomContentY: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v6, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    const v1, 0x7f0a021a

    .line 932
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    const v1, 0x7f0a0219

    .line 933
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTime:Landroid/widget/ImageView;

    const v1, 0x7f0a0218

    .line 934
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperBottom:Landroid/widget/ImageView;

    .line 936
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 937
    aget v2, v3, v8

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 938
    aget v2, v4, v8

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 939
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/high16 v1, 0x42400000    # 48.0f

    .line 941
    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 942
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_2

    .line 995
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTime:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 998
    :cond_2
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTime:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method OnClickbUpdate()V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a009c
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "jring.SYNC_PROCESSING"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f130011

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1021
    :cond_0
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    if-lez v3, :cond_1

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    if-lez v0, :cond_1

    if-ne v3, v0, :cond_1

    .line 1022
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13000e

    .line 1023
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1300a5

    .line 1024
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f13016b

    const/4 v2, 0x0

    .line 1025
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 1030
    :cond_1
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontRed:I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontGreen:I

    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontBlue:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->translateBmpToBin(IIIIII)V

    .line 1032
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1033
    const-string v2, "newFilename"

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    const-string/jumbo v2, "timePos"

    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    const-string/jumbo v2, "timeAboveContent"

    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1036
    const-string/jumbo v2, "timeBelowContent"

    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    const-string v2, "fontColor"

    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->fontColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getScaleBitmap([BI)Landroid/graphics/Bitmap;
    .locals 3

    .line 1300
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 1303
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1306
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1310
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1313
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1316
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1319
    array-length p2, p1

    invoke-static {p1, v2, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1043
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    const/16 p2, 0x45

    if-eq p1, p2, :cond_5

    const/16 p2, 0xbc

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    .line 1047
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WALLPAPER_WATCH_WIDTH-"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "240"

    invoke-virtual {p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1048
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WALLPAPER_WATCH_HEIGHT-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1050
    invoke-static {p3}, Lcom/luck/picture/lib/basic/PictureSelector;->obtainSelectorList(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1056
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "select result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1058
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "select result cut:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1062
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 1063
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1064
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1066
    const-string/jumbo v4, "\u901a\u8fc7options\u83b7\u53d6\u5230\u7684bitmap\u4e3a\u7a7a ==="

    invoke-virtual {p0, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1068
    :cond_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1069
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v2, p1, :cond_4

    if-ge v4, p2, :cond_2

    goto :goto_1

    .line 1076
    :cond_2
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WALLPAPER_WATCH_IMG_FILENAME-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->macid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1077
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->civWallpaper:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1078
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaper:Landroid/widget/ImageView;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1079
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->ivWallpaperTime:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvClickTip:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1082
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1083
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->enableUpdate()V

    .line 1086
    :cond_3
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timePos:I

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-direct {p0, v2, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimePosContent(IZ)V

    .line 1087
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeAboveContent:I

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-direct {p0, v2, v4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimeAboveContent(IZ)V

    .line 1088
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->timeBelowContent:I

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->newFilename:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->updateTimeBelowContent(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1071
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult out size :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | watch size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f13009b

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1094
    :cond_5
    const-string/jumbo p1, "request crop."

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0026

    .line 107
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->setContentView(I)V

    .line 109
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->initData()V

    .line 110
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->initView()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method

.method public native wallpaperGetTimePositionFromJNI([I[I[I[I[I[I[I[I[I[I[I[IIIIIII)I
.end method

.method public native wallpapergendataFromJNI([B[BIIIIIIIIIIIII)I
.end method

.method public writeSDFile(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1349
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1350
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1351
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1352
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
