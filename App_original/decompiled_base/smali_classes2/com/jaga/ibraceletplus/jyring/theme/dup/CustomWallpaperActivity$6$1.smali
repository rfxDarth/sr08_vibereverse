.class Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6$1;
.super Ljava/lang/Object;
.source "CustomWallpaperActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 630
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 0

    .line 633
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    invoke-static {p3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;IZ)V

    return-void
.end method
