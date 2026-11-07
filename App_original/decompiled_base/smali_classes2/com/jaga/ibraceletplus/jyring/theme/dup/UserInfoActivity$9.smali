.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$9;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 768
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 771
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-boolean p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    if-eqz p1, :cond_0

    .line 772
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setUserProfile()V

    .line 773
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 774
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Z)V

    .line 778
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->finish()V

    return-void
.end method
