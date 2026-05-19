.class public final Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;
.super Lcom/heytap/assist/ILauncherDragCallback$Stub;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;

.field public static final MSG_ADD_CARD_TO_LAUNCHER:I = 0xe

.field public static final MSG_DRAG_STATE_END:I = 0xc

.field public static final MSG_DRAG_STATE_START:I = 0xa

.field public static final MSG_EDIT_STATE_CHANGED:I = 0xb

.field public static final MSG_SYNC_EVENT:I = 0xd

.field public static final TAG:Ljava/lang/String; = "LauncherDragCallbackImp"


# instance fields
.field private callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->Companion:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/dragndrop/IDragCallback;)V
    .registers 3

    invoke-direct {p0}, Lcom/heytap/assist/ILauncherDragCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addCardToLauncher(I)V
    .registers 4

    const-string v0, "addCardToLauncher, cardType = "

    const-string v1, "LauncherDragCallbackImp"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final getCallBackImpl()Lcom/android/launcher3/dragndrop/IDragCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-object p0
.end method

.method public final getMUIHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getSingleCardNum(I)I
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->getSingleCardNum(I)I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    const-string v1, "LauncherDragCallbackImp"

    const/4 v2, 0x0

    if-nez v0, :cond_40

    const-string v0, "handleMessage, callBackImpl is null. p.what = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_16

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_17

    :cond_16
    move-object v3, v2

    :goto_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "this = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , DIFManager.callbackImpl = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getDragCallbackProxy()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object v3

    if-eqz v3, :cond_35

    iget-object v3, v3, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    goto :goto_36

    :cond_35
    move-object v3, v2

    :goto_36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    if-eqz p1, :cond_49

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4a

    :cond_49
    move-object v0, v2

    :goto_4a
    const/16 v3, 0xa

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.String"

    const/4 v5, 0x1

    if-nez v0, :cond_53

    goto :goto_6f

    :cond_53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_6f

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz p0, :cond_109

    sget-object v0, Lcom/android/launcher3/dragndrop/DragCardInfo;->Companion:Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;->convertDragInfo(Ljava/lang/String;)Lcom/android/launcher3/dragndrop/DragCardInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->onStartWidgetDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)V

    goto/16 :goto_109

    :cond_6f
    :goto_6f
    const/16 v3, 0xb

    if-nez v0, :cond_74

    goto :goto_91

    :cond_74
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_91

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz p0, :cond_109

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->onEditStateChanged(Z)V

    goto/16 :goto_109

    :cond_91
    :goto_91
    const/16 v3, 0xc

    if-nez v0, :cond_96

    goto :goto_b1

    :cond_96
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_b1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz p0, :cond_109

    sget-object v0, Lcom/android/launcher3/dragndrop/DragResultInfo;->Companion:Lcom/android/launcher3/dragndrop/DragResultInfo$Companion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragResultInfo$Companion;->convertResultInfo(Ljava/lang/String;)Lcom/android/launcher3/dragndrop/DragResultInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->onWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V

    goto :goto_109

    :cond_b1
    :goto_b1
    const/16 v3, 0xd

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Int"

    if-nez v0, :cond_b9

    goto :goto_d2

    :cond_b9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_d2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz p0, :cond_109

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->onSyncEvent(I)V

    goto :goto_109

    :cond_d2
    :goto_d2
    const/16 v3, 0xe

    if-nez v0, :cond_d7

    goto :goto_f0

    :cond_d7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_f0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz p0, :cond_109

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->addCardToLauncher(I)V

    goto :goto_109

    :cond_f0
    :goto_f0
    const-string p0, "Undefined msg what = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_fe

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_fe
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_109
    :goto_109
    return v5
.end method

.method public onEditStateChanged(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSyncEvent(I)V
    .registers 4

    const-string/jumbo v0, "onSyncEvent eventId = "

    const-string v1, "LauncherDragCallbackImp"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWidgetDragEnd(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->requestBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    :cond_10
    return v1
.end method

.method public sendCardInfoList(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz p0, :cond_14

    sget-object v0, Lcom/android/launcher3/dragndrop/CardInfoList;->Companion:Lcom/android/launcher3/dragndrop/CardInfoList$Companion;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/CardInfoList$Companion;->convertToCardInfoList(Ljava/lang/String;)Lcom/android/launcher3/dragndrop/CardInfoList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->receiveCardInfoList(Lcom/android/launcher3/dragndrop/CardInfoList;)V

    :cond_14
    return-void
.end method

.method public final setCallBackImpl(Lcom/android/launcher3/dragndrop/IDragCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->callBackImpl:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-void
.end method

.method public startWidgetDrag(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
