.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initBloodTask"
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
.field protected fatigue:I

.field protected iastolic:I

.field protected oxygen:I

.field protected systolic:I

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

    .line 4121
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V
    .locals 0

    .line 4121
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V

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

    .line 4121
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    .line 4129
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 4131
    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 4136
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->systolic:I

    const/4 v2, 0x1

    .line 4137
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->iastolic:I

    const/4 v3, 0x2

    .line 4138
    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->oxygen:I

    const/4 v3, 0x3

    .line 4139
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->fatigue:I

    .line 4141
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->systolic:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->iastolic:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->oxygen:I

    if-nez v3, :cond_3

    if-nez p1, :cond_3

    .line 4143
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryHeart(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 4145
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "value"

    if-lez v1, :cond_1

    .line 4146
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->systolic:I

    .line 4147
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string/jumbo v1, "shrinkvalue"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->iastolic:I

    .line 4149
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {p1, v1, v4, v5, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryHeart(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 4151
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4152
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->oxygen:I

    .line 4153
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {p1, v1, v4, v5, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryHeart(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 4155
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->fatigue:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4176
    :catch_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v0, "initBlood runOnUiThread Exception occured"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_0

    .line 4170
    :catch_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v0, "initBlood runOnUiThread IllegalStateException occured"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    goto :goto_0

    .line 4167
    :catch_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v0, "initBlood runOnUiThread NullPointerException occured"

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    :cond_3
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

    .line 4121
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 4183
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4185
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initBloodTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->delay_show_ui_timeout:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
