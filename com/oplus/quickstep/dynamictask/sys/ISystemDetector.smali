.class public interface abstract Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract isActive()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract register(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract type()I
.end method
