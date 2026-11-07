.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initGender()V
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

    .line 885
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 889
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivMale:Landroid/widget/ImageView;

    const v0, 0x7f1000d5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 890
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivFemale:Landroid/widget/ImageView;

    const v0, 0x7f10002c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 891
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Gender"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 892
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 893
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 894
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    return-void
.end method
