.class public Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;
.super Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/observer/OplusZoomStateObserver$ZoomWindowObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusZoomStateObserver"

.field public static final ZOOM_TOP_CHILD_TASK_ID:Ljava/lang/String; = "topChildTaskId"

.field private static volatile sInstance:Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;


# instance fields
.field private final mBackgroundSplitTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mZoomWindowObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/splitscreen/observer/OplusZoomStateObserver$ZoomWindowObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->mZoomWindowObservers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->mBackgroundSplitTasks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;
    .registers 2

    sget-object v0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->sInstance:Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->sInstance:Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;

    invoke-direct {v1}, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;-><init>()V

    sput-object v1, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->sInstance:Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->sInstance:Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;

    return-object v0
.end method


# virtual methods
.method public addForZoomWindowObserver(Lcom/oplus/splitscreen/observer/OplusZoomStateObserver$ZoomWindowObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->mZoomWindowObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onInputMethodChanged(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onZoomWindowDied(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->mZoomWindowObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;->mZoomWindowObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver$ZoomWindowObserver;

    invoke-interface {v2, p1}, Lcom/oplus/splitscreen/observer/OplusZoomStateObserver$ZoomWindowObserver;->onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
