.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "closeHeartTask"
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

    .line 1185
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V
    .locals 0

    .line 1185
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

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

    .line 1185
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 7

    .line 1189
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 1193
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    .line 1194
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1196
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "closeHeartTask mode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , delay : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v2, "postDelayed runnableCloseBlood"

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1205
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-object v1
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

    .line 1185
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$closeHeartTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 1215
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
