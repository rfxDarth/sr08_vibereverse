.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;
.super Ljava/lang/Object;
.source "FragmentSport.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->requestLocationPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 184
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    const v0, 0x7f13036d

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->toast(Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    const p2, 0x7f13036c

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public onGranted(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 172
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    const p2, 0x7f130375

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->toast(Ljava/lang/String;)V

    return-void

    .line 176
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)I

    move-result p2

    const-string v0, "mode"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
