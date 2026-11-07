.class Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initBirth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

.field final synthetic val$b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Ljava/lang/String;)V
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

    .line 920
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;->val$b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 939
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 941
    :try_start_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;->val$b:Ljava/lang/String;

    const-string/jumbo v0, "yyyy-MM-dd"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;

    invoke-direct {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 946
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->bottomSheet()Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->curved()Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 948
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object v0

    .line 949
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object v0

    .line 950
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 951
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMonth(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object v0

    .line 952
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayYears(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object v0

    .line 953
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayDaysOfMonth(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object v0

    .line 954
    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->defaultDate(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;)V

    .line 955
    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->listener(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;

    move-result-object p1

    .line 969
    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->display()V

    return-void

    :catch_0
    move-exception p1

    .line 943
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
