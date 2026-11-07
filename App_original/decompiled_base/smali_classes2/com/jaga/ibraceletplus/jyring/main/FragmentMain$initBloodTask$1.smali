.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4185
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 4192
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->bTest:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4194
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v2, "FUNCTION_BLOOD_OXYGEN"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 4220
    const-string v0, "--/--"

    .line 4221
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->systolic:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->iastolic:I

    if-eqz v2, :cond_1

    .line 4222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->systolic:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->iastolic:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4223
    :cond_1
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBloodPressureCurrent:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4224
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvBloodOxygenCurrent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->oxygen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4238
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/16 v2, 0x18

    const/16 v3, 0xe10

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$6700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIII)V

    .line 4239
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/16 v5, 0xe10

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-static/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$6800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4242
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initBlood onPostExecute Exception occured: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
