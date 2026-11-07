.class public interface abstract Lnet/grandcentrix/tray/core/PreferenceAccessor;
.super Ljava/lang/Object;
.source "PreferenceAccessor.java"


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
.method public abstract clear()Z
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getAll()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;,
            Lnet/grandcentrix/tray/core/WrongTypeException;
        }
    .end annotation
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/WrongTypeException;
        }
    .end annotation
.end method

.method public abstract getInt(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;,
            Lnet/grandcentrix/tray/core/WrongTypeException;
        }
    .end annotation
.end method

.method public abstract getInt(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/WrongTypeException;
        }
    .end annotation
.end method

.method public abstract getLong(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;,
            Lnet/grandcentrix/tray/core/WrongTypeException;
        }
    .end annotation
.end method

.method public abstract getLong(Ljava/lang/String;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/WrongTypeException;
        }
    .end annotation
.end method

.method public abstract getPref(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/ItemNotFoundException;
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract put(Ljava/lang/String;F)Z
.end method

.method public abstract put(Ljava/lang/String;I)Z
.end method

.method public abstract put(Ljava/lang/String;J)Z
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract put(Ljava/lang/String;Z)Z
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method

.method public abstract wipe()Z
.end method
