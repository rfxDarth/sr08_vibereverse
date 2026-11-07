.class Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;
.super Ljava/lang/Object;
.source "CustomWallpaperActivity.java"

# interfaces
.implements Lcom/luck/picture/lib/engine/CropFileEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFileCropEngine"
.end annotation


# instance fields
.field protected aspect_ratio_x:I

.field protected aspect_ratio_y:I

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;->aspect_ratio_x:I

    .line 345
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;->aspect_ratio_y:I

    return-void
.end method


# virtual methods
.method public onStartCrop(Landroidx/fragment/app/Fragment;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;->aspect_ratio_x:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;->aspect_ratio_y:I

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;II)Lcom/yalantis/ucrop/UCrop$Options;

    move-result-object v0

    .line 351
    invoke-static {p2, p3, p4}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;Ljava/util/ArrayList;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p2

    .line 352
    invoke-virtual {p2, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    .line 353
    new-instance p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine$1;

    invoke-direct {p3, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;)V

    invoke-virtual {p2, p3}, Lcom/yalantis/ucrop/UCrop;->setImageEngine(Lcom/yalantis/ucrop/UCropImageEngine;)V

    .line 381
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p2, p3, p1, p5}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/content/Context;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method
