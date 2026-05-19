.class public Lcom/android/launcher/wallpaper/WallpaperUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_NAVIGATION_MODE:Ljava/lang/String; = "com.nav.color"

.field public static final BRIGHT_WALLPAPER_BRIGHTNESS:I = 0xc4

.field public static final BRIGHT_WALLPAPER_BRIGHTNESS2:I = 0x5f

.field public static final BRIGHT_WALLPAPER_BRIGHTNESS3:I = 0x14

.field public static final DARK_WALLPAPER_BRIGHTNESS:I = 0x6c

.field private static final DEBUG_ENABLE:Z

.field private static final DEFAULT_WALLPAPER_NAME_PREFIX_IN_OPLUS_RESOURCE:Ljava/lang/String;

.field private static final EXTRA_LAUNCHER_MODE:Ljava/lang/String; = "LAUNCHER_MODE"

.field private static final EXTRA_NAVIGATION_MODE:Ljava/lang/String; = "NAVIGATION_MODE"

.field public static final FLOAT_0:F = 0.0f

.field public static final ICON_ALPHA_HIDE_DURATION:I = 0x10e

.field public static final ICON_ALPHA_SHOW_DURATION:I = 0x21c

.field private static final OPLUS_LOWER:Ljava/lang/String;

.field private static final OPLUS_UPPER:Ljava/lang/String;

.field public static final SAMPLE_SIZE:I = 0x4

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "WallpaperUtil"

.field public static final TEXT_COLOR_STATE_DARK:I = 0x1

.field public static final TEXT_COLOR_STATE_NORMAL:I = 0x0

.field public static final WHITE_TEXT_SHADOW_DX:F = 0.0f

.field public static final WHITE_TEXT_SHADOW_DY:F = 0.0f

.field public static final WHITE_TEXT_SHADOW_RADIUS:F = 8.0f

.field private static sFolderCloseDuration:I

.field private static sFolderOpenDuration:I

.field private static sForceUpdate:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->DEBUG_ENABLE:Z

    const v0, 0x7f120050

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->DEFAULT_WALLPAPER_NAME_PREFIX_IN_OPLUS_RESOURCE:Ljava/lang/String;

    const v0, 0x7f120053

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->OPLUS_UPPER:Ljava/lang/String;

    const v0, 0x7f120052

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->OPLUS_LOWER:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sForceUpdate:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher/wallpaper/WallpaperUtil;->lambda$getLauncherContentAnimWithGaussian$0(Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static calculateWallpaperColor(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)I
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v2

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/launcher/wallpaper/ShadowCalculator;->setShadowStatus(Lcom/android/launcher/Launcher;IILandroid/graphics/Bitmap;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "averageValue:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperUtil"

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/wallpaper/sdk/ImageProcess;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result p0

    return p0
.end method

.method private static getBuildModel()Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperUtil;->OPLUS_UPPER:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public static getLauncherContentAnimWithGaussian(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDragLayer;Z)Landroid/animation/AnimatorSet;
    .registers 23

    move-object/from16 v8, p0

    move/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v11

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1c
    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2c
    invoke-virtual {v11, v2, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2f
    invoke-virtual {v11}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_4e

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :cond_4e
    invoke-virtual {v0, v8}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v3

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderDepth()F

    move-result v4

    invoke-virtual {v0, v8}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v5

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderBlur()F

    move-result v6

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    sget-object v7, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v14

    const/4 v7, 0x0

    if-nez v9, :cond_71

    move v15, v7

    move/from16 v16, v14

    const/high16 v7, 0x3f800000  # 1.0f

    goto :goto_75

    :cond_71
    move/from16 v16, v14

    const/high16 v15, 0x3f800000  # 1.0f

    :goto_75
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v17, v13

    const v13, 0x7f0b005d

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sput v13, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b005e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sput v13, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getInstance()Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->getFolderBackgroundRoomInProgress()F

    move-result v13

    sget-boolean v14, Lcom/android/launcher/wallpaper/WallpaperUtil;->DEBUG_ENABLE:Z

    if-eqz v14, :cond_f1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAlphaAnimForGaussian -- show = "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", currentAlpha = "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", srcAlpha = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dstAlpha = "

    const-string v8, ", state = "

    invoke-static {v14, v7, v1, v15, v8}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", closeFolderDepth = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", openFolderDepth = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", closeFolderBlur = "

    const-string v1, ", openFolderBlur = "

    invoke-static {v14, v4, v0, v5, v1}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", sFolderOpenDuration = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sFolderCloseDuration = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    const-string v1, "Wallpapers"

    const-string v8, "WallpaperUtil"

    invoke-static {v14, v0, v1, v8}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_f1
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v0

    if-eqz v0, :cond_110

    const/high16 v0, -0x40800000  # -1.0f

    if-eqz v9, :cond_104

    move v1, v5

    goto :goto_105

    :cond_104
    move v1, v6

    :goto_105
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->createDepthAnim(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "folder_open_close"

    invoke-virtual {v2, v9, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :goto_10e
    move-object v14, v0

    goto :goto_11f

    :cond_110
    if-eqz v9, :cond_114

    move v0, v3

    goto :goto_115

    :cond_114
    move v0, v4

    :goto_115
    if-eqz v9, :cond_119

    move v1, v5

    goto :goto_11a

    :cond_119
    move v1, v6

    :goto_11a
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->createDepthAnim(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_10e

    :goto_11f
    if-eqz v9, :cond_127

    sget v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    int-to-float v0, v0

    mul-float/2addr v0, v13

    float-to-long v0, v0

    goto :goto_12a

    :cond_127
    sget v0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    int-to-long v0, v0

    :goto_12a
    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher/wallpaper/WallpaperUtil$1;

    move-object v0, v1

    move-object/from16 v18, v8

    move-object v8, v1

    move/from16 v1, p2

    move/from16 v19, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher/wallpaper/WallpaperUtil$1;-><init>(ZLcom/android/launcher3/uioverrides/states/OplusDepthController;FFFFLcom/android/launcher/Launcher;)V

    invoke-virtual {v14, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v19, v0, v6

    const/4 v7, 0x1

    aput v15, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    if-eqz v9, :cond_153

    const/high16 v0, 0x44070000  # 540.0f

    mul-float/2addr v0, v13

    float-to-long v0, v0

    goto :goto_155

    :cond_153
    const-wide/16 v0, 0x10e

    :goto_155
    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v15, Lcom/android/launcher/wallpaper/d;

    move-object v0, v15

    move-object v1, v11

    move/from16 v2, p2

    move-object v3, v12

    move-object/from16 v4, p0

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/wallpaper/d;-><init>(Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;)V

    invoke-virtual {v8, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v15, Lcom/android/launcher/wallpaper/WallpaperUtil$2;

    move-object v0, v15

    move-object v1, v12

    move-object v2, v11

    move/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/wallpaper/WallpaperUtil$2;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;)V

    invoke-virtual {v8, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/common/config/AnimationConstant;->workspaceScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/OplusLauncherAnimUtils;->SCALE:Landroid/util/FloatProperty;

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    if-eqz v9, :cond_186

    sget v3, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    goto :goto_188

    :cond_186
    sget v3, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    :goto_188
    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-static {v0, v9, v3, v4, v5}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->setHotSeatPositionToNormalState(Lcom/android/launcher/Launcher;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v6

    invoke-static {v11, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v0, v9}, Lcom/android/common/config/AnimationConstant;->animIndicatorScaleRange(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object v5

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v12, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz v9, :cond_1ae

    sget v4, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    int-to-float v4, v4

    mul-float/2addr v4, v13

    float-to-long v4, v4

    goto :goto_1b1

    :cond_1ae
    sget v4, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    int-to-long v4, v4

    :goto_1b1
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_1bc

    sget v4, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    int-to-float v4, v4

    mul-float/2addr v4, v13

    float-to-long v4, v4

    goto :goto_1bf

    :cond_1bc
    sget v4, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    int-to-long v4, v4

    :goto_1bf
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_1ca

    sget v4, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderCloseDuration:I

    int-to-float v4, v4

    mul-float/2addr v4, v13

    float-to-long v4, v4

    goto :goto_1cd

    :cond_1ca
    sget v4, Lcom/android/launcher/wallpaper/WallpaperUtil;->sFolderOpenDuration:I

    int-to-long v4, v4

    :goto_1cd
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    if-eqz v4, :cond_1e1

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setPivotX(F)V

    :cond_1e1
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_20b

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v4

    if-eqz v4, :cond_1f7

    move-object/from16 v4, v17

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_201

    :cond_1f7
    move-object/from16 v4, v17

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setPivotX(F)V

    :goto_201
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setPivotY(F)V

    goto :goto_21e

    :cond_20b
    move-object/from16 v4, v17

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setPivotY(F)V

    :goto_21e
    new-instance v4, Lcom/android/launcher/wallpaper/WallpaperUtil$3;

    move-object/from16 v5, p1

    invoke-direct {v4, v11, v9, v5, v0}, Lcom/android/launcher/wallpaper/WallpaperUtil$3;-><init>(Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher3/OplusDragLayer;Lcom/android/launcher/Launcher;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v9, :cond_22d

    sget-object v0, Lcom/android/common/config/AnimationConstant;->FOLDER_CLOSE:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_22f

    :cond_22d
    sget-object v0, Lcom/android/common/config/AnimationConstant;->FOLDER_OPEN:Landroid/view/animation/OplusBezierInterpolator;

    :goto_22f
    move-object/from16 v4, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v14, v0, v6

    aput-object v8, v0, v7

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const/4 v5, 0x3

    aput-object v2, v0, v5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    if-eqz v16, :cond_255

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_258

    if-eqz v9, :cond_258

    :cond_255
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_258
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-object v4
.end method

.method public static getStaticWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;
    .registers 7

    const-string p2, "WallpaperUtil"

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStaticWallpaper forceUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/launcher/wallpaper/WallpaperUtil;->sForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/launcher/wallpaper/WallpaperUtil;->sForceUpdate:Z

    if-eqz v1, :cond_2f

    const v1, 0x20001

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_39

    :cond_2f
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_39} :catch_3b

    :goto_39
    move-object v0, p0

    goto :goto_6f

    :catch_3b
    move-exception v1

    :try_start_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallpaperManager getDrawable error, to getWallpaperFile, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_6f

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_64} :catch_65

    goto :goto_39

    :catch_65
    move-exception p0

    const-string p1, "getWallpaperFile error: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getStaticWallpaper, result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Wallpapers"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sForceUpdate:Z

    return-object v0
.end method

.method public static isRTLString(Ljava/lang/CharSequence;)Z
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    if-eq p0, v2, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/16 v0, 0x10

    if-eq p0, v0, :cond_23

    const/16 v0, 0x11

    if-ne p0, v0, :cond_24

    :cond_23
    move v1, v2

    :cond_24
    return v1
.end method

.method private static synthetic lambda$getLauncherContentAnimWithGaussian$0(Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V
    .registers 8

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    invoke-virtual {p0, p5}, Lcom/android/launcher3/OplusWorkspace;->setAlpha(F)V

    const/4 p0, 0x0

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_24

    :cond_1a
    if-nez p1, :cond_27

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_27

    :cond_24
    invoke-virtual {p2, p5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimAlpha(F)V

    :cond_27
    if-eqz p1, :cond_35

    sget-object p2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p3, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-virtual {p4, p0}, Lcom/android/launcher3/OplusHotseat;->setAnimAlpha(F)V

    goto :goto_42

    :cond_35
    if-nez p1, :cond_3f

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_42

    :cond_3f
    invoke-virtual {p4, p5}, Lcom/android/launcher3/OplusHotseat;->setAnimAlpha(F)V

    :cond_42
    :goto_42
    return-void
.end method

.method public static screenshotWallpaper(Lcom/android/launcher/Launcher;F)Landroid/graphics/Bitmap;
    .registers 14

    const-string v0, " scale:"

    const-string v1, " height:"

    const-string v2, " width:"

    const-string v3, "Wallpapers"

    const-string v4, "WallpaperUtil"

    const-string/jumbo v5, "screenshotWallpaper"

    invoke-static {v3, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    :try_start_2c
    invoke-interface {v8}, Landroid/view/IWindowManager;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_67

    if-eqz v8, :cond_90

    int-to-float v9, v5

    mul-float/2addr v9, p1

    float-to-int v9, v9

    int-to-float v10, p0

    mul-float/2addr v10, p1

    float-to-int v10, v10

    const/4 v11, 0x1

    :try_start_39
    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "screenshotWallpaper bmp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v4, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_64} :catch_65

    goto :goto_90

    :catch_65
    move-exception v3

    goto :goto_69

    :catch_67
    move-exception v3

    const/4 v8, 0x0

    :goto_69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "captureFullScreen  bmp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n screenshotWallpaper e:"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v9, v4}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_90
    :goto_90
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v8
.end method

.method public static setNavBarColor(Lcom/android/launcher/Launcher;ZZ)V
    .registers 6

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p0, :cond_a

    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNavBarColor. isNavBarWallpaperBright = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , enterLauncher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wallpapers"

    const-string v2, "WallpaperUtil"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_48

    or-int/lit8 p1, p2, 0x10

    goto :goto_4a

    :cond_48
    and-int/lit8 p1, p2, -0x11

    :goto_4a
    invoke-static {p0, p1}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    goto :goto_6a

    :cond_4e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nav.color"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAVIGATION_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "LAUNCHER_MODE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_6a
    return-void
.end method

.method public static setStatusBarColor(Lcom/android/launcher/Launcher;Z)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v0, "WallpaperUtil"

    const-string v1, "Wallpapers"

    if-nez p0, :cond_18

    const-string/jumbo p0, "setStatusBarColor. The decorView is null."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    const-string/jumbo v2, "setStatusBarColor. isStatusBarWallpaperBright = "

    invoke-static {v2, p1, v1, v0}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    goto :goto_2d

    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    :goto_2d
    invoke-static {p0, p1}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public static setWallPaperForceUpdate(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher/wallpaper/WallpaperUtil;->sForceUpdate:Z

    return-void
.end method

.method public static updatePaintShadowLayer(Landroid/graphics/Paint;)V
    .registers 1

    return-void
.end method

.method public static updateTextColor(Landroid/widget/TextView;)V
    .registers 6

    const-string v0, "Wallpapers"

    const-string v1, "WallpaperUtil"

    if-nez p0, :cond_d

    const-string/jumbo p0, "textView is null!"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_29

    const-string v2, "!isThemeTextColorDefault"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "clear shadow when theme text color has been redefined!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p0, v3, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void

    :cond_29
    invoke-static {v4, p0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextShadow(ZLandroid/widget/TextView;)Z

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_39

    const v0, 0x7f13024c

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_3f

    :cond_39
    const v0, 0x7f13024d

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_3f
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_4f

    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4f
    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_75

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/util/FontManager;

    iget v0, v0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_75

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_75
    return-void
.end method

.method public static updateTextShadow(ZLandroid/widget/TextView;)Z
    .registers 7

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WallpaperUtil"

    const/4 v3, 0x0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "shadowColor should be cleared when isWorkspaceWpBright"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p1, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_2d

    :cond_1a
    const/high16 v0, 0x4d000000  # 1.34217728E8f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string/jumbo v4, "updateTextShadow() shadowColor is black."

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/high16 v2, 0x41000000  # 8.0f

    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_2d
    const/4 v0, 0x1

    if-eqz p0, :cond_33

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->invalidate(Z)V

    :cond_33
    return v0
.end method
