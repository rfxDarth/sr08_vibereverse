.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->checkNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6242
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 6246
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6247
    const-string p2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6248
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    .line 6250
    const-string p2, "android.provider.extra.APP_PACKAGE"

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6251
    const-string p2, "android.provider.extra.CHANNEL_ID"

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 6255
    :cond_0
    const-string p2, "app_package"

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6256
    const-string p2, "app_uid"

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6258
    :goto_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6260
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkNotification exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 6262
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6266
    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6267
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "package"

    invoke-static {v1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 6268
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6269
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$54;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
