.class public Lcom/oplus/splitscreen/ReflectionHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sFlexibleWindowClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sFlexibleWindowManager:Ljava/lang/Object;

.field private static final sOSSMIClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sOplusSplitScreenManagerInternal:Ljava/lang/Object;

.field private static sOplusZoomWindowManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "com.oplus.flexiblewindow.FlexibleWindowManager"

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowClazz:Ljava/lang/Class;

    const-string v0, "com.oplus.splitscreen.OplusSplitScreenManagerInternal"

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FlexibleWindowManager_exitFlexibleEmbeddedTask(I)V
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "exitFlexibleEmbeddedTask"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getFlexibleWindowManager()Ljava/lang/Object;

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

.method public static FlexibleWindowManager_isFlexibleTaskEnabled(I)Z
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "isFlexibleTaskEnabled"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getFlexibleWindowManager()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return p0

    :catchall_2d
    return v1
.end method

.method public static FlexibleWindowManager_isInAppInnerSplitScreen(I)Z
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "isInAppInnerSplitScreen"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getFlexibleWindowManager()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static FlexibleWindowManager_isInFlexibleEmbedded(Landroid/app/TaskInfo;)Z
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "isInFlexibleEmbedded"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/TaskInfo;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getFlexibleWindowManager()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_29

    return p0

    :catchall_29
    return v1
.end method

.method public static FlexibleWindowManager_isInPocketStudio(I)Z
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "isInPocketStudio"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getFlexibleWindowManager()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return p0

    :catchall_2d
    return v1
.end method

.method public static FlexibleWindowManager_isSupportPocketStudio(Landroid/content/Context;)Z
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "isSupportPocketStudio"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getFlexibleWindowManager()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_29

    return p0

    :catchall_29
    return v1
.end method

.method public static FlexibleWindowManager_notifyFlexibleTaskEvent(IILandroid/os/Bundle;)V
    .registers 11

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "notifyFlexibleTaskEvent"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/Bundle;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getFlexibleWindowManager()Ljava/lang/Object;

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

.method public static OplusSplitScreenManager_calculateReplaceLayoutRects(ILandroid/content/Intent;IZ)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    const-string v2, "calculateReplaceLayoutRects"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v7, Landroid/content/Intent;

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const/4 v7, 0x2

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    aput-object p1, v3, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v9

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_45

    return-object p0

    :catchall_45
    return-object v1
.end method

.method public static OplusSplitScreenManager_calculateThreeLayoutRects(ILandroid/content/Intent;I)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    const-string v2, "calculateThreeLayoutRects"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v7, Landroid/content/Intent;

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    aput-object p1, v3, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_3a

    return-object p0

    :catchall_3a
    return-object v1
.end method

.method public static OplusSplitScreenManager_getCurrentEmbeddedRects(I)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    const-string v2, "getCurrentEmbeddedRects"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    return-object p0

    :catchall_2a
    return-object v1
.end method

.method public static OplusSplitScreenManager_getCurrentRectForTask(II)Landroid/graphics/Rect;
    .registers 10

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    const-string v2, "getCurrentRectForTask"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_33

    return-object p0

    :catchall_33
    return-object v1
.end method

.method public static OplusSplitScreenManager_getLastLayerForTask(I)I
    .registers 8

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "getLastLayerForTask"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2e

    return p0

    :catchall_2e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static OplusSplitScreenManager_getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    const-string v2, "getRecentUsedApp"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Ljava/util/List;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v8

    aput-object p4, v3, v9

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_47

    return-object p0

    :catchall_47
    return-object v1
.end method

.method public static OplusSplitScreenManager_getWallpaperDisplayAreaSurface()Landroid/view/SurfaceControl;
    .registers 5

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    const-string v2, "getWallpaperDisplayAreaSurface"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    return-object v1
.end method

.method public static OplusSplitScreenManager_hideTargetSplashScreen(I)V
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "hideTargetSplashScreen"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method public static OplusSplitScreenManager_isTopActivityFinishDraw(I)Z
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "isTopActivityFinishDraw"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return p0

    :catchall_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static OplusSplitScreenManager_maintainSplitToZoomTaskState(IZ)V
    .registers 9

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "maintainSplitToZoomTaskState"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_30

    :catchall_30
    return-void
.end method

.method public static OplusSplitScreenManager_moveChildrenTaskToBack(I)Z
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "moveChildrenTaskToBack"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return p0

    :catchall_2d
    return v1
.end method

.method public static OplusSplitScreenManager_notifyFoldUpdatingComplete()V
    .registers 4

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "notifyFoldUpdatingComplete"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1b

    :catchall_1b
    return-void
.end method

.method public static OplusSplitScreenManager_notifySplitRootTaskId(III)V
    .registers 11

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "notifySplitRootTaskId"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_37

    :catchall_37
    return-void
.end method

.method public static OplusSplitScreenManager_registerStackDivider(Landroid/content/Context;Lcom/oplus/splitscreen/IOplusStackDividerConnection;)V
    .registers 9

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "registerStackDivider"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/oplus/splitscreen/IOplusStackDividerConnection;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

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

.method public static OplusSplitScreenManager_removeSelfSplitTaskIfNeed(II)V
    .registers 9

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "removeSelfSplitTaskIfNeed"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2e

    :catchall_2e
    return-void
.end method

.method public static OplusSplitScreenManager_setOverrideRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "setOverrideRemoteAnimations"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/RemoteAnimationDefinition;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_21

    :catchall_21
    return-void
.end method

.method public static OplusSplitScreenManager_setSplitControlBarRegion(Landroid/graphics/Rect;Z)V
    .registers 9

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "setSplitControlBarRegion"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2c

    :catchall_2c
    return-void
.end method

.method public static OplusSplitScreenManager_setSplitRequestedOrientation(I)V
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "setSplitRequestedOrientation"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

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

.method public static OplusSplitScreenManager_setSplitRootTaskAlwaysOnTop(Z)V
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "setSplitRootTaskAlwaysOnTop"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_25

    :catchall_25
    return-void
.end method

.method public static OplusSplitScreenManager_setSplitTasksState(IIZ)V
    .registers 11

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "setSplitTasksState"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3e
    return-void
.end method

.method public static OplusSplitScreenManager_setTaskStateToGestureAnimation(IZ)V
    .registers 9

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "setTaskStateToGestureAnimation"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_30

    :catchall_30
    return-void
.end method

.method public static OplusSplitScreenManager_setWallpaperVisible(Z)V
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "setWallpaperVisible"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_25

    :catchall_25
    return-void
.end method

.method public static OplusSplitScreenManager_startReplaceSplitWhenNormal(ILandroid/content/Intent;II)V
    .registers 13

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "startReplaceSplitWhenNormal"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v6, Landroid/content/Intent;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    aput-object p1, v2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "zoom_drag"

    const-string p1, "two"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomDCSManager;->onPocketStudioTrigger(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_45

    :catchall_45
    return-void
.end method

.method public static OplusSplitScreenManager_startThreeSplitFromNormal(ILandroid/content/Intent;I)V
    .registers 11

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "startThreeSplitFromNormal"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v6, Landroid/content/Intent;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    aput-object p1, v2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "zoom_drag"

    const-string p1, "three"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/ZoomDCSManager;->onPocketStudioTrigger(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3c

    :catchall_3c
    return-void
.end method

.method public static OplusSplitScreenManager_startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V
    .registers 11

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "startZoomWindowFromSplit"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/graphics/Rect;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_37

    :catchall_37
    return-void
.end method

.method public static OplusSplitScreenManager_updateEnterNormalType(I)V
    .registers 7

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "updateEnterNormalType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->getSplitScreenManagerInternal()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method public static OplusTransitionExtendedInfo_getTmpFinishT(Landroid/window/TransitionInfo;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mExt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getExtendedInfo"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTmpFinishT"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_44} :catch_46

    move-object v0, p0

    goto :goto_4a

    :catch_46
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public static OplusZoomWindowManager_hideZoomWindow(I)V
    .registers 8

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    sget-object v1, Lcom/oplus/splitscreen/ReflectionHelper;->sOplusZoomWindowManager:Ljava/lang/Class;

    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/oplus/splitscreen/ReflectionHelper;->sOplusZoomWindowManager:Ljava/lang/Class;

    :cond_e
    :try_start_e
    sget-object v1, Lcom/oplus/splitscreen/ReflectionHelper;->sOplusZoomWindowManager:Ljava/lang/Class;

    const-string v2, "hideZoomWindow"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2c

    :catchall_2c
    return-void
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

.method private static getFlexibleWindowManager()Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowManager:Ljava/lang/Object;

    if-nez v0, :cond_1c

    :try_start_4
    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowClazz:Ljava/lang/Class;

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

    sput-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowManager:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sFlexibleWindowManager:Ljava/lang/Object;

    return-object v0
.end method

.method private static getSplitScreenManagerInternal()Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOplusSplitScreenManagerInternal:Ljava/lang/Object;

    if-nez v0, :cond_1c

    :try_start_4
    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOSSMIClazz:Ljava/lang/Class;

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

    sput-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOplusSplitScreenManagerInternal:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    sget-object v0, Lcom/oplus/splitscreen/ReflectionHelper;->sOplusSplitScreenManagerInternal:Ljava/lang/Object;

    return-object v0
.end method
