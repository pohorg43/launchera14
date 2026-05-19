.class public interface abstract Lcom/oplus/card/manager/domain/ICardManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/ICardManager$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract allocateCardId(I)I
.end method

.method public abstract createCard(IIILcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/launcher3/card/seed/SeedParams;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)",
            "Lcom/oplus/card/manager/domain/model/CardModel;"
        }
    .end annotation
.end method

.method public abstract createCard(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)",
            "Lcom/oplus/card/manager/domain/model/CardModel;"
        }
    .end annotation
.end method

.method public abstract deleteCardId(III)V
.end method

.method public abstract destroyCard(III)V
.end method

.method public abstract getShowingTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract monitorFinishInitEvent(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveCardInfos(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
