.class public interface abstract Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract exchangeVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initSdk(Landroid/content/Context;)V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract releaseSdk()V
.end method
