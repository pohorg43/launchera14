.class public final Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

.field private static final TAG:Ljava/lang/String; = "OplusGestureHelper"

.field private static isAppLunchAnimationRunning:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isScreenShotEditWindow(Landroid/content/Context;)Z
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "color_screenshot"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/oplus/screenshot/OplusScreenshotManager;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/oplus/screenshot/OplusScreenshotManager;

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/oplus/screenshot/OplusScreenshotManager;->isScreenshotEdit()Z

    move-result p1
    :try_end_16
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_16} :catch_1e

    if-ne p1, v0, :cond_1a

    move p1, v0

    goto :goto_1b

    :cond_1a
    move p1, p0

    :goto_1b
    if-eqz p1, :cond_35

    return v0

    :catch_1e
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isScreenShotEditWindow(), e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusGestureHelper"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return p0
.end method

.method private final updateHomeMenuKeyState()I
    .registers 2

    new-instance p0, Landroid/view/OplusWindowManager;

    invoke-direct {p0}, Landroid/view/OplusWindowManager;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Landroid/view/OplusWindowManager;->getFocusedWindowIgnoreHomeMenuKey()I

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    :try_start_9
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_14

    :catchall_c
    move-exception v0

    goto :goto_10

    :catchall_e
    move-exception v0

    const/4 p0, 0x0

    :goto_10
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1c

    sget p0, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    :cond_1c
    return p0
.end method


# virtual methods
.method public final forceStartGesture(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->isAppLunchAnimationRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->isScreenShotEditWindow(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "OplusGestureHelper"

    const-string p1, "forceStartGesture because current window is screen shot"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public final isAppLunchAnimationRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->isAppLunchAnimationRunning:Z

    return p0
.end method

.method public final isFocusedWindowIgnoreHomeMenuKey(Landroid/content/Context;)Z
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->isAppLunchAnimationRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->updateHomeMenuKeyState()I

    move-result p0

    if-eqz p0, :cond_25

    const-string v0, " intercept gesture because keyState is "

    const-string v1, "OplusGestureHelper"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_25
    return v1
.end method

.method public final offsetEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 25

    move-object/from16 v0, p1

    const-string v1, "event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->getScale()F

    move-result v1

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->getOffsetX()I

    move-result v2

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->getOffsetY()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    new-array v10, v9, [Landroid/view/MotionEvent$PointerProperties;

    new-array v11, v9, [Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    const/16 v20, 0x0

    move/from16 p0, v15

    move/from16 v15, v20

    :goto_53
    if-ge v15, v9, :cond_98

    new-instance v20, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v20, v10, v15

    new-instance v20, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v20, v11, v15

    move/from16 v20, v14

    aget-object v14, v10, v15

    invoke-virtual {v0, v15, v14}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v14, v11, v15

    invoke-virtual {v0, v15, v14}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v14, v11, v15

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move/from16 v22, v13

    int-to-float v13, v2

    sub-float v21, v21, v13

    div-float v13, v21, v1

    iput v13, v14, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v13, v11, v15

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    int-to-float v0, v3

    sub-float/2addr v14, v0

    div-float/2addr v14, v1

    iput v14, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v14, v20

    move/from16 v13, v22

    goto :goto_53

    :cond_98
    move/from16 v22, v13

    move/from16 v20, v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "offsetEvent scale:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OplusGestureHelper"

    invoke-static {v0, v3, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move/from16 v13, v22

    move/from16 v15, p0

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    const-string v1, "obtain(\n                …urce, flags\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_c9
    return-object p1
.end method

.method public final resetEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 25

    move-object/from16 v0, p1

    const-string v1, "event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->getScale()F

    move-result v1

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->getOffsetX()I

    move-result v2

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->getOffsetY()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    new-array v10, v9, [Landroid/view/MotionEvent$PointerProperties;

    new-array v11, v9, [Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    const/16 v20, 0x0

    move/from16 p0, v15

    move/from16 v15, v20

    :goto_53
    if-ge v15, v9, :cond_9a

    new-instance v20, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v20, v10, v15

    new-instance v20, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v20, v11, v15

    move/from16 v20, v14

    aget-object v14, v10, v15

    invoke-virtual {v0, v15, v14}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v14, v11, v15

    invoke-virtual {v0, v15, v14}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v14, v11, v15

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    mul-float v21, v21, v1

    move/from16 v22, v13

    int-to-float v13, v2

    add-float v13, v21, v13

    iput v13, v14, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v13, v11, v15

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    mul-float/2addr v14, v1

    move/from16 v21, v1

    int-to-float v1, v3

    add-float/2addr v14, v1

    iput v14, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v20

    move/from16 v1, v21

    move/from16 v13, v22

    goto :goto_53

    :cond_9a
    move/from16 v22, v13

    move/from16 v20, v14

    move/from16 v15, p0

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    const-string v1, "obtain(\n                …urce, flags\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a9
    return-object v0
.end method

.method public final setAppLunchAnimationRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->isAppLunchAnimationRunning:Z

    return-void
.end method
