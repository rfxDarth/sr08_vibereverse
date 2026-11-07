.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->showShareDialog(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field final synthetic val$bitmapScreen:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1273
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;->val$bitmapScreen:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "https://line.me/R/share?image="

    .line 1276
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 1277
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 1281
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1282
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1285
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;->val$bitmapScreen:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1286
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1288
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1291
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "share with twitter exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method
