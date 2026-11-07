.class Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;
.super Ljava/lang/Object;
.source "CustomWallpaperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

.field final synthetic val$watchHeight:I

.field final synthetic val$watchWidth:I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;->val$watchWidth:I

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;->val$watchHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 524
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;->val$watchWidth:I

    .line 525
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;->val$watchHeight:I

    .line 527
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/basic/PictureSelector;->create(Landroidx/fragment/app/FragmentActivity;)Lcom/luck/picture/lib/basic/PictureSelector;

    move-result-object v1

    const/4 v2, 0x1

    .line 528
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/basic/PictureSelector;->openGallery(I)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 529
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/pictureselector/GlideEngine;->createGlideEngine()Lcom/jaga/ibraceletplus/jyring/pictureselector/GlideEngine;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setImageEngine(Lcom/luck/picture/lib/engine/ImageEngine;)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    .line 530
    invoke-static {v3, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;II)Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$ImageFileCropEngine;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setCropEngine(Lcom/luck/picture/lib/engine/CropFileEngine;)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object p1

    .line 531
    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setMaxSelectNum(I)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object p1

    .line 532
    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setSelectionMode(I)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object p1

    .line 533
    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->isDirectReturnSingle(Z)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object p1

    const-string v0, "/JYouPro"

    .line 547
    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setOutputCameraDir(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object p1

    .line 602
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;Lcom/luck/picture/lib/basic/PictureSelectionModel;)V

    return-void
.end method
