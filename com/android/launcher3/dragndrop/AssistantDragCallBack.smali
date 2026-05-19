.class public final Lcom/android/launcher3/dragndrop/AssistantDragCallBack;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/IDragCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/AssistantDragCallBack$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dragndrop/AssistantDragCallBack$Companion;

.field private static final TAG:Ljava/lang/String; = "AssistantDragCallBack"


# instance fields
.field private launcherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/AssistantDragCallBack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->Companion:Lcom/android/launcher3/dragndrop/AssistantDragCallBack$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(ILcom/android/launcher/Launcher;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->addCardToLauncher$lambda$8$lambda$7(ILcom/android/launcher/Launcher;)V

    return-void
.end method

.method private static final addCardToLauncher$lambda$8$lambda$7(ILcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "$this_run"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOplusOnResumeCallback gameCards cardType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistantDragCallBack"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher/Launcher;->tryAddCardByStore(I)V

    return-void
.end method


# virtual methods
.method public addCardToLauncher(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const-string v1, "gameCards"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Li4/k;->q([II)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lcom/android/launcher/b0;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/b0;-><init>(ILcom/android/launcher/Launcher;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/Launcher;->addOplusOnResumeCallback(Ljava/lang/Runnable;)V

    goto :goto_2c

    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->tryAddCardByStore(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public checkoutAssistantAllowDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)I
    .registers 4

    const-string v0, "dragCardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    const/4 v0, -0x1

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.LauncherCallbacksImp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->checkoutAssistantAllowDrag(Ljava/lang/String;)I

    move-result p0

    move v0, p0

    :cond_2d
    return v0
.end method

.method public getSingleCardNum(I)I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getCardHost()Lcom/android/launcher3/card/LauncherCardHost;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/card/LauncherCardHost;->getCardCountByType(Lcom/android/launcher3/Launcher;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method public notifyStartWidgetDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 2

    const-string p0, "dragCardInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->notifyStartWidgetDrag(Ljava/lang/String;)V

    return-void
.end method

.method public notifyWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V
    .registers 2

    const-string/jumbo p0, "resultInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragResultInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->notifyWidgetDragEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onEditStateChanged(Z)V
    .registers 5

    const-string/jumbo v0, "onEditStateChanged: enter = "

    const-string v1, "AssistantDragCallBack"

    invoke-static {v0, p1, v1}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_d

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    goto :goto_f

    :cond_d
    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_f
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.statemanager.OplusStateManager<*>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/statemanager/OplusStateManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/OplusStateManager;->stateChangeFromAssistant(Z)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    if-nez p0, :cond_3c

    const-string/jumbo p0, "onEditStateChanged: mLauncher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public onStartWidgetDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 4

    const-string v0, "dragCardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartWidgetDrag: dragCardInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistantDragCallBack"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5d

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_54

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_51

    sget-object p1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->isOneHandedModeActivated()Z

    move-result p1

    if-nez p1, :cond_51

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result p1

    if-nez p1, :cond_51

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_51
    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_55

    :cond_54
    const/4 p0, 0x0

    :goto_55
    if-nez p0, :cond_5d

    const-string/jumbo p0, "onStartWidgetDrag: mLauncher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    return-void
.end method

.method public onSyncEvent(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->onSyncEvent(I)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    if-nez p0, :cond_1f

    const-string p0, "AssistantDragCallBack"

    const-string/jumbo p1, "onSyncEvent: mLauncher is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public onWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V
    .registers 9

    const-string/jumbo v0, "resultInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWidgetDragEnd: resultInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistantDragCallBack"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    if-eqz p0, :cond_e6

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragResultInfo;->getResult()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_a5

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragResultInfo;->getSource()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a5

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->getOriginalView()Landroid/view/View;

    move-result-object v2

    const-string v4, "dragEventHandler.originalView"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v2, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v4, :cond_52

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v4, v3}, Lcom/oplus/card/manager/domain/ICardView;->executeCardDestroy(Z)V

    invoke-virtual {v4}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v4

    goto :goto_5f

    :cond_52
    instance-of v4, v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v4, :cond_5e

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v4

    goto :goto_5f

    :cond_5e
    move-object v4, v0

    :goto_5f
    const-string/jumbo v5, "onWidgetDragEnd: mDragInfo = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", cardView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OLauncher"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v5, :cond_a0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iput-boolean v3, v5, Lcom/android/launcher3/CellLayout$CellInfo;->removed:Z

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->isDraggingInLauncher()Z

    move-result v5

    if-nez v5, :cond_a5

    if-eqz v2, :cond_a5

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    goto :goto_a5

    :cond_a0
    if-eqz v2, :cond_a5

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    :cond_a5
    :goto_a5
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->isDraggingInLauncher()Z

    move-result v2

    if-nez v2, :cond_dd

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_c0
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragResultInfo;->getSource()I

    move-result v2

    if-ne v2, v3, :cond_dd

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragResultInfo;->getHostId()I

    move-result v2

    if-nez v2, :cond_dd

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getCardManager()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    if-eqz v2, :cond_dd

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragResultInfo;->getCardType()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragResultInfo;->getCardId()I

    move-result p1

    invoke-virtual {v2, v4, p1, v3}, Lcom/oplus/card/manager/domain/CardManager;->destroyCard(III)V

    :cond_dd
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->setOriginalView(Landroid/view/View;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    :cond_e6
    if-nez v0, :cond_ee

    const-string/jumbo p0, "onWidgetDragEnd: mLauncher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    return-void
.end method

.method public receiveCardInfoList(Lcom/android/launcher3/dragndrop/CardInfoList;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/LauncherUtil;->toCardIdInfoList(Lcom/android/launcher3/dragndrop/CardInfoList;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_f

    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/card/manager/domain/CardManager;->saveCardInfos(Ljava/util/List;)V

    :cond_f
    return-void
.end method

.method public final releaseLauncher()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public requestBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->grantBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public sendCardInfoList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendCardInfoList: list.size = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OLauncher"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/LauncherUtil;->toCardInfoList(Ljava/util/List;)Lcom/android/launcher3/dragndrop/CardInfoList;

    move-result-object p0

    if-nez p0, :cond_2d

    const-string/jumbo p0, "sendCardInfoList: cardInfoList is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/CardInfoList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->sendCardInfoList(Ljava/lang/String;)V

    return-void
.end method
