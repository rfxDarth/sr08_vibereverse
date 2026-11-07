.class Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$5;
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

    .line 608
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 611
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;-><init>(Landroid/content/Context;)V

    .line 612
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showList([Ljava/lang/String;)V

    .line 613
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$5$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$5$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$5;)V

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    return-void
.end method
