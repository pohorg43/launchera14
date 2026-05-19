.class public final Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/plugininterface/IGroupCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "DefaultGroupCardWrapper"


# instance fields
.field private defaultGroupCardView:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper;->Companion:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardConfig;)V
    .registers 18

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "groupCardConfig"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v4, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init,groupCardConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "DefaultGroupCardWrapper"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v1, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, p0

    iput-object v1, v2, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper;->defaultGroupCardView:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;

    invoke-virtual {v1, v0}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->initView(Lpantanal/app/groupcard/GroupCardConfig;)V

    return-void
.end method


# virtual methods
.method public bindGroupCardInfo(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "groupCardInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getCardType()Lpantanal/app/bean/CardCategory;
    .registers 1

    sget-object p0, Lpantanal/app/bean/CardCategory;->GROUP_CARD:Lpantanal/app/bean/CardCategory;

    return-object p0
.end method

.method public getChildCardDataInfo(Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayState()Lpantanal/app/groupcard/GroupCardDisplayState;
    .registers 1

    sget-object p0, Lpantanal/app/groupcard/GroupCardDisplayState;->NOT_DISPLAYED:Lpantanal/app/groupcard/GroupCardDisplayState;

    return-object p0
.end method

.method public getIcon()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInnerCard()Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lpantanal/app/groupcard/plugininterface/IGroupCard$DefaultImpls;->getInnerCard(Lpantanal/app/groupcard/plugininterface/IGroupCard;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLifeCycleState()Lpantanal/app/ICardLifecycle$LifeCycleValue;
    .registers 1

    sget-object p0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Unknown:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    return-object p0
.end method

.method public getLoadingState()Lpantanal/app/groupcard/GroupCardLoadingState;
    .registers 1

    sget-object p0, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_NONE:Lpantanal/app/groupcard/GroupCardLoadingState;

    return-object p0
.end method

.method public getPopupItems()Lpantanal/app/groupcard/popup/Popup;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public getUIData()Lpantanal/app/bean/PantanalUIData;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "DefaultGroupCardWrapper"

    const-string v2, "getView"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper;->defaultGroupCardView:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;

    return-object p0
.end method

.method public load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
    .registers 3

    const-string p0, "bundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public load(Lpantanal/app/OnLoadCallback;)V
    .registers 2

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onDragEnd(Z)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onDragStart()V
    .registers 1

    return-void
.end method

.method public onForceUpdate(Lpantanal/app/ICardLifecycle$LifeCycleValue;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/groupcard/plugininterface/IGroupCard$DefaultImpls;->onForceUpdate(Lpantanal/app/groupcard/plugininterface/IGroupCard;Lpantanal/app/ICardLifecycle$LifeCycleValue;)V

    return-void
.end method

.method public onHide()V
    .registers 1

    return-void
.end method

.method public onHostChange(Ljava/lang/String;)V
    .registers 13

    const-string p0, "jsonString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const-string p1, "onHostChange,jsonString = "

    invoke-static {p1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DefaultGroupCardWrapper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onPopupStateChange(Z)V
    .registers 2

    return-void
.end method

.method public onRenderFailed()V
    .registers 1

    invoke-static {p0}, Lpantanal/app/groupcard/plugininterface/IGroupCard$DefaultImpls;->onRenderFailed(Lpantanal/app/groupcard/plugininterface/IGroupCard;)V

    return-void
.end method

.method public onScrollState(I)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/groupcard/plugininterface/IGroupCard$DefaultImpls;->onScrollState(Lpantanal/app/groupcard/plugininterface/IGroupCard;I)V

    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method

.method public onSubscribe()V
    .registers 1

    return-void
.end method

.method public onUnsubscribe()V
    .registers 1

    return-void
.end method

.method public playAnimation(Lpantanal/app/groupcard/plugininterface/AnimAction;)V
    .registers 14

    const-string v0, "animAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAnimation,animAction:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DefaultGroupCardWrapper"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper;->defaultGroupCardView:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;

    if-eqz p0, :cond_2d

    invoke-virtual {p0, p1}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->playAnimation(Lpantanal/app/groupcard/plugininterface/AnimAction;)V

    :cond_2d
    return-void
.end method

.method public refresh()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public releaseView()V
    .registers 1

    return-void
.end method

.method public setChildCardDataInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setChildCardJumpAction(Landroid/view/View;)V
    .registers 2

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentLocation(I)V
    .registers 2

    return-void
.end method

.method public setDrawPicForDrag(Z)V
    .registers 2

    return-void
.end method

.method public setGap(I)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "setGap,gap:"

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DefaultGroupCardWrapper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public setIsBright(Z)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "setIsBright,isBright:"

    invoke-static {p0, p1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DefaultGroupCardWrapper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public setMargin(I)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "setMargin,margin:"

    invoke-static {v1, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DefaultGroupCardWrapper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper;->defaultGroupCardView:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p1}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->setMargin(I)V

    :cond_1d
    return-void
.end method

.method public setRefreshable(Z)V
    .registers 2

    return-void
.end method

.method public setUIDataInterceptor(Lpantanal/app/UIDataInterceptor;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/groupcard/plugininterface/IGroupCard$DefaultImpls;->setUIDataInterceptor(Lpantanal/app/groupcard/plugininterface/IGroupCard;Lpantanal/app/UIDataInterceptor;)V

    return-void
.end method

.method public startGroupCardExposure()V
    .registers 1

    return-void
.end method
