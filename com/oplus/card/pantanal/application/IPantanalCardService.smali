.class public interface abstract Lcom/oplus/card/pantanal/application/IPantanalCardService;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract createCard(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Landroid/os/Bundle;Z)Lpantanal/app/Card;
.end method

.method public abstract getServiceDecision()Lpantanal/decision/IServiceDecision;
.end method

.method public abstract init(Landroid/content/Context;Lpantanal/app/bean/Configuration;)V
.end method

.method public abstract loadSeedlingPlugin(Landroid/content/Context;)V
.end method

.method public abstract registerCardConfigCallback(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

.method public abstract unregisterCardConfigCallback(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
