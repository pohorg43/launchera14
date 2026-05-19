.class public Lcom/oplus/zoom/OplusZoomFeature;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile sInstance:Lcom/oplus/zoom/OplusZoomFeature;


# instance fields
.field private mDragAndDropPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

.field private mZoomController:Lcom/oplus/zoom/ZoomController;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/zoom/OplusZoomFeature;
    .registers 2

    sget-object v0, Lcom/oplus/zoom/OplusZoomFeature;->sInstance:Lcom/oplus/zoom/OplusZoomFeature;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/zoom/OplusZoomFeature;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/zoom/OplusZoomFeature;->sInstance:Lcom/oplus/zoom/OplusZoomFeature;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/zoom/OplusZoomFeature;

    invoke-direct {v1}, Lcom/oplus/zoom/OplusZoomFeature;-><init>()V

    sput-object v1, Lcom/oplus/zoom/OplusZoomFeature;->sInstance:Lcom/oplus/zoom/OplusZoomFeature;

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
    sget-object v0, Lcom/oplus/zoom/OplusZoomFeature;->sInstance:Lcom/oplus/zoom/OplusZoomFeature;

    return-object v0
.end method


# virtual methods
.method public hasShellZoomFeature()Z
    .registers 1

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_supportZoomTaskController()Z

    move-result p0

    return p0
.end method

.method public injectDragAndDropControllerEx(Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/OplusZoomFeature;->mDragAndDropPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    return-void
.end method

.method public injectZoomController(Lcom/oplus/zoom/ZoomController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/OplusZoomFeature;->mZoomController:Lcom/oplus/zoom/ZoomController;

    return-void
.end method

.method public release()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/OplusZoomFeature;->mDragAndDropPolicyExt:Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->releaseSurface()V

    :cond_7
    return-void
.end method
