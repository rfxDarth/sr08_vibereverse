.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initTempTask2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected bodyTemp:F

.field protected maxTemp:F

.field protected surfaceTemp:F

.field protected tempUnit:Ljava/lang/String;

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

    .line 3888
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/high16 p1, 0x42480000    # 50.0f

    .line 3891
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->maxTemp:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V
    .locals 0

    .line 3888
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

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

    .line 3888
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 3896
    :try_start_0
    array-length p1, p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 3898
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3963
    :catch_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v0, "initStep runOnUiThread Exception occured"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_0

    .line 3960
    :catch_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v0, "initStep runOnUiThread IllegalStateException occured"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_0

    .line 3957
    :catch_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v0, "initStep runOnUiThread NullPointerException occured"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    :cond_0
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

    .line 3888
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 3970
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3972
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initTempTask2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->delay_show_ui_timeout:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
