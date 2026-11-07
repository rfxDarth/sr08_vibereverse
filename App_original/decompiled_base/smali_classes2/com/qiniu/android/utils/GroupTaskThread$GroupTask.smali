.class public abstract Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;
.super Ljava/lang/Object;
.source "GroupTaskThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/utils/GroupTaskThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GroupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;
    }
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field protected state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;->Waiting:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    iput-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;->Waiting:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    iput-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    .line 158
    iput-object p1, p0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;)V
.end method

.method public taskComplete()V
    .locals 1

    .line 172
    sget-object v0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;->Complete:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    iput-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    return-void
.end method
