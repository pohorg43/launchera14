.class public final Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;

.field private static final TAG:Ljava/lang/String; = "RFT_FlexibleReflection"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;

    invoke-direct {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final captureLeash(Lcom/oplus/flexiblewindow/FlexibleTaskView;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "captureLeash"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_33

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    if-eqz v0, :cond_23

    check-cast p1, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    goto :goto_24

    :cond_23
    move-object p1, p0

    :goto_24
    if-nez p1, :cond_27

    goto :goto_33

    :cond_27
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_33
    :goto_33
    return-object p0
.end method

.method public final exitFlexibleEmbeddedTask(I)V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "exitFlexibleEmbeddedTask"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v1, "getDeclaredMethod(\"exitF…edTask\", Int::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2f

    goto :goto_34

    :cond_2d
    const/4 p0, 0x0

    goto :goto_34

    :catchall_2f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_34
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_41

    const-string p1, "exitFlexibleEmbeddedTask(), e="

    const-string v0, "RFT_FlexibleReflection"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method public final getFlexibleTaskInfo(Lcom/oplus/flexiblewindow/FlexibleTaskView;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_1a

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTaskInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1b

    :catchall_18
    move-exception p1

    goto :goto_24

    :cond_1a
    move-object p1, p0

    :goto_1b
    instance-of v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_22

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_18

    goto :goto_28

    :cond_22
    move-object p1, p0

    goto :goto_28

    :goto_24
    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_28
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v1, "getFlexibleTaskInfo(), e="

    const-string v2, "RFT_FlexibleReflection"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_35
    instance-of v0, p1, Lh4/k$a;

    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object p0, p1

    :goto_3b
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public final getTaskInfoField(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_9

    return-object p0

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_21

    if-nez p1, :cond_26

    move-object p1, p0

    goto :goto_26

    :catchall_21
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :cond_26
    :goto_26
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_33

    const-string v0, "getPidUid(), e="

    const-string v1, "RFT_FlexibleReflection"

    invoke-static {v0, p2, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_33
    instance-of p2, p1, Lh4/k$a;

    if-eqz p2, :cond_38

    goto :goto_39

    :cond_38
    move-object p0, p1

    :goto_39
    return-object p0
.end method

.method public final initFlexibleTaskView(Lcom/oplus/flexiblewindow/FlexibleTaskView;Landroid/os/Bundle;)V
    .registers 9

    const-string p0, "bundle"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1d

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "init"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v4, p0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_1e

    :catchall_1b
    move-exception p0

    goto :goto_2f

    :cond_1d
    move-object v2, v0

    :goto_1e
    if-nez v2, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_24
    if-eqz v2, :cond_33

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, p0

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_1b

    goto :goto_33

    :goto_2f
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :cond_33
    :goto_33
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_40

    const-string p1, "initFlexibleView(), e="

    const-string p2, "RFT_FlexibleReflection"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public final setWorkExecutor(Lcom/oplus/flexiblewindow/FlexibleTaskView;Ljava/util/concurrent/Executor;)V
    .registers 8

    const-string p0, "workExecutor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "setWorkExecutor"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v4

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_2e

    :catchall_27
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3b

    const-string p1, "setWorkExecutor(), e="

    const-string p2, "RFT_FlexibleReflection"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method
