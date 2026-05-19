.class public final Lpantanal/app/groupcard/plugininterface/IGroupCard$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/groupcard/plugininterface/IGroupCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic bindGroupCardInfo$default(Lpantanal/app/groupcard/plugininterface/IGroupCard;Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;ILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-interface {p0, p1, p2, p3}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->bindGroupCardInfo(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: bindGroupCardInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getChildCardDataInfo$default(Lpantanal/app/groupcard/plugininterface/IGroupCard;ZILjava/lang/Object;)Ljava/util/List;
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-interface {p0, p1}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->getChildCardDataInfo(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getChildCardDataInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInnerCard(Lpantanal/app/groupcard/plugininterface/IGroupCard;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lpantanal/app/Card$DefaultImpls;->getInnerCard(Lpantanal/app/Card;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getView(Lpantanal/app/groupcard/plugininterface/IGroupCard;)Landroid/view/View;
    .registers 1

    invoke-static {p0}, Lpantanal/app/Card$DefaultImpls;->getView(Lpantanal/app/Card;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static onForceUpdate(Lpantanal/app/groupcard/plugininterface/IGroupCard;Lpantanal/app/ICardLifecycle$LifeCycleValue;)V
    .registers 3

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lpantanal/app/Card$DefaultImpls;->onForceUpdate(Lpantanal/app/Card;Lpantanal/app/ICardLifecycle$LifeCycleValue;)V

    return-void
.end method

.method public static onRenderFailed(Lpantanal/app/groupcard/plugininterface/IGroupCard;)V
    .registers 1

    invoke-static {p0}, Lpantanal/app/Card$DefaultImpls;->onRenderFailed(Lpantanal/app/Card;)V

    return-void
.end method

.method public static onScrollState(Lpantanal/app/groupcard/plugininterface/IGroupCard;I)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/Card$DefaultImpls;->onScrollState(Lpantanal/app/Card;I)V

    return-void
.end method

.method public static setUIDataInterceptor(Lpantanal/app/groupcard/plugininterface/IGroupCard;Lpantanal/app/UIDataInterceptor;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lpantanal/app/Card$DefaultImpls;->setUIDataInterceptor(Lpantanal/app/Card;Lpantanal/app/UIDataInterceptor;)V

    return-void
.end method
