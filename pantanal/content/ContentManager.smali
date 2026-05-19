.class public interface abstract Lpantanal/content/ContentManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getCardConfig(I)Lpantanal/app/bean/CardConfigInfo;
.end method

.method public abstract getCardConfigsByServiceId(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGadgetConfig(Ljava/lang/String;)Lpantanal/content/GadgetConfig;
.end method

.method public abstract queryFluidCloud(Ljava/lang/String;)Lpantanal/decision/FluidCloudInfo;
.end method

.method public abstract queryFluidClouds(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lpantanal/decision/FluidCloudInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerGadgetConfigCallback(Lpantanal/content/GadgetObserver;)V
.end method

.method public abstract unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterGadgetConfigCallback(Lpantanal/content/GadgetObserver;)V
.end method

.method public abstract updateFluidCloud(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)J
.end method
