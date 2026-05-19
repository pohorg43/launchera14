.class public interface abstract Lpantanal/app/groupcard/plugininterface/IGroupCard;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/Card;
.implements Lpantanal/app/groupcard/popup/IPopupPartner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/plugininterface/IGroupCard$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract bindGroupCardInfo(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)V
.end method

.method public abstract getChildCardDataInfo(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisplayState()Lpantanal/app/groupcard/GroupCardDisplayState;
.end method

.method public abstract getIcon()Landroid/view/View;
.end method

.method public abstract getLifeCycleState()Lpantanal/app/ICardLifecycle$LifeCycleValue;
.end method

.method public abstract getLoadingState()Lpantanal/app/groupcard/GroupCardLoadingState;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract playAnimation(Lpantanal/app/groupcard/plugininterface/AnimAction;)V
.end method

.method public abstract refresh()Z
.end method

.method public abstract setChildCardDataInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setChildCardJumpAction(Landroid/view/View;)V
.end method

.method public abstract setCurrentLocation(I)V
.end method

.method public abstract setDrawPicForDrag(Z)V
.end method

.method public abstract setGap(I)V
.end method

.method public abstract setIsBright(Z)V
.end method

.method public abstract setMargin(I)V
.end method

.method public abstract setRefreshable(Z)V
.end method

.method public abstract startGroupCardExposure()V
.end method
