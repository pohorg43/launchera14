.class public Lcom/oplus/zoom/common/ReflectionHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ReflectionHelper"

.field private static sOplusActivityManager:Ljava/lang/Object;

.field private static final sOplusActivityManagerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sZoomManagerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sZoomTaskManagerInternal:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "com.oplus.zoomwindow.OplusZoomTaskManagerInternal"

    invoke-static {v0}, Lcom/oplus/zoom/common/ReflectionHelper;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    const-string v0, "android.app.OplusActivityManager"

    invoke-static {v0}, Lcom/oplus/zoom/common/ReflectionHelper;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sOplusActivityManagerClazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OplusActivityManager_getRenderThreadTid(I)I
    .registers 7

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sOplusActivityManagerClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "getRenderThreadTid"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getOplusActivityManager()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2c

    :catchall_2c
    return v1
.end method

.method public static OplusActivityManager_setInputConsumerEnabled(ZLandroid/view/IRecentsAnimationController;)Z
    .registers 9

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sOplusActivityManagerClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "setInputConsumerEnabled"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Landroid/view/IRecentsAnimationController;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getOplusActivityManager()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v1

    aput-object p1, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_38
    return v1
.end method

.method public static OplusZoomTaskManager_onTransitionEnd(I)V
    .registers 7

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "onTransitionEnd"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_25

    :catchall_25
    return-void
.end method

.method public static OplusZoomTaskManager_onTransitionStart()V
    .registers 4

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "onTransitionStart"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    goto :goto_33

    :catchall_1c
    move-exception v0

    const-string v1, "OplusZoomTaskManager_onTransitionStart error:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReflectionHelper"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public static OplusZoomTaskManager_onZoomRotateChanged(IILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 11

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "onZoomRotateChanged"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_35

    :catchall_35
    return-void
.end method

.method public static OplusZoomTaskManager_onZoomStateChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 7

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "onZoomStateChanged"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_21

    :catchall_21
    return-void
.end method

.method public static OplusZoomTaskManager_recentAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z
    .registers 21

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "recentAnimationFinished"

    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v7, Landroid/graphics/Rect;

    const/4 v8, 0x2

    aput-object v7, v4, v8

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const-class v5, Landroid/os/Bundle;

    const/4 v9, 0x4

    aput-object v5, v4, v9

    const-class v5, Landroid/view/IRecentsAnimationController;

    const/4 v10, 0x5

    aput-object v5, v4, v10

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x6

    aput-object v5, v4, v11

    const/4 v12, 0x7

    aput-object v5, v4, v12

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p4, v3, v9

    aput-object p5, v3, v10

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_68
    .catchall {:try_start_6 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6d
    return v1
.end method

.method public static OplusZoomTaskManager_registerZoomTaskListener(Lcom/oplus/zoomwindow/IOplusZoomTaskListener;)Z
    .registers 7

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "registerZoomTaskListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_28

    :catchall_28
    return v1
.end method

.method public static OplusZoomTaskManager_requestChangeZoomTask(Landroid/window/WindowContainerToken;IZ)V
    .registers 11

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "requestChangeZoomTask"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/window/WindowContainerToken;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_37

    :catchall_37
    return-void
.end method

.method public static OplusZoomTaskManager_setInputToken(Landroid/window/WindowContainerToken;Landroid/os/IBinder;)V
    .registers 9

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "setInputToken"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/window/WindowContainerToken;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/IBinder;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_28

    :catchall_28
    return-void
.end method

.method public static OplusZoomTaskManager_supportZoomTaskController()Z
    .registers 4

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "supportZoomTaskController"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_22

    :catchall_22
    return v1
.end method

.method public static OplusZoomTaskManager_unregisterZoomTaskListener(Lcom/oplus/zoomwindow/IOplusZoomTaskListener;)Z
    .registers 7

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "unregisterZoomTaskListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/oplus/zoomwindow/IOplusZoomTaskListener;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/zoom/common/ReflectionHelper;->getZoomTaskManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_28

    :catchall_28
    return v1
.end method

.method private static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOplusActivityManager()Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sOplusActivityManager:Ljava/lang/Object;

    if-nez v0, :cond_1c

    :try_start_4
    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sOplusActivityManagerClazz:Ljava/lang/Class;

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sOplusActivityManager:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sOplusActivityManager:Ljava/lang/Object;

    return-object v0
.end method

.method private static getZoomTaskManagerInternal()Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomTaskManagerInternal:Ljava/lang/Object;

    if-nez v0, :cond_1c

    :try_start_4
    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomManagerClazz:Ljava/lang/Class;

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomTaskManagerInternal:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    sget-object v0, Lcom/oplus/zoom/common/ReflectionHelper;->sZoomTaskManagerInternal:Ljava/lang/Object;

    return-object v0
.end method
