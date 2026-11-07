.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3337
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "current heart rate: "

    .line 3341
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->heart:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 3342
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v1, 0x7f130208

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3343
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d %s"

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget v3, v3, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->heart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3344
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->heart:I

    if-gtz v2, :cond_0

    .line 3345
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s %s"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "--"

    aput-object v5, v4, v6

    aput-object v0, v4, v3

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3347
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvHeartCurrent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3349
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->heart:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit16 v0, v0, 0xa0

    .line 3350
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 3351
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/16 v5, 0xe10

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x18

    invoke-static/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$5400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3354
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$initHeartTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "initHeart onPostExecute Exception occured"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    return-void
.end method
