.class Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;
.super Ljava/lang/Object;
.source "NotifyActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->setSwitch(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

.field final synthetic val$p:I

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;Ljava/lang/String;I)V
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

    .line 236
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->val$tag:Ljava/lang/String;

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->val$p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 239
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 242
    :cond_0
    check-cast p1, Landroid/widget/Switch;

    .line 244
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->val$tag:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->val$p:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "sbEnable"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->val$tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->val$tag:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 252
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V

    .line 254
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 255
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    const v1, 0x7f130376

    .line 256
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;)V

    const v1, 0x7f13016b

    .line 257
    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;Landroid/widget/Switch;)V

    const p1, 0x7f13015a

    .line 263
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 276
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 277
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
