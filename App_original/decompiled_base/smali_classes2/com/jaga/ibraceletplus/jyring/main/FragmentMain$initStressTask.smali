.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initStressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected stress:I

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3652
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V
    .locals 0

    .line 3652
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3652
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    const-string v0, "initStressTask history heartrate: "

    const-string v1, "initStressTask type: "

    .line 3657
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 3659
    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 3661
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->stress:I

    .line 3662
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->stress:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 3663
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->stress:I

    if-nez p1, :cond_1

    .line 3665
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {p1, v1, v4, v5, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryHeart(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 3667
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3668
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->stress:I

    .line 3669
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->stress:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3673
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initStressTask exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3652
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 3680
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3682
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initStressTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->delay_show_ui_timeout:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
