.class public interface abstract Lnet/grandcentrix/tray/core/Migration;
.super Ljava/lang/Object;
.source "Migration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getData()Ljava/lang/Object;
.end method

.method public abstract getPreviousKey()Ljava/lang/String;
.end method

.method public abstract getTrayKey()Ljava/lang/String;
.end method

.method public abstract onPostMigrate(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract shouldMigrate()Z
.end method
