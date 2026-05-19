.class public Lcom/android/launcher3/uioverrides/states/OplusDepthController;
.super Lcom/android/launcher3/statehandlers/DepthController;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedBlurProperty;,
        Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;
    }
.end annotation


# static fields
.field private static final ACTION_WALLPAPER_SET_THREADUX:Ljava/lang/String; = "wallpaper.set.animationThreadUx"

.field public static final APP_BACKGROUND_RESET:Ljava/lang/String; = "app_background_reset"

.field private static final APP_CLOSE_WALLPAPER_DAMPINGRATIO:[D

.field private static final APP_CLOSE_WALLPAPER_STIFFNESS:[D

.field public static final APP_CLOSE_WALLPAPER_TIME:[I

.field public static final APP_EXIT:Ljava/lang/String; = "app_exit"

.field public static final APP_LAUNCHER:Ljava/lang/String; = "app_launch"

.field private static final APP_OPEN_WALLPAPER_DAMPINGRATIO:[D

.field private static final APP_OPEN_WALLPAPER_SCALE:F = 1.2f

.field private static final APP_OPEN_WALLPAPER_STIFFNESS:[D

.field private static final APP_OPEN_WALLPAPER_TIME:[I

.field public static final APP_RECENT_ENTER:Ljava/lang/String; = "app_recent_enter"

.field public static final APP_RECENT_EXIT:Ljava/lang/String; = "app_recent_exit"

.field public static final APP_RESET_SCALE:Ljava/lang/String; = "app_reset_scale"

.field public static final APP_REVERSE:Ljava/lang/String; = "interrupt_anim"

.field private static final APP_REVERSE_WALLPAPER_SCALE:F = 1.2f

.field private static final APP_REVERSE_WALLPAPER_TIME:I = 0x3e8

.field public static final APP_SET_SCALE:Ljava/lang/String; = "app_set_scale"

.field public static final APP_UNLOCK:Ljava/lang/String; = "app_unlock"

.field private static final APP_UNLOCK_WALLPAPER_DAMPINGRATIO:F = 1.0f

.field private static final APP_UNLOCK_WALLPAPER_SCALE:F = 1.2f

.field private static final APP_UNLOCK_WALLPAPER_STIFFNESS:I = 0x96

.field private static final APP_UNLOCK_WALLPAPER_TIME:I = 0x44c

.field private static final BLUR:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/uioverrides/states/OplusDepthController;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDIT_OPEN_CLOSE:Ljava/lang/String; = "edit_open_close"

.field private static final EDIT_WALLPAPER_TIME:I = 0x140

.field private static final FOLDER_CLOSE_WALLPAPER_TIME:I = 0x195

.field public static final FOLDER_OPEN_CLOSE:Ljava/lang/String; = "folder_open_close"

.field private static final FOLDER_OPEN_WALLPAPER_TIME:I = 0x168

.field private static final GESTURE_TO_HOME:I

.field private static final HALF:F = 0.5f

.field private static final ICON_BLUR:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/uioverrides/states/OplusDepthController;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_DEPTH_BLUR_VALUE:F = -1.0f

.field private static final MENU_BACK_TO_HOME:I

.field private static final NUMBER_0:I = 0x0

.field private static final NUMBER_1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OplusDepthController"

.field private static final UXENABLE:Ljava/lang/String; = "uxEnable"

.field private static final WALLPAPER_ACTION_MOVE:Ljava/lang/String; = "move_animation"

.field private static final WALLPAPER_ANIMATION_ACTION:Ljava/lang/String; = "oplus.wallpaper.animation"

.field private static final WALLPAPER_VELOCITY_UNIT:I = 0x3a98

.field private static final ZOOM_OUT:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/uioverrides/states/OplusDepthController;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mWallpaperScaleEndValue:F


# instance fields
.field private mBackgroundResetWallpaperSizeFlag:Z

.field private mBlurLayer:Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;

.field private final mExtras:Landroid/os/Bundle;

.field private mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

.field private mShouldSetBinderThreadUx:Z

.field private mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

.field private mZoomOutAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v0

    sput v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->GESTURE_TO_HOME:I

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->getId()I

    move-result v0

    sput v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->MENU_BACK_TO_HOME:I

    const/high16 v0, 0x3f800000  # 1.0f

    sput v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_5c

    sput-object v1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_TIME:[I

    new-array v1, v0, [D

    fill-array-data v1, :array_64

    sput-object v1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_STIFFNESS:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_70

    sput-object v1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_DAMPINGRATIO:[D

    new-array v1, v0, [I

    fill-array-data v1, :array_7c

    sput-object v1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_TIME:[I

    new-array v1, v0, [D

    fill-array-data v1, :array_84

    sput-object v1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_STIFFNESS:[D

    new-array v0, v0, [D

    fill-array-data v0, :array_90

    sput-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_DAMPINGRATIO:[D

    new-instance v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$1;

    const-string v1, "ZOOM_OUT"

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->ZOOM_OUT:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$2;

    const-string v1, "BLUR"

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->BLUR:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$3;

    const-string v1, "ICON_BLUR"

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->ICON_BLUR:Landroid/util/FloatProperty;

    return-void

    nop

    :array_5c
    .array-data 4
        0x1f4
        0x28a
    .end array-data

    :array_64
    .array-data 8
        0x4049000000000000L  # 50.0
        0x4049000000000000L  # 50.0
    .end array-data

    :array_70
    .array-data 8
        0x3ff0000000000000L  # 1.0
        0x3ff0000000000000L  # 1.0
    .end array-data

    :array_7c
    .array-data 4
        0x28a
        0x3e8
    .end array-data

    :array_84
    .array-data 8
        0x4049000000000000L  # 50.0
        0x4049000000000000L  # 50.0
    .end array-data

    :array_90
    .array-data 8
        0x3ff0000000000000L  # 1.0
        0x3ff0000000000000L  # 1.0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController;-><init>(Lcom/android/launcher3/Launcher;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mExtras:Landroid/os/Bundle;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mZoomOutAnim:Landroid/animation/ObjectAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mShouldSetBinderThreadUx:Z

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBackgroundResetWallpaperSizeFlag:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/states/OplusDepthController;ZLjava/lang/String;ZLandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->lambda$startWallpaperAnimation$0(ZLjava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/uioverrides/states/OplusDepthController;F)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setZoomOut(F)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIgnoreStateChangesDuringMultiWindowAnimation:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/uioverrides/states/OplusDepthController;F)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlur(F)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/uioverrides/states/OplusDepthController;F)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlur(F)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIconBlur:F

    return p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    return p0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    return p0
.end method

.method public static synthetic access$800(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setWallpaperUxEnable(Z)V

    return-void
.end method

.method public static synthetic access$902(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mZoomOutAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private composeDurationAndAnimType(Landroid/os/Bundle;I)V
    .registers 3

    const-string p0, "duration"

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "animation_type"

    const-string/jumbo p2, "scale"

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private composePathInterpolator(Landroid/os/Bundle;FFFF)V
    .registers 7

    const-string p0, "interpolator_type"

    const-string/jumbo v0, "path_interpolator"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "path_controlX1"

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p0, "path_controlY1"

    invoke-virtual {p1, p0, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p0, "path_controlX2"

    invoke-virtual {p1, p0, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p0, "path_controlY2"

    invoke-virtual {p1, p0, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private composePivotParams(Landroid/os/Bundle;FF)V
    .registers 5

    const-string/jumbo p0, "pivotXType"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "pivotYType"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "pivotXValue"

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p0, "pivotYValue"

    invoke-virtual {p1, p0, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private composeScaleParams(Landroid/os/Bundle;FFFF)V
    .registers 6

    const-string/jumbo p0, "scale_from_x"

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p0, "scale_from_y"

    invoke-virtual {p1, p0, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p0, "scale_to_x"

    invoke-virtual {p1, p0, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p0, "scale_to_y"

    invoke-virtual {p1, p0, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private composeSpringInterpolator(Landroid/os/Bundle;DDDFF)V
    .registers 11

    const-string p0, "interpolator_type"

    const-string/jumbo v0, "spring_interpolator"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "spring_stiffness"

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo p0, "spring_dampingRatio"

    invoke-virtual {p1, p0, p4, p5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo p0, "spring_velocity"

    invoke-virtual {p1, p0, p6, p7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo p0, "spring_cutRatio"

    invoke-virtual {p1, p0, p8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p0, "spring_velocityUnit"

    invoke-virtual {p1, p0, p9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private getAnimationParams(Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 17

    move-object v10, p0

    move-object v0, p1

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v2, v6}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v7

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v3, "app_recent_exit"

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_286

    goto/16 :goto_9d

    :sswitch_1e
    const-string v1, "edit_open_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_9d

    :cond_28
    const/16 v4, 0xa

    goto/16 :goto_9d

    :sswitch_2c
    const-string v1, "app_unlock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto/16 :goto_9d

    :cond_36
    const/16 v4, 0x9

    goto/16 :goto_9d

    :sswitch_3a
    const-string v1, "app_exit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto/16 :goto_9d

    :cond_44
    const/16 v4, 0x8

    goto/16 :goto_9d

    :sswitch_48
    const-string v1, "app_launch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_9d

    :cond_51
    const/4 v4, 0x7

    goto :goto_9d

    :sswitch_53
    const-string v1, "app_background_reset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_9d

    :cond_5c
    const/4 v4, 0x6

    goto :goto_9d

    :sswitch_5e
    const-string v1, "folder_open_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    goto :goto_9d

    :cond_67
    const/4 v4, 0x5

    goto :goto_9d

    :sswitch_69
    const-string v1, "app_reset_scale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    goto :goto_9d

    :cond_72
    const/4 v4, 0x4

    goto :goto_9d

    :sswitch_74
    const-string v1, "app_set_scale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    goto :goto_9d

    :cond_7d
    const/4 v4, 0x3

    goto :goto_9d

    :sswitch_7f
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    goto :goto_9d

    :cond_86
    const/4 v4, 0x2

    goto :goto_9d

    :sswitch_88
    const-string v1, "interrupt_anim"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    goto :goto_9d

    :cond_91
    move v4, v6

    goto :goto_9d

    :sswitch_93
    const-string v1, "app_recent_enter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    goto :goto_9d

    :cond_9c
    move v4, v2

    :goto_9d
    const-string v12, "action"

    const-string v13, "OplusDepthController"

    const v1, 0x3f99999a  # 1.2f

    const/high16 v5, 0x3f800000  # 1.0f

    packed-switch v4, :pswitch_data_2b4

    goto/16 :goto_265

    :pswitch_ab  #0xa
    if-eqz p2, :cond_af

    move v0, v5

    goto :goto_b0

    :cond_af
    move v0, v1

    :goto_b0
    sget v2, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_b8

    sget v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    :cond_b8
    move v3, v0

    if-eqz p2, :cond_bd

    move v4, v1

    goto :goto_be

    :cond_bd
    move v4, v5

    :goto_be
    if-eqz p2, :cond_c1

    move v5, v1

    :cond_c1
    move-object v0, p0

    move-object v1, v11

    move v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeScaleParams(Landroid/os/Bundle;FFFF)V

    const/16 v0, 0x140

    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeDurationAndAnimType(Landroid/os/Bundle;I)V

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_STIFFNESS:[D

    aget-wide v2, v0, v6

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_DAMPINGRATIO:[D

    aget-wide v4, v0, v6

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x466a6000  # 15000.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeSpringInterpolator(Landroid/os/Bundle;DDDFF)V

    goto/16 :goto_265

    :pswitch_e1  #0x9
    const v2, 0x3f99999a  # 1.2f

    const v3, 0x3f99999a  # 1.2f

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeScaleParams(Landroid/os/Bundle;FFFF)V

    const/16 v0, 0x44c

    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeDurationAndAnimType(Landroid/os/Bundle;I)V

    const-wide v2, 0x4062c00000000000L  # 150.0

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x466a6000  # 15000.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeSpringInterpolator(Landroid/os/Bundle;DDDFF)V

    goto/16 :goto_265

    :pswitch_109  #0x6
    const-string/jumbo v0, "move_animation"

    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v11, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeDurationAndAnimType(Landroid/os/Bundle;I)V

    sget v2, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    sget v3, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    if-eqz p2, :cond_11a

    move v4, v5

    goto :goto_11b

    :cond_11a
    move v4, v1

    :goto_11b
    if-eqz p2, :cond_11e

    goto :goto_11f

    :cond_11e
    move v5, v1

    :goto_11f
    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeScaleParams(Landroid/os/Bundle;FFFF)V

    const-string v0, "getAnimationParams--reset bundle:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :pswitch_139  #0x5
    if-eqz p2, :cond_13d

    move v2, v1

    goto :goto_13e

    :cond_13d
    move v2, v5

    :goto_13e
    if-eqz p2, :cond_142

    move v3, v1

    goto :goto_143

    :cond_142
    move v3, v5

    :goto_143
    if-eqz p2, :cond_147

    move v4, v5

    goto :goto_148

    :cond_147
    move v4, v1

    :goto_148
    if-eqz p2, :cond_14b

    goto :goto_14c

    :cond_14b
    move v5, v1

    :goto_14c
    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeScaleParams(Landroid/os/Bundle;FFFF)V

    if-eqz p2, :cond_156

    const/16 v0, 0x168

    goto :goto_158

    :cond_156
    const/16 v0, 0x195

    :goto_158
    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeDurationAndAnimType(Landroid/os/Bundle;I)V

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_STIFFNESS:[D

    aget-wide v2, v0, v6

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_DAMPINGRATIO:[D

    aget-wide v4, v0, v6

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x466a6000  # 15000.0f

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeSpringInterpolator(Landroid/os/Bundle;DDDFF)V

    goto/16 :goto_265

    :pswitch_171  #0x4
    sget v2, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    sget v3, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeScaleParams(Landroid/os/Bundle;FFFF)V

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_TIME:[I

    aget v0, v0, v6

    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeDurationAndAnimType(Landroid/os/Bundle;I)V

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_STIFFNESS:[D

    aget-wide v2, v0, v6

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_DAMPINGRATIO:[D

    aget-wide v4, v0, v6

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x466a6000  # 15000.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeSpringInterpolator(Landroid/os/Bundle;DDDFF)V

    goto/16 :goto_265

    :pswitch_19a  #0x3
    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    const v4, 0x3f99999a  # 1.2f

    const v5, 0x3f99999a  # 1.2f

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeScaleParams(Landroid/os/Bundle;FFFF)V

    invoke-direct {p0, v11, v6}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeDurationAndAnimType(Landroid/os/Bundle;I)V

    const-wide v2, 0x4062c00000000000L  # 150.0

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x466a6000  # 15000.0f

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeSpringInterpolator(Landroid/os/Bundle;DDDFF)V

    goto/16 :goto_265

    :pswitch_1bf  #0x2, 0x8
    sget v2, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1cf

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    sget v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    move v3, v0

    goto :goto_1d0

    :cond_1cf
    move v3, v1

    :goto_1d0
    cmpl-float v0, v3, v5

    if-nez v0, :cond_1da

    const-string v0, "getAnimationParams alreay exit"

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_1da
    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, v11

    move v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeScaleParams(Landroid/os/Bundle;FFFF)V

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_TIME:[I

    aget v0, v0, v7

    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeDurationAndAnimType(Landroid/os/Bundle;I)V

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_STIFFNESS:[D

    aget-wide v2, v0, v7

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_DAMPINGRATIO:[D

    aget-wide v4, v0, v7

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x466a6000  # 15000.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeSpringInterpolator(Landroid/os/Bundle;DDDFF)V

    goto/16 :goto_265

    :pswitch_200  #0x1
    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p2, :cond_208

    move v4, v1

    goto :goto_209

    :cond_208
    move v4, v5

    :goto_209
    if-eqz p2, :cond_20c

    move v5, v1

    :cond_20c
    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeScaleParams(Landroid/os/Bundle;FFFF)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeDurationAndAnimType(Landroid/os/Bundle;I)V

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_STIFFNESS:[D

    aget-wide v2, v0, v6

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_CLOSE_WALLPAPER_DAMPINGRATIO:[D

    aget-wide v4, v0, v6

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x466a6000  # 15000.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeSpringInterpolator(Landroid/os/Bundle;DDDFF)V

    goto :goto_265

    :pswitch_22a  #0x0, 0x7
    sget v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_234

    sget v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    move v3, v0

    goto :goto_235

    :cond_234
    move v3, v5

    :goto_235
    cmpl-float v0, v3, v1

    if-nez v0, :cond_23f

    const-string v0, "getAnimationParams alreay open"

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_23f
    const v4, 0x3f99999a  # 1.2f

    const v5, 0x3f99999a  # 1.2f

    move-object v0, p0

    move-object v1, v11

    move v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeScaleParams(Landroid/os/Bundle;FFFF)V

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_TIME:[I

    aget v0, v0, v7

    invoke-direct {p0, v11, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeDurationAndAnimType(Landroid/os/Bundle;I)V

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_STIFFNESS:[D

    aget-wide v2, v0, v7

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->APP_OPEN_WALLPAPER_DAMPINGRATIO:[D

    aget-wide v4, v0, v7

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const v9, 0x466a6000  # 15000.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composeSpringInterpolator(Landroid/os/Bundle;DDDFF)V

    :goto_265
    const-string/jumbo v0, "oplus.wallpaper.animation"

    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-direct {p0, v11, v0, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->composePivotParams(Landroid/os/Bundle;FF)V

    const-string v0, "getAnimationParams bundle:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    nop

    :sswitch_data_286
    .sparse-switch
        -0x7e6492ae -> :sswitch_93
        -0x6bd62d93 -> :sswitch_88
        -0x672c649c -> :sswitch_7f
        -0x3fcc2971 -> :sswitch_74
        -0x83d3ec4 -> :sswitch_69
        0x51bd034 -> :sswitch_5e
        0x27ef095c -> :sswitch_53
        0x3f912f91 -> :sswitch_48
        0x4595247c -> :sswitch_3a
        0x4f9feb22 -> :sswitch_2c
        0x679da518 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_2b4
    .packed-switch 0x0
        :pswitch_22a  #00000000
        :pswitch_200  #00000001
        :pswitch_1bf  #00000002
        :pswitch_19a  #00000003
        :pswitch_171  #00000004
        :pswitch_139  #00000005
        :pswitch_109  #00000006
        :pswitch_22a  #00000007
        :pswitch_1bf  #00000008
        :pswitch_e1  #00000009
        :pswitch_ab  #0000000a
    .end packed-switch
.end method

.method public static getAppBlur()F
    .registers 1

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAppDepth()F

    move-result v0

    return v0
.end method

.method public static getAppDepth()F
    .registers 1

    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public static getFolderBlur()F
    .registers 1

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderDepth()F

    move-result v0

    return v0
.end method

.method public static getFolderDepth()F
    .registers 1

    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method private getWallpaperScaleAnimationEndValue(Ljava/lang/String;Z)F
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_76

    goto :goto_58

    :sswitch_c
    const-string p0, "edit_open_close"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_58

    :cond_15
    const/4 v0, 0x6

    goto :goto_58

    :sswitch_17
    const-string p0, "app_launch"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_58

    :cond_20
    const/4 v0, 0x5

    goto :goto_58

    :sswitch_22
    const-string p0, "app_background_reset"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_58

    :cond_2b
    const/4 v0, 0x4

    goto :goto_58

    :sswitch_2d
    const-string p0, "folder_open_close"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_58

    :cond_36
    const/4 v0, 0x3

    goto :goto_58

    :sswitch_38
    const-string p0, "app_set_scale"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_58

    :cond_41
    const/4 v0, 0x2

    goto :goto_58

    :sswitch_43
    const-string p0, "interrupt_anim"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_58

    :cond_4c
    const/4 v0, 0x1

    goto :goto_58

    :sswitch_4e
    const-string p0, "app_recent_enter"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    const/high16 p0, 0x3f800000  # 1.0f

    const p1, 0x3f99999a  # 1.2f

    packed-switch v0, :pswitch_data_94

    return p0

    :pswitch_61  #0x6
    if-eqz p2, :cond_64

    move p0, p1

    :cond_64
    return p0

    :pswitch_65  #0x4
    if-eqz p2, :cond_68

    goto :goto_69

    :cond_68
    move p0, p1

    :goto_69
    return p0

    :pswitch_6a  #0x3
    if-eqz p2, :cond_6d

    goto :goto_6e

    :cond_6d
    move p0, p1

    :goto_6e
    return p0

    :pswitch_6f  #0x2
    return p1

    :pswitch_70  #0x1
    if-eqz p2, :cond_73

    move p0, p1

    :cond_73
    return p0

    :pswitch_74  #0x0, 0x5
    return p1

    nop

    :sswitch_data_76
    .sparse-switch
        -0x7e6492ae -> :sswitch_4e
        -0x6bd62d93 -> :sswitch_43
        -0x3fcc2971 -> :sswitch_38
        0x51bd034 -> :sswitch_2d
        0x27ef095c -> :sswitch_22
        0x3f912f91 -> :sswitch_17
        0x679da518 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_74  #00000000
        :pswitch_70  #00000001
        :pswitch_6f  #00000002
        :pswitch_6a  #00000003
        :pswitch_65  #00000004
        :pswitch_74  #00000005
        :pswitch_61  #00000006
    .end packed-switch
.end method

.method private getWallpaperScaleAnimationStartResultByType(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_4a

    goto :goto_44

    :sswitch_e
    const-string p0, "app_exit"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_44

    :cond_17
    const/4 v2, 0x4

    goto :goto_44

    :sswitch_19
    const-string p0, "app_launch"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_44

    :cond_22
    const/4 v2, 0x3

    goto :goto_44

    :sswitch_24
    const-string p0, "app_recent_exit"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_44

    :cond_2d
    const/4 v2, 0x2

    goto :goto_44

    :sswitch_2f
    const-string p0, "interrupt_anim"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_44

    :cond_38
    move v2, v0

    goto :goto_44

    :sswitch_3a
    const-string p0, "app_recent_enter"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_44

    :cond_43
    move v2, v1

    :goto_44
    packed-switch v2, :pswitch_data_60

    return v1

    :pswitch_48  #0x0, 0x1, 0x2, 0x3, 0x4
    return v0

    nop

    :sswitch_data_4a
    .sparse-switch
        -0x7e6492ae -> :sswitch_3a
        -0x6bd62d93 -> :sswitch_2f
        -0x672c649c -> :sswitch_24
        0x3f912f91 -> :sswitch_19
        0x4595247c -> :sswitch_e
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_48  #00000001
        :pswitch_48  #00000002
        :pswitch_48  #00000003
        :pswitch_48  #00000004
    .end packed-switch
.end method

.method private getZoomOutAndBlurAnim(FFF)Landroid/animation/ObjectAnimator;
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mZoomOutAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mZoomOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_f
    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float v1, p3, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_34

    cmpl-float p3, p1, v0

    if-nez p3, :cond_27

    sget-object p1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->ZOOM_OUT:Landroid/util/FloatProperty;

    new-array p3, v3, [F

    aput p2, p3, v4

    invoke-static {p0, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_61

    :cond_27
    sget-object p3, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->ZOOM_OUT:Landroid/util/FloatProperty;

    new-array v0, v2, [F

    aput p1, v0, v4

    aput p2, v0, v3

    invoke-static {p0, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_61

    :cond_34
    cmpl-float p1, p2, v0

    if-nez p1, :cond_43

    sget-object p1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->BLUR:Landroid/util/FloatProperty;

    new-array p2, v3, [F

    aput p3, p2, v4

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_61

    :cond_43
    new-array p1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->ZOOM_OUT:Landroid/util/FloatProperty;

    new-array v1, v3, [F

    aput p2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, p1, v4

    sget-object p2, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->BLUR:Landroid/util/FloatProperty;

    new-array v0, v3, [F

    aput p3, v0, v4

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_61
    new-instance p2, Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;-><init>(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mZoomOutAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private handleInvalidSurface(Lcom/android/launcher3/LauncherState;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_49

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "handleInvalidSurface but surface is invalid, surface = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDepthController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_47

    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_47
    const/4 p0, 0x1

    return p0

    :cond_49
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$startWallpaperAnimation$0(ZLjava/lang/String;ZLandroid/os/Bundle;)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "OplusDepthController"

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_29

    goto :goto_90

    :cond_29
    const/16 v0, 0x7e3

    if-nez p1, :cond_42

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    :cond_42
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getWallpaperScaleAnimationEndValue(Ljava/lang/String;Z)F

    move-result p1

    sput p1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    :try_start_48
    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const-string/jumbo v4, "oplus.wallpaper.animation"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_66} :catch_67

    goto :goto_6c

    :catch_67
    const-string p0, "WallpaperManager.getInstance(mLauncher).sendWallpaperCommand occours IllegalArgumentException"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6c
    const-string/jumbo p0, "startWallpaperAnimationImpl action:"

    const-string p1, " mWallpaperScaleEndValue:"

    invoke-static {p0, p2, p1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    invoke-static {p0, p1, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    return-void

    :cond_90
    :goto_90
    const-string/jumbo p0, "startWallpaperAnimationImpl window para is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBinderThreadUxFlag(I)V
    .registers 3

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mShouldSetBinderThreadUx:Z

    if-eqz p0, :cond_1c

    :try_start_a
    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->setBinderThreadUxFlag(II)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    goto :goto_1c

    :catchall_13
    move-exception p0

    const-string p1, "OplusDepthController"

    const-string/jumbo v0, "setBinderThreadUxFlag Throwable!"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private setBlur(F)Z
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "OplusDepthController"

    const/4 v3, 0x0

    if-nez v0, :cond_58

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "Static blur: value = "

    const-string v4, ", mStaticBlurView = "

    invoke-static {v0, p1, v4}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", blurBackground = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_30

    :cond_2d
    const-string/jumbo v4, "null"

    :goto_30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    if-eqz v0, :cond_53

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    invoke-virtual {v0, p1}, Lcom/android/launcher/views/OplusStaticBlurView;->setAlpha(F)V

    goto :goto_53

    :cond_4e
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    invoke-static {v0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/view/View;F)Z

    :cond_53
    :goto_53
    iput p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    iput v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    return v3

    :cond_58
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_115

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_115

    :cond_64
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget v4, p0, Lcom/android/launcher3/statehandlers/DepthController;->mMaxBlurRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    iput p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    iput v4, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_c3

    const-string/jumbo v4, "setBlur("

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "), mCurrentBlur = %d ; value = %f ; mBlurDisabledForAppLaunch = %s ; mCrossWindowBlursEnabled = %s ; caller = %s "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v7, 0x2

    iget-boolean v8, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlurDisabledForAppLaunch:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-boolean v8, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCrossWindowBlursEnabled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/16 v8, 0x8

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBlurLayer:Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;

    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_ce

    return v5

    :cond_ce
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    invoke-virtual {v2, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_eb

    cmpg-float p1, p1, v1

    if-gez p1, :cond_eb

    move p1, v5

    goto :goto_ec

    :cond_eb
    move p1, v3

    :goto_ec
    if-eqz p1, :cond_f8

    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mInEarlyWakeUp:Z

    if-nez v0, :cond_f8

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    iput-boolean v5, p0, Lcom/android/launcher3/statehandlers/DepthController;->mInEarlyWakeUp:Z

    goto :goto_103

    :cond_f8
    if-nez p1, :cond_103

    iget-boolean p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mInEarlyWakeUp:Z

    if-eqz p1, :cond_103

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;

    iput-boolean v3, p0, Lcom/android/launcher3/statehandlers/DepthController;->mInEarlyWakeUp:Z

    :cond_103
    :goto_103
    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_114

    invoke-interface {p0, v2}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    move-result p0

    return p0

    :cond_114
    return v3

    :cond_115
    :goto_115
    const-string/jumbo p1, "setBlur invalid surface, mSurface = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    iput v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    return v3
.end method

.method private setIconBlur(F)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur()Z

    move-result v1

    if-eqz v1, :cond_1b

    iput p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIconBlur:F

    invoke-virtual {v0, p1}, Lcom/android/launcher3/views/WorkSpaceScrimView;->setIconBlur(F)V

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private setWallpaperUxEnable(Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_5c

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDisableWallPaperZoomOut()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5c

    :cond_d
    const-string v0, "OplusDepthController"

    const-string/jumbo v1, "uxEnable"

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "setWallpaperUxEnable sendWallpaperCommand uxEnable true"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_21
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "setWallpaperUxEnable sendWallpaperCommand uxEnable false"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez p1, :cond_3d

    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    :cond_3d
    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-eqz p1, :cond_5c

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "wallpaper.set.animationThreadUx"

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private setZoomOut(F)Z
    .registers 8

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDisableWallPaperZoomOut()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    const-string v2, "OplusDepthController"

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setZoomOut: value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    invoke-static {p1, v3, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/statehandlers/DepthController;->ensureDependencies()V

    iget v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_43

    return v1

    :cond_43
    iput p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportZoomOut()Z

    move-result v0

    if-nez v0, :cond_4c

    return v1

    :cond_4c
    iget v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOverlayScrollProgress:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_84

    const/4 v4, 0x1

    :try_start_65
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6c

    goto :goto_6d

    :cond_6c
    move v3, p1

    :goto_6d
    invoke-direct {p0, v3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->shouldSetBinderThreadUx(F)V

    invoke-direct {p0, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBinderThreadUxFlag(I)V

    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0, v3}, Landroid/app/WallpaperManager;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBinderThreadUxFlag(I)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7b} :catch_7c

    goto :goto_83

    :catch_7c
    move-exception p0

    const-string/jumbo p1, "setZoomOut error!"

    invoke-static {v2, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_83
    return v4

    :cond_84
    return v1
.end method

.method private setZoomOutAnim(Lcom/android/launcher3/anim/PendingAnimation;FLandroid/animation/TimeInterpolator;)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->ZOOM_OUT:Landroid/util/FloatProperty;

    invoke-virtual {v0, p0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mZoomOutAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mZoomOutAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_21
    const/high16 v0, -0x40800000  # -1.0f

    invoke-direct {p0, v0, p2, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getZoomOutAndBlurAnim(FFF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/anim/PendingAnimation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    :cond_35
    return-void
.end method

.method private shouldSetBinderThreadUx(F)V
    .registers 3

    sget v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->GESTURE_TO_HOME:I

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v0

    if-nez v0, :cond_10

    sget v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->MENU_BACK_TO_HOME:I

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mShouldSetBinderThreadUx:Z

    :cond_13
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mShouldSetBinderThreadUx:Z

    :cond_1b
    return-void
.end method

.method private startBackgroundResetWallpaper(Z)V
    .registers 4

    const-string v0, "app_background_reset"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAnimationParams(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private startWallpaperAnimation(ZLjava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isWallpaperAnimDisable()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_30

    goto :goto_70

    :cond_30
    sget-object v0, Lcom/oplus/util/OplusExecutors;->WALLPAPER_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_42

    move v6, v3

    goto :goto_44

    :cond_42
    const/4 v1, 0x0

    move v6, v1

    :goto_44
    if-eqz v6, :cond_62

    sget-object v1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getThread()Ljava/lang/Thread;

    move-result-object v4

    check-cast v4, Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    invoke-virtual {v1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    const/16 v2, 0x7e3

    invoke-virtual {v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    :cond_62
    new-instance v1, Lcom/android/launcher/filter/a;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p2

    move v8, p1

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher/filter/a;-><init>(Lcom/android/launcher3/uioverrides/states/OplusDepthController;ZLjava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_70
    :goto_70
    const-string p0, "OplusDepthController"

    const-string/jumbo p1, "main thread : startWallpaperAnimationImpl window para is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addDepthAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;Landroid/view/animation/Interpolator;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, -0x40800000  # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getZoomOutAndBlurAnim(FFF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object v3, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->BLUR:Landroid/util/FloatProperty;

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v4

    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v5

    move-object v1, p3

    move-object v2, p0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public addDepthAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;Landroid/view/animation/Interpolator;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "OLintNullPointCheckForParameter"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result p2

    if-nez p2, :cond_38

    iget-boolean p2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIgnoreStateChangesDuringMultiWindowAnimation:Z

    if-eqz p2, :cond_10

    goto :goto_38

    :cond_10
    iget-object p2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolderNoAnim(Lcom/android/launcher3/views/ActivityContext;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderDepth()F

    move-result p2

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderBlur()F

    move-result p1

    :cond_30
    invoke-direct {p0, p3, p2, p4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setZoomOutAnim(Lcom/android/launcher3/anim/PendingAnimation;FLandroid/animation/TimeInterpolator;)V

    sget-object p2, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->BLUR:Landroid/util/FloatProperty;

    invoke-virtual {p3, p0, p2, p1, p4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public backgroundResetWallpaper(Z)V
    .registers 4

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isWallpaperAnimDisable()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string v0, "backgroundResetWallpaper mWallpaperScaleEndValue: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mBackgroundResetWallpaperSizeFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBackgroundResetWallpaperSizeFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isRestWallpaperSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDepthController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_40

    sget v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBackgroundResetWallpaperSizeFlag:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startBackgroundResetWallpaper(Z)V

    goto :goto_5f

    :cond_40
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBackgroundResetWallpaperSizeFlag:Z

    if-eqz v0, :cond_5f

    if-nez p1, :cond_5f

    sget v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    const v1, 0x3f99999a  # 1.2f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_5f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBackgroundResetWallpaperSizeFlag:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startBackgroundResetWallpaper(Z)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public createDepthAnim(FF)Landroid/animation/ObjectAnimator;
    .registers 4

    const/high16 v0, -0x40800000  # -1.0f

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getZoomOutAndBlurAnim(FFF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public createDepthAnim(Lcom/android/launcher3/LauncherState;)Landroid/animation/ObjectAnimator;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result p1

    const/high16 v1, -0x40800000  # -1.0f

    invoke-direct {p0, v1, v0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getZoomOutAndBlurAnim(FFF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public createLightFolderBlurAnim(F)Landroid/animation/ValueAnimator;
    .registers 3

    const/high16 v0, -0x40800000  # -1.0f

    invoke-direct {p0, v0, v0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getZoomOutAndBlurAnim(FFF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public dispatchTransactionSurface(F)Z
    .registers 3

    iget p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setZoomOut(F)Z

    move-result p1

    iget v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlur(F)Z

    move-result p0

    if-nez p1, :cond_13

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public getCurrentBlur()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    return p0
.end method

.method public getCurrentDepth()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    return p0
.end method

.method public getCurrentIconBlur()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIconBlur:F

    return p0
.end method

.method public getWpBlur()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    return p0
.end method

.method public hideBlurSurface()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBlurLayer:Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->hide(Lcom/android/launcher3/Launcher;Landroid/view/SurfaceControl;I)V

    :cond_d
    return-void
.end method

.method public isWallpaperScaleAlreadyInTarget(Ljava/lang/String;Z)Z
    .registers 4

    sget v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getWallpaperScaleAnimationEndValue(Ljava/lang/String;Z)F

    move-result p0

    cmpl-float p0, v0, p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mIgnoreStateChangesDuringMultiWindowAnimation:Z

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;Z)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v3, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getBlur(Landroid/content/Context;Z)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->createDepthAnim(FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/uioverrides/states/OplusDepthController$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController$5;-><init>(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public resetWallpaperSize()V
    .registers 4

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isWallpaperAnimDisable()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "resetWallpaperSize mWallpaperScaleEndValue: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mWallpaperScaleEndValue:F

    const-string v2, "OplusDepthController"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    const-string v0, "app_reset_scale"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAnimationParams(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActivityStarted(Z)V
    .registers 4

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aer/ProvisionManager;->isWorkFolderOpen(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    iput v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    :cond_14
    invoke-super {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController;->setActivityStarted(Z)V

    return-void
.end method

.method public setBlurWithoutAnim(F)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->BLUR:Landroid/util/FloatProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public setDepth(F)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    const/high16 v0, 0x43800000  # 256.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setZoomOut(F)Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlur(F)Z

    return-void
.end method

.method public setDepthWithoutAnim(F)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->ZOOM_OUT:Landroid/util/FloatProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public setIconBlurWithoutAnim(F)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->ICON_BLUR:Landroid/util/FloatProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->ignoreBackgroundState()Z

    move-result v0

    const-string v1, "OplusDepthController"

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_18

    const-string p0, "Ignore as recent reverse scene"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolderNoAnim(Lcom/android/launcher3/views/ActivityContext;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderDepth()F

    move-result v0

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderBlur()F

    move-result v2

    :cond_3d
    iget-object v3, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v3

    if-eqz v3, :cond_4b

    const/high16 v0, 0x3f000000  # 0.5f

    :cond_4b
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_5f

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->pause()V

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mMultiWindowChangeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_5f
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v5, v4, Lcom/android/launcher/Launcher;

    if-eqz v5, :cond_70

    check-cast v4, Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->isShelfShowing()Z

    move-result v3

    :cond_70
    if-eqz v3, :cond_78

    const-string v0, " setState(), Shelf is Showing, skip setZoomOut!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :cond_78
    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setZoomOut(F)Z

    :goto_7b
    iget v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_8d

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->handleInvalidSurface(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_aa

    invoke-direct {p0, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlur(F)Z

    goto :goto_aa

    :cond_8d
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_97

    iget p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->dispatchTransactionSurface(F)Z

    goto :goto_aa

    :cond_97
    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_aa

    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_aa
    :goto_aa
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v1

    if-nez v1, :cond_8d

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_8d

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_39

    if-ne p1, v3, :cond_30

    goto :goto_39

    :cond_30
    const/16 v2, 0xd

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    goto :goto_3b

    :cond_39
    :goto_39
    sget-object p2, Lcom/android/launcher3/states/OplusSpringLoadedState;->LOAD_TRANSLATE_PATH:Landroid/view/animation/Interpolator;

    :goto_3b
    sget-object v2, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v2

    if-eqz v2, :cond_77

    if-eq p1, v3, :cond_49

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_57

    :cond_49
    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_69

    :cond_57
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_77

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_77

    :cond_69
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_70

    const/4 v0, 0x1

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    :goto_71
    const-string v2, "edit_open_close"

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    goto :goto_7a

    :cond_77
    invoke-direct {p0, p3, v0, p2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setZoomOutAnim(Lcom/android/launcher3/anim/PendingAnimation;FLandroid/animation/TimeInterpolator;)V

    :goto_7a
    iget v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mBlur:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_8d

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->handleInvalidSurface(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_8d

    sget-object p1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->BLUR:Landroid/util/FloatProperty;

    invoke-virtual {p3, p0, p1, v1, p2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public setStaticBlurView(Lcom/android/launcher/views/OplusStaticBlurView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    return-void
.end method

.method public setSurface(Landroid/view/SurfaceControl;)Z
    .registers 2

    if-nez p1, :cond_8

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlur(F)Z

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-super {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)Z

    move-result p0

    return p0
.end method

.method public showBlurSurface(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBlurLayer:Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBlurLayer:Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;

    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBlurLayer:Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController;->mSurface:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController;->mCurrentBlur:I

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->show(Lcom/android/launcher3/Launcher;Landroid/view/SurfaceControl;II)V

    return-void
.end method

.method public startWallpaperAnimation(ZLjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isWallpaperAnimDisable()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, p2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getWallpaperScaleAnimationStartResultByType(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "OplusDepthController"

    if-nez v0, :cond_18

    const-string/jumbo p0, "startWallpaperAnimationImpl other type is not start wallpaper command, type : "

    invoke-static {p0, p2, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAnimationParams(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string/jumbo p0, "startWallpaperAnimationImpl bundle is empty"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->mBackgroundResetWallpaperSizeFlag:Z

    return-void
.end method
