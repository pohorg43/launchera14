.class public interface abstract Lcom/oplus/card/config/domain/ICardConfigInfoManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getAllConfigListForShop(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
.end method

.method public abstract getCardConfigMapSize()I
.end method

.method public abstract getOperatingRecommendForShop(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSeedCardConfig(Ljava/lang/String;II)Lcom/oplus/card/config/domain/model/CardConfigInfo;
.end method

.method public abstract isCardConfigListInit()Z
.end method

.method public abstract loadSeedlingPlugin(Landroid/content/Context;)V
.end method

.method public abstract registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerServiceProxyCardCallback(Landroid/content/Context;)V
.end method

.method public abstract unRegisterServiceProxyCardCallback(Landroid/content/Context;)V
.end method

.method public abstract unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation
.end method
