.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnCheckedChangedsCall(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Z)V

    .line 280
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$102(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Z)Z

    .line 281
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sCall:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 282
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$102(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Z)Z

    if-eqz p2, :cond_0

    .line 285
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const v0, 0x7f13036d

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->toast(Ljava/lang/String;)V

    .line 287
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const p2, 0x7f13036c

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public onGranted(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 271
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const p2, 0x7f130375

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->toast(Ljava/lang/String;)V

    return-void

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Z)V

    return-void
.end method
