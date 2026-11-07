.class Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;
.super Ljava/lang/Object;
.source "NotifyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

.field final synthetic val$sb:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;Landroid/widget/Switch;)V
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

    .line 263
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;->val$sb:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 266
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;->val$sb:Landroid/widget/Switch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 267
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->val$tag:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->val$tag:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    new-instance p1, Landroid/content/Intent;

    const-string p2, "jringACTION_NOTIFY_SETTING_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 273
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V

    return-void
.end method
