.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 955
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(Ljava/util/Date;)V
    .locals 2

    .line 961
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 962
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvBirthday:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 965
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->access$1000(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    .line 966
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    return-void
.end method
