.class public final Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragOverWindowClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SC"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-static {p2}, Lcom/heytap/assist/ILauncherDrag$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherDrag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->setService(Lcom/heytap/assist/ILauncherDrag;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onServiceConnected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getService()Lcom/heytap/assist/ILauncherDrag;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", dragCallbackImpl= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getDragCallbackImpl()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Drag"

    const-string v0, "LauncherClient-DragOverWindowClient"

    invoke-static {p2, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getDragCallbackImpl()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object p1

    if-eqz p1, :cond_73

    const-string p1, "dragCallback = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getDragCallbackImpl()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->getCallBackImpl()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object v1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_54
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getService()Lcom/heytap/assist/ILauncherDrag;

    move-result-object p1

    if-eqz p1, :cond_61

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getDragCallbackImpl()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/heytap/assist/ILauncherDrag;->setLauncherDragCallback(Lcom/heytap/assist/ILauncherDragCallback;)V

    :cond_61
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getConnectedCallback()Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;

    move-result-object p1

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getService()Lcom/heytap/assist/ILauncherDrag;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;->onServiceConnectedChanged(Lcom/heytap/assist/ILauncherDrag;)V
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_73
    :goto_73
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->setService(Lcom/heytap/assist/ILauncherDrag;)V

    const-string v0, "Drag"

    const-string v1, "LauncherClient-DragOverWindowClient"

    const-string/jumbo v2, "onServiceDisconnected:"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getConnectedCallback()Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;->onServiceConnectedChanged(Lcom/heytap/assist/ILauncherDrag;)V

    :cond_19
    return-void
.end method
