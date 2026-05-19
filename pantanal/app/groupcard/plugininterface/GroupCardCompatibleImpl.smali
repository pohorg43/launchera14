.class public Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/plugininterface/IGroupCard;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "GroupCardCompatibleImpl"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->Companion:Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final defaultLog(Ljava/lang/String;)V
    .registers 13

    const-string p0, "warning, default impl! maybe version is not compatible, methodName:"

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "GroupCardCompatibleImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindGroupCardInfo(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)V
    .registers 4

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "groupCardInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bindGroupCardInfo"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public getCardType()Lpantanal/app/bean/CardCategory;
    .registers 2

    const-string v0, "getCardType"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/bean/CardCategory;->UNKNOWN:Lpantanal/app/bean/CardCategory;

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

    const-string p1, "getChildCardDataInfo"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public getDisplayState()Lpantanal/app/groupcard/GroupCardDisplayState;
    .registers 2

    const-string v0, "getDisplayState"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/groupcard/GroupCardDisplayState;->NOT_DISPLAYED:Lpantanal/app/groupcard/GroupCardDisplayState;

    return-object p0
.end method

.method public getIcon()Landroid/view/View;
    .registers 2

    const-string v0, "getIcon"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInnerCard()Ljava/lang/Object;
    .registers 2

    const-string v0, "getInnerCard"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLifeCycleState()Lpantanal/app/ICardLifecycle$LifeCycleValue;
    .registers 2

    const-string v0, "getLifeCycleState"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Unknown:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    return-object p0
.end method

.method public getLoadingState()Lpantanal/app/groupcard/GroupCardLoadingState;
    .registers 2

    const-string v0, "getLoadingState"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_NONE:Lpantanal/app/groupcard/GroupCardLoadingState;

    return-object p0
.end method

.method public getPopupItems()Lpantanal/app/groupcard/popup/Popup;
    .registers 2

    const-string v0, "getPopupItems"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    const-string v0, "getTitle"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getUIData()Lpantanal/app/bean/PantanalUIData;
    .registers 2

    const-string v0, "getUIData"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    const-string v0, "getView"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
    .registers 4

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "load with bundle"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public load(Lpantanal/app/OnLoadCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "load"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .registers 2

    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onDragEnd(Z)Z
    .registers 2

    const-string p1, "onDragEnd"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onDragStart()V
    .registers 2

    const-string v0, "onDragStart"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onForceUpdate(Lpantanal/app/ICardLifecycle$LifeCycleValue;)V
    .registers 3

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onForceUpdate"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onHide()V
    .registers 2

    const-string v0, "onHide"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onHostChange(Ljava/lang/String;)V
    .registers 3

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "onHostChange,jsonString = "

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onPopupStateChange(Z)V
    .registers 2

    const-string p1, "onPopupStateChange"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onRenderFailed()V
    .registers 2

    const-string v0, "onRenderFailed"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onScrollState(I)V
    .registers 2

    const-string p1, "onScrollState"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onShow()V
    .registers 2

    const-string v0, "onShow"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe()V
    .registers 2

    const-string v0, "onSubscribe"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onUnsubscribe()V
    .registers 2

    const-string v0, "onUnsubscribe"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public playAnimation(Lpantanal/app/groupcard/plugininterface/AnimAction;)V
    .registers 3

    const-string v0, "animAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playAnimation"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public refresh()Z
    .registers 2

    const-string v0, "refresh"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .registers 2

    const-string v0, "release"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public releaseView()V
    .registers 2

    const-string v0, "releaseView"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setChildCardDataInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "setChildCardDataInfo"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setChildCardJumpAction(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "setChildCardJumpAction"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentLocation(I)V
    .registers 2

    const-string p1, "setCurrentLocation"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setDrawPicForDrag(Z)V
    .registers 2

    const-string p1, "setDrawPicForDrag"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setGap(I)V
    .registers 2

    const-string p1, "gap"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setIsBright(Z)V
    .registers 2

    const-string p1, "setIsBright"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setMargin(I)V
    .registers 2

    const-string p1, "setMargin"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setRefreshable(Z)V
    .registers 2

    const-string p1, "setRefreshable"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setUIDataInterceptor(Lpantanal/app/UIDataInterceptor;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "setUIDataInterceptor"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public startGroupCardExposure()V
    .registers 2

    const-string v0, "startGroupCardExposure"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/GroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method
