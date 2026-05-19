.class public final Lcom/oplus/zoom/common/ZoomUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DIFF_DP_VALUE:F = 0.5f

.field private static final FEATURE_FOLD_REMAP_DISPLAY_DISABLED:Ljava/lang/String; = "oplus.software.fold_remap_display_disabled"

.field private static final FEATURE_LMVIBRATOR_SUPPORT:Ljava/lang/String; = "oplus.software.vibrator_lmvibrator"

.field private static final FOLD_FEATURE:Ljava/lang/String; = "oplus.hardware.type.fold"

.field public static final FOLD_MODE:Ljava/lang/String; = "oplus_system_folding_mode"

.field public static final FOLD_OPEN_MODE:Ljava/lang/String; = "1"

.field public static final MINI_ZOOM_LEFT_BOTTOM:I = 0x2

.field public static final MINI_ZOOM_LEFT_TOP:I = 0x1

.field public static final MINI_ZOOM_RIGHT_BOTTOM:I = 0x4

.field public static final MINI_ZOOM_RIGHT_TOP:I = 0x3

.field private static final ORMS_TIMEOUT:I = 0x1f4

.field private static final TABLET_FEATURE:Ljava/lang/String; = "oplus.hardware.type.tablet"

.field private static final TAG:Ljava/lang/String; = "ZoomUtil"

.field public static final TEST:Z

.field public static final TRANSIT_ZOOM_CLOSE:I = 0x65

.field private static final VIBRATER_ONCE:[J

.field private static mZoomRootSurface:Landroid/view/SurfaceControl;

.field private static mZoomSurface:Landroid/view/SurfaceControl;

.field public static sCurrentZoomTaskInfo:Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

.field public static sIsZoomLandApp:Z

.field private static sOsenseClient:Lcom/oplus/osense/OsenseResClient;

.field public static sZoomTaskState:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/oplus/zoom/common/ZoomUtil;->VIBRATER_ONCE:[J

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/zoom/common/ZoomUtil;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    const-string v0, "persist.sys.zoom_test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/zoom/common/ZoomUtil;->TEST:Z

    sput-boolean v1, Lcom/oplus/zoom/common/ZoomUtil;->sIsZoomLandApp:Z

    sput v1, Lcom/oplus/zoom/common/ZoomUtil;->sZoomTaskState:I

    return-void

    nop

    :array_1a
    .array-data 8
        0x0
        0x32
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/window/TransitionInfo$Change;)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomUtil;->lambda$updateFinishTransition$0(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method

.method public static dip2px(FF)I
    .registers 2

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static handleRecentToZoomAnim(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 13

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_65

    if-eqz p0, :cond_65

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_65

    if-eqz p3, :cond_65

    if-eqz p5, :cond_65

    const-string v0, "ZoomScale"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    const-string v0, "hideWindow"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "zoomRadius"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p0

    move v3, v6

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {v1, p0, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    invoke-virtual {p3, p0, p4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    int-to-float p4, p5

    invoke-virtual {p3, p0, p4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    invoke-virtual {p3, p1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_60

    invoke-virtual {p2, p0, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_65

    :cond_60
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_65
    :goto_65
    return-void
.end method

.method public static isFlipDevice()Z
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.fold_remap_display_disabled"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFoldDevice()Z
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.fold"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFoldOpenMode(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oplus_system_folding_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isRTL()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public static isSupportPocketStudio()Z
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.pocketstudio.support"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabletDevice()Z
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.tablet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$updateFinishTransition$0(Landroid/window/TransitionInfo$Change;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result p0

    sget-object v0, Lcom/oplus/zoom/common/ZoomUtil;->mZoomSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    if-ne p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static performHapticFeedback(Landroid/content/Context;IZ)V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v3, 0x1

    :cond_f
    if-eqz v3, :cond_12

    return-void

    :cond_12
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.vibrator_lmvibrator"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "linearmotor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/os/LinearmotorVibrator;

    new-instance v0, Lcom/oplus/os/WaveformEffect$Builder;

    invoke-direct {v0}, Lcom/oplus/os/WaveformEffect$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/os/WaveformEffect$Builder;->setAsynchronous(Z)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/os/WaveformEffect$Builder;->build()Lcom/oplus/os/WaveformEffect;

    move-result-object p1

    const-string p2, "ZoomUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinearmotorVibrator vibrator : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , effect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_74

    if-eqz p1, :cond_74

    invoke-virtual {p0, p1}, Lcom/oplus/os/LinearmotorVibrator;->vibrate(Lcom/oplus/os/WaveformEffect;)V

    goto :goto_74

    :cond_5d
    const-class p1, Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    sget-object p1, Lcom/oplus/zoom/common/ZoomUtil;->VIBRATER_ONCE:[J

    const/4 p2, -0x1

    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_74
    :goto_74
    return-void
.end method

.method public static px2dip(FF)I
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static requestGainFocus(I)V
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static setAnimationThreadUx(Z)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimationThreadUx value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomUtil"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/wm/shell/WMShellBooster;->setUx(ZI)V

    return-void
.end method

.method public static setRenderThreadUx(Z)V
    .registers 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusActivityManager_getRenderThreadTid(I)I

    move-result v0

    const-string v1, "ZoomUtil"

    if-nez v0, :cond_12

    const-string p0, "setRenderThreadUx fail!"

    invoke-static {v1, p0}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRenderThreadUx value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/wm/shell/WMShellBooster;->setUx(ZI)V

    return-void
.end method

.method public static setupZoomRotationStartState(Landroid/window/TransitionInfo$Change;Landroid/window/WindowOrganizer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getParentTaskId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getZoomTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p1

    sget v2, Lcom/oplus/zoom/common/ZoomUtil;->sZoomTaskState:I

    if-eq v2, v1, :cond_2e

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v1

    sget-boolean v2, Lcom/oplus/zoom/common/ZoomUtil;->sIsZoomLandApp:Z

    invoke-virtual {v1, v2, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultZoomPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v1

    goto :goto_38

    :cond_2e
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v1

    sget-boolean v2, Lcom/oplus/zoom/common/ZoomUtil;->sIsZoomLandApp:Z

    invoke-virtual {v1, v2, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object v1

    :goto_38
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v2

    sget-boolean v3, Lcom/oplus/zoom/common/ZoomUtil;->sIsZoomLandApp:Z

    invoke-virtual {v2, v3, v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultZoomBound(ZZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScale()F

    move-result v2

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomPositionInfo;->getScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz p1, :cond_7f

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_53

    goto :goto_7f

    :cond_53
    invoke-virtual {p2, p1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget p0, v1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2, p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getZoomCornerRadius()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    iget p1, v1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public static setupZoomStartState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowOrganizer;)V
    .registers 16

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_d
    if-ltz v2, :cond_15e

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    const v4, 0x10102

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_24

    goto/16 :goto_15a

    :cond_24
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_82

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ne v7, v8, :cond_5d

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eq v7, v8, :cond_82

    :cond_5d
    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getRotation()I

    move-result v7

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/oplus/zoom/common/ZoomParameterHelper;->isPortScreen(I)Z

    move-result v7

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v8

    sget-boolean v9, Lcom/oplus/zoom/common/ZoomUtil;->sIsZoomLandApp:Z

    invoke-virtual {v8, v9, v7}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getDefaultZoomBound(ZZ)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p1, v4, v8, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_82
    invoke-static {v3, p0}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v7

    const/4 v8, 0x6

    if-nez v7, :cond_123

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    const/high16 v11, 0x3f800000  # 1.0f

    if-eqz v7, :cond_fa

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v7

    const/16 v9, 0x64

    if-eq v7, v9, :cond_9e

    goto :goto_fa

    :cond_9e
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_15a

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v7

    if-ne v7, v9, :cond_15a

    if-ne v5, v8, :cond_d4

    move-object v5, p3

    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getParentTaskId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->getZoomTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v5

    if-eq v4, v5, :cond_15a

    invoke-static {v3, p3, p1}, Lcom/oplus/zoom/common/ZoomUtil;->setupZoomRotationStartState(Landroid/window/TransitionInfo$Change;Landroid/window/WindowOrganizer;Landroid/view/SurfaceControl$Transaction;)V

    goto/16 :goto_15a

    :cond_d4
    if-ne v5, v6, :cond_15a

    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v4, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v4, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_15a

    :cond_fa
    :goto_fa
    if-eq v5, v1, :cond_100

    if-eq v5, v6, :cond_100

    if-ne v5, v8, :cond_15a

    :cond_100
    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v4, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v4, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_15a

    :cond_123
    if-eq v5, v1, :cond_13b

    if-ne v5, v6, :cond_128

    goto :goto_13b

    :cond_128
    const/4 v3, 0x2

    if-eq v5, v3, :cond_137

    const/4 v3, 0x4

    if-ne v5, v3, :cond_12f

    goto :goto_137

    :cond_12f
    if-eqz v0, :cond_15a

    if-ne v5, v8, :cond_15a

    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_15a

    :cond_137
    :goto_137
    invoke-virtual {p2, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_15a

    :cond_13b
    :goto_13b
    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_157

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_157

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_157
    invoke-virtual {p2, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_15a
    :goto_15a
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_d

    :cond_15e
    return-void
.end method

.method public static updateCurrentLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 2

    sput-object p0, Lcom/oplus/zoom/common/ZoomUtil;->mZoomSurface:Landroid/view/SurfaceControl;

    sput-object p1, Lcom/oplus/zoom/common/ZoomUtil;->mZoomRootSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method public static updateFinishTransition(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V
    .registers 9

    sget-boolean v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/oplus/zoom/common/ZoomUtil;->mZoomSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d5

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d5

    sget-object v0, Lcom/oplus/zoom/common/ZoomUtil;->mZoomRootSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d5

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_d5

    :cond_1b
    if-eqz p2, :cond_d5

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d5

    if-eqz p1, :cond_d5

    instance-of p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-nez p0, :cond_2c

    goto/16 :goto_d5

    :cond_2c
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/model/w;->c:Lcom/android/launcher3/model/w;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-nez p0, :cond_3d

    return-void

    :cond_3d
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_45
    :goto_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const-string v3, " change= "

    if-eq v2, v1, :cond_60

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_96

    :cond_60
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v2

    sget-object v4, Lcom/oplus/zoom/common/ZoomUtil;->mZoomSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v4

    if-ne v2, v4, :cond_96

    sget-object v2, Lcom/oplus/zoom/common/ZoomUtil;->mZoomSurface:Landroid/view/SurfaceControl;

    sget-object v4, Lcom/oplus/zoom/common/ZoomUtil;->mZoomRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current leash was entering zoom mode, so reparent current leash to zoomRootTask, id= #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    goto :goto_45

    :cond_96
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v2, v4, :cond_a4

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    if-ne v2, v5, :cond_45

    :cond_a4
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    if-ne v2, v5, :cond_45

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current leash was entering zoom mode, so show Launcher id= #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    goto/16 :goto_45

    :cond_d5
    :goto_d5
    return-void
.end method

.method public static zoomOrms()V
    .registers 5

    sget-object v0, Lcom/oplus/zoom/common/ZoomUtil;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    if-nez v0, :cond_e

    const-class v0, Lcom/oplus/zoom/common/ZoomUtil;

    invoke-static {v0}, Lcom/oplus/osense/OsenseResClient;->get(Ljava/lang/Class;)Lcom/oplus/osense/OsenseResClient;

    move-result-object v0

    sput-object v0, Lcom/oplus/zoom/common/ZoomUtil;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    if-eqz v0, :cond_1e

    :cond_e
    sget-object v0, Lcom/oplus/zoom/common/ZoomUtil;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    new-instance v1, Lcom/oplus/osense/info/OsenseSaRequest;

    const/16 v2, 0x1f4

    const-string v3, ""

    const-string v4, "OSENSE_ACTION_LAUNCH"

    invoke-direct {v1, v3, v4, v2}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    :cond_1e
    return-void
.end method
