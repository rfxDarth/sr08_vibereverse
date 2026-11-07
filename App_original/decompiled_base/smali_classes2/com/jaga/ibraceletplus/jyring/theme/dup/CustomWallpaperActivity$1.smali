.class Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$1;
.super Ljava/lang/Object;
.source "CustomWallpaperActivity.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->createActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 161
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/basic/PictureSelector;->obtainSelectorList(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 166
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    const-string v0, "onActivityResult PictureSelector Cancel"

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->saveLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 158
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$1;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
