.class public Lcom/king/zxing/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final COLON:Ljava/lang/String; = ":"

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final PRINTLN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ZXingLite"

.field public static final TAG_FORMAT:Ljava/lang/String; = "%s.%s(L:%d)"

.field public static final VERBOSE:I = 0x2

.field public static final VERTICAL:Ljava/lang/String; = "|"

.field public static final WARN:I = 0x5

.field private static isShowLog:Z = true

.field private static priority:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 172
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 173
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 182
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 183
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 2

    .line 177
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 178
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 235
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 236
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 245
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 246
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2

    .line 240
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 241
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 5

    .line 106
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v2

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const-string p0, "%s.%s(L:%d)"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZXingLite|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCallerStackLogTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    .line 131
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->getStackTraceElement(I)Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriority()I
    .locals 1

    .line 92
    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    return v0
.end method

.method public static getStackTraceElement(I)Ljava/lang/StackTraceElement;
    .locals 1

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .line 193
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 194
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 203
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 204
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Throwable;)V
    .locals 2

    .line 198
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 199
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isShowLog()Z
    .locals 1

    .line 87
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    return v0
.end method

.method public static print(Ljava/lang/Object;)V
    .locals 2

    .line 283
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 284
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .locals 2

    .line 278
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 279
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static printf(Ljava/lang/String;)V
    .locals 2

    .line 295
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 296
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    return-void
.end method

.method public static println(Ljava/lang/Object;)V
    .locals 2

    .line 312
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 313
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .locals 2

    .line 307
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 308
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setPriority(I)V
    .locals 0

    .line 97
    sput p0, Lcom/king/zxing/util/LogUtils;->priority:I

    return-void
.end method

.method public static setShowLog(Z)V
    .locals 0

    .line 82
    sput-boolean p0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    .line 150
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 151
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 161
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 162
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Throwable;)V
    .locals 2

    .line 156
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 157
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .line 214
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 215
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 224
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 225
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    .line 219
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 220
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2

    .line 256
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 257
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 266
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 267
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 2

    .line 261
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 262
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
