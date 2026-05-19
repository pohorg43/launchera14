.class public final Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;
.super Lcom/android/quickstep/LauncherSwipeHandlerV2;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusLauncherSwipeHandlerV2Impl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusLauncherSwipeHandlerV2Impl.kt\ncom/android/quickstep/OplusLauncherSwipeHandlerV2Impl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,893:1\n13309#2,2:894\n1#3:896\n*S KotlinDebug\n*F\n+ 1 OplusLauncherSwipeHandlerV2Impl.kt\ncom/android/quickstep/OplusLauncherSwipeHandlerV2Impl\n*L\n155#1:894,2\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$Companion;

.field private static final FACTOR_HEIGHT_FOR_TARGET_RECT:F = 9.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FACTOR_WIDTH_FOR_TARGET_RECT:F = 8.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FACTOR_Y_FOR_TARGET_POSITION:F = 3.3f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PACKAGE_NAME_CAMERA:Ljava/lang/String; = "com.oplus.camera"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusLauncherSwipeHandlerV2Impl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private customIconRadiusStartProgress:F

.field private iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

.field private mLauncherContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

.field private mReverseDisable:Z

.field private mRunningTaskFullscreenBounds:Landroid/graphics/Rect;

.field private startCustomIconRadius:F

.field private workspaceAnim:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->Companion:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskAnimationManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputConsumer"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p8}, Lcom/android/quickstep/LauncherSwipeHandlerV2;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->mReverseDisable:Z

    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->startCustomIconRadius:F

    return-void
.end method

.method public static final synthetic access$fromRecentReverseState(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->fromRecentReverseState()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    return-object p0
.end method

.method public static final synthetic access$getIconSurfaceManager(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIconTransitionParam(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;FLandroid/graphics/RectF;IIFFIFFZIZZZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;
    .registers 16

    invoke-direct/range {p0 .. p15}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->getIconTransitionParam(FLandroid/graphics/RectF;IIFFIFFZIZZZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMLauncherContentAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->mLauncherContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    return-object p0
.end method

.method public static final synthetic access$getMReverseDisable$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->mReverseDisable:Z

    return p0
.end method

.method public static final synthetic access$getMRunningTaskFullscreenBounds$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->mRunningTaskFullscreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->workspaceAnim:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    return-object p0
.end method

.method public static final synthetic access$setIconSurfaceHolder$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    return-void
.end method

.method public static final synthetic access$setMLauncherContentAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->mLauncherContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    return-void
.end method

.method public static final synthetic access$setMReverseDisable$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->mReverseDisable:Z

    return-void
.end method

.method public static final synthetic access$setWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->workspaceAnim:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    return-void
.end method

.method private final getCornerRadiusForNonDefaultTheme(FZZ)F
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_10

    sget-object p2, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {p2, p1, v2, p3}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWindowAlpha(FZZ)F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1b

    goto :goto_1a

    :cond_10
    sget-object p2, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {p2, p1, v2}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCustomWindowAlpha(FZ)F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1b

    :goto_1a
    move v0, v2

    :cond_1b
    if-eqz v0, :cond_20

    const/high16 p0, -0x40800000  # -1.0f

    goto :goto_2e

    :cond_20
    iget v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->customIconRadiusStartProgress:F

    const/high16 v2, 0x3f800000  # 1.0f

    iget v3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->startCustomIconRadius:F

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    :goto_2e
    return p0
.end method

.method private final getIconTransitionParam(FLandroid/graphics/RectF;IIFFIFFZIZZZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;
    .registers 30

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iput v8, v6, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    iput v8, v6, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    if-nez p13, :cond_4a

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    int-to-float v11, v4

    div-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    int-to-float v3, v3

    div-float/2addr v11, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v8, v10

    mul-float/2addr v8, v2

    float-to-int v2, v8

    iput v9, v7, Landroid/graphics/Rect;->left:I

    iput v9, v7, Landroid/graphics/Rect;->top:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    if-eqz p10, :cond_45

    invoke-virtual {v5, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_48

    :cond_45
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_48
    move v2, v9

    goto :goto_9e

    :cond_4a
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v10

    int-to-float v11, v3

    div-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v12

    int-to-float v13, v4

    div-float/2addr v12, v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v8, v10

    mul-float/2addr v8, v13

    float-to-int v8, v8

    const/4 v13, 0x0

    cmpg-float v13, p6, v13

    if-gtz v13, :cond_64

    sub-int v8, v8, p11

    :cond_64
    iget v13, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v9, v13, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p10, :cond_6f

    invoke-virtual {v5, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_48

    :cond_6f
    invoke-virtual {v5, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float v8, v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float v10, v8, v10

    div-float/2addr v10, v8

    mul-float/2addr v10, v11

    float-to-int v8, v10

    rem-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_83

    add-int/lit8 v8, v8, 0x1

    :cond_83
    div-int/lit8 v8, v8, 0x2

    :goto_85
    mul-int/lit8 v10, v8, 0x2

    sub-int v10, v3, v10

    int-to-float v10, v10

    mul-float/2addr v10, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_96

    add-int/lit8 v8, v8, 0x1

    goto :goto_85

    :cond_96
    int-to-float v2, v8

    mul-float/2addr v2, v12

    float-to-int v2, v2

    sub-int/2addr v3, v8

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move v10, v12

    :goto_9e
    iget v3, v6, Landroid/graphics/PointF;->x:F

    move/from16 v4, p7

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget v2, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-nez p12, :cond_b2

    div-float v0, p9, v10

    mul-float v0, v0, p8

    goto :goto_cd

    :cond_b2
    move/from16 v2, p14

    move/from16 v3, p15

    invoke-direct {p0, p1, v2, v3}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->getCornerRadiusForNonDefaultTheme(FZZ)F

    move-result v2

    const/high16 v3, -0x40800000  # -1.0f

    cmpg-float v3, v2, v3

    if-nez v3, :cond_c1

    const/4 v9, 0x1

    :cond_c1
    if-nez v9, :cond_c4

    goto :goto_cc

    :cond_c4
    div-float v2, p9, v10

    mul-float v2, v2, p8

    iput v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->startCustomIconRadius:F

    iput v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->customIconRadiusStartProgress:F

    :goto_cc
    move v0, v2

    :goto_cd
    new-instance v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    move/from16 v2, p5

    invoke-direct {v1, v7, v5, v2, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;-><init>(Landroid/graphics/Rect;Landroid/graphics/Matrix;FF)V

    return-object v1
.end method

.method private final releaseIconSurfaceAndGetFIV(ZLandroid/view/View;ZLandroid/graphics/RectF;ZZ)Lcom/android/launcher3/views/FloatingIconView;
    .registers 9

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_f
    const-string v0, "OplusLauncherSwipeHandlerV2Impl"

    const-string/jumbo v1, "swipeHandlerV2Impl releaseIconSurfaceAndGetFIV, set iconSurfaceHolder to null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    if-eqz p1, :cond_2f

    if-eqz p6, :cond_27

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p0, p2, p3, p4, p5}, Lcom/android/launcher3/views/FloatingIconView;->getFakeFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v0

    goto :goto_2f

    :cond_27
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p0, p2, p3, p4, p5}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v0

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public static synthetic releaseIconSurfaceAndGetFIV$default(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;ZLandroid/view/View;ZLandroid/graphics/RectF;ZZILjava/lang/Object;)Lcom/android/launcher3/views/FloatingIconView;
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    :cond_5
    move v6, p6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->releaseIconSurfaceAndGetFIV(ZLandroid/view/View;ZLandroid/graphics/RectF;ZZ)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;JZZ",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            ")",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p6

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p6}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    iput-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v3, ", currentPageTaskView= "

    const-string v4, ", runningTaskView= "

    const-string v5, ", currentPage= "

    const-string v6, "createHomeAnimationFactory: , runningTaskIndex= "

    const-string v8, "OplusLauncherSwipeHandlerV2Impl"

    if-eqz v2, :cond_7c

    invoke-static {v6, v0, v5, v1, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lcom/android/quickstep/views/TaskView;

    if-eqz v10, :cond_51

    invoke-virtual {v10}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v10

    if-eqz v10, :cond_51

    iget-object v10, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v10, :cond_51

    iget v10, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_52

    :cond_51
    const/4 v10, 0x0

    :goto_52
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v10}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v10

    if-eqz v10, :cond_71

    invoke-virtual {v10}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v10

    if-eqz v10, :cond_71

    iget-object v10, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v10, :cond_71

    iget v10, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_72

    :cond_71
    const/4 v10, 0x0

    :goto_72
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    iget-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v2, :cond_b9

    iget-object v2, v2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v2, :cond_b9

    const-string v10, "apps"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v2

    const/4 v11, 0x0

    :goto_8b
    if-ge v11, v10, :cond_b9

    aget-object v12, v2, v11

    iget-object v13, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Lcom/android/quickstep/views/TaskView;

    if-eqz v13, :cond_a7

    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v13

    if-eqz v13, :cond_a7

    iget-object v13, v13, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v13, :cond_a7

    iget v13, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v14, v12, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v13, v14, :cond_a7

    const/4 v13, 0x1

    goto :goto_a8

    :cond_a7
    const/4 v13, 0x0

    :goto_a8
    if-nez v13, :cond_b9

    iget-object v13, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget v12, v12, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v13, v12}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v12

    iput-object v12, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v12, :cond_b9

    add-int/lit8 v11, v11, 0x1

    goto :goto_8b

    :cond_b9
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v2, :cond_c6

    check-cast v2, Lcom/android/quickstep/views/TaskView;

    move-object/from16 v10, p1

    invoke-virtual {v7, v10, v2}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->findWorkspaceView(Ljava/util/ArrayList;Lcom/android/quickstep/views/TaskView;)Landroid/view/View;

    move-result-object v2

    goto :goto_d2

    :cond_c6
    iget-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/launcher3/QuickstepTransitionManager;->findLauncherView(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;

    move-result-object v2

    :goto_d2
    move-object v11, v2

    if-eqz v11, :cond_da

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    goto :goto_db

    :cond_da
    const/4 v2, 0x0

    :goto_db
    instance-of v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string/jumbo v10, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    if-eqz v2, :cond_fd

    if-eqz v11, :cond_e9

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    goto :goto_ea

    :cond_e9
    const/4 v2, 0x0

    :goto_ea
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v12, 0xca

    if-ne v2, v12, :cond_fd

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isFinishUpdateExpandItems()Z

    move-result v2

    if-nez v2, :cond_fd

    const/4 v2, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v2, 0x0

    :goto_fe
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    instance-of v14, v11, Landroid/appwidget/AppWidgetHostView;

    if-eqz v11, :cond_10c

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    goto :goto_10d

    :cond_10c
    const/4 v13, 0x0

    :goto_10d
    instance-of v13, v13, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v13, :cond_116

    if-eqz v14, :cond_114

    goto :goto_116

    :cond_114
    const/4 v13, 0x0

    goto :goto_117

    :cond_116
    :goto_116
    const/4 v13, 0x1

    :goto_117
    move/from16 v16, v14

    iget-object v14, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v14, v14

    move/from16 p1, v13

    const/4 v13, 0x1

    if-le v14, v13, :cond_123

    const/4 v13, 0x1

    goto :goto_124

    :cond_123
    const/4 v13, 0x0

    :goto_124
    instance-of v14, v11, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v14, :cond_142

    move-object/from16 v17, v11

    check-cast v17, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getParentFolderIcon()Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object v17

    if-eqz v17, :cond_13b

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v17

    if-nez v17, :cond_13b

    const/16 v17, 0x1

    goto :goto_13d

    :cond_13b
    const/16 v17, 0x0

    :goto_13d
    if-nez v17, :cond_142

    const/16 v17, 0x1

    goto :goto_144

    :cond_142
    const/16 v17, 0x0

    :goto_144
    move/from16 v18, v14

    move/from16 v14, v17

    const-string v15, ", runningTaskViewId= "

    invoke-static {v6, v0, v5, v1, v15}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_171

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_171

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_171

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_172

    :cond_171
    const/4 v1, 0x0

    :goto_172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_191

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_191

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_191

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_192

    :cond_191
    const/4 v1, 0x0

    :goto_192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasSecondaryHandle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skipToIconAnim= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", workspaceView= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isValidBigFolderItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",workspaceTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_1d7

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d8

    :cond_1d7
    const/4 v0, 0x0

    :goto_1d8
    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/16 v15, -0x65

    if-eqz v0, :cond_1f1

    if-eqz v11, :cond_1e5

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e6

    :cond_1e5
    const/4 v0, 0x0

    :goto_1e6
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v0, v15, :cond_1f1

    const/4 v0, 0x1

    goto :goto_1f2

    :cond_1f1
    const/4 v0, 0x0

    :goto_1f2
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    if-nez v14, :cond_209

    if-eqz v11, :cond_21f

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_21f

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_21f

    if-nez v2, :cond_21f

    :cond_209
    if-nez p5, :cond_21f

    if-nez v13, :cond_21f

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-eqz v1, :cond_21d

    if-eqz v0, :cond_21f

    :cond_21d
    const/4 v0, 0x1

    goto :goto_220

    :cond_21f
    const/4 v0, 0x0

    :goto_220
    iput-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isHomeGestureLightAnimation()Z

    move-result v1

    if-eqz v1, :cond_22e

    const/4 v1, 0x0

    iput-boolean v1, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_22f

    :cond_22e
    const/4 v1, 0x0

    :goto_22f
    invoke-static {}, Lcom/android/launcher/UiConfig;->isTabletLightAnimation()Z

    move-result v2

    if-eqz v2, :cond_237

    iput-boolean v1, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_237
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v0

    if-eqz v0, :cond_26d

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_25c

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_25c

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_25c

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_25c

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_25d

    :cond_25c
    const/4 v1, 0x0

    :goto_25d
    invoke-virtual {v0, v1}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26d

    const/4 v0, 0x0

    iput-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->resetGameBouncePackage()V

    :cond_26d
    iget-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_273

    move-object v13, v11

    goto :goto_275

    :cond_273
    const/4 v0, 0x0

    move-object v13, v0

    :goto_275
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_280

    invoke-interface {v0, v13}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getViewId(Landroid/view/View;)I

    move-result v0

    goto :goto_281

    :cond_280
    const/4 v0, -0x1

    :goto_281
    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->inSplitScreenMode()Z

    move-result v0

    if-nez v0, :cond_299

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_294

    invoke-interface {v0, v13}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isViewSupportAsync(Landroid/view/View;)Z

    move-result v0

    goto :goto_295

    :cond_294
    const/4 v0, 0x0

    :goto_295
    if-eqz v0, :cond_299

    const/4 v0, 0x1

    goto :goto_29a

    :cond_299
    const/4 v0, 0x0

    :goto_29a
    move/from16 v28, v0

    iget-boolean v1, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v11

    move-object v4, v12

    move/from16 v6, v28

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->releaseIconSurfaceAndGetFIV(ZLandroid/view/View;ZLandroid/graphics/RectF;ZZ)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addanimation, workspaceView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " floatingIconView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v0, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_DEFAULT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v17, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v17 .. v17}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v29, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v29 .. v29}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    if-eqz v13, :cond_2e0

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2e1

    :cond_2e0
    const/4 v0, 0x0

    :goto_2e1
    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    if-eqz v0, :cond_2f7

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v0, v15, :cond_2f7

    const/4 v0, 0x1

    goto :goto_2f8

    :cond_2f7
    const/4 v0, 0x0

    :goto_2f8
    move-object/from16 v15, p6

    move/from16 v30, v0

    if-eqz v15, :cond_30f

    iget-object v0, v15, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_30f

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v2, v0, :cond_30d

    goto :goto_30f

    :cond_30d
    const/4 v0, 0x0

    goto :goto_310

    :cond_30f
    :goto_30f
    const/4 v0, 0x1

    :goto_310
    if-eqz v0, :cond_31a

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v0

    if-eqz v0, :cond_31a

    const/4 v0, 0x1

    goto :goto_31b

    :cond_31a
    const/4 v0, 0x0

    :goto_31b
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v2, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iput v2, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v2

    if-nez v2, :cond_336

    iget-object v2, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le v3, v2, :cond_336

    iput v2, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_336
    new-instance v2, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iget-object v3, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v4, "mActivity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/Launcher;

    iget-object v4, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v4, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    const-string v5, "mActivity.deviceProfile"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusDeviceProfile;)V

    iput-object v2, v7, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setViewSupportAsync(Landroid/view/View;)V

    iget-object v2, v7, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    if-eqz v2, :cond_35e

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->startWindowAnim(Landroid/view/View;Z)V

    :cond_35e
    iget-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/QuickstepTransitionManager;->setIsAppCloseAsyncAniRunning(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    if-eqz v2, :cond_387

    xor-int/lit8 v22, v0, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x10

    const/16 v26, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move/from16 v23, v27

    invoke-static/range {v19 .. v26}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setUpFloatingIconSurface$default(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;ZIZILjava/lang/Object;)V

    :cond_387
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 p2, v9

    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 p3, v9

    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    instance-of v0, v11, Lcom/android/launcher3/folder/FolderIcon;

    move-object/from16 p4, v9

    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object/from16 p5, v2

    const/4 v2, 0x1

    iput-boolean v2, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v18, :cond_3b9

    if-eqz v28, :cond_3b9

    const/4 v2, 0x1

    goto :goto_3ba

    :cond_3b9
    const/4 v2, 0x0

    :goto_3ba
    move/from16 v18, v2

    if-nez v14, :cond_3bf

    goto :goto_3c6

    :cond_3bf
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :goto_3c6
    iget-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    move/from16 v19, v0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherRootView;->setForceHideBackArrow(Z)V

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_3df

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->setHintUserWillBeActive()V

    :cond_3df
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_3f1

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancelForHomeGesture()V

    :cond_3f1
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    sget-object v0, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    invoke-virtual {v0, v11}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->isHotseatIcon(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    if-eqz v0, :cond_413

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v0

    if-eqz v0, :cond_413

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object v0

    goto :goto_414

    :cond_413
    const/4 v0, 0x0

    :goto_414
    iget-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v3, :cond_42b

    if-eqz v0, :cond_42b

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->setHotseatIndex(I)V

    :cond_42b
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v25

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->updateWorkSpaceScrollX()V

    iget-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_488

    if-eqz v11, :cond_44d

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_44e

    :cond_44d
    const/4 v0, 0x0

    :goto_44e
    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_488

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const-string v3, "mActivity.workspace"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v3, :cond_476

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_477

    :cond_476
    const/4 v1, 0x0

    :goto_477
    if-eqz v1, :cond_47e

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    goto :goto_47f

    :cond_47e
    const/4 v1, -0x1

    :goto_47f
    iget-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v0, v1, v3}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->setIconPosition(IIZ)V

    const/4 v0, 0x0

    move-object/from16 v20, v4

    goto :goto_492

    :cond_488
    const/4 v0, 0x4

    const/4 v1, -0x1

    const/4 v3, 0x0

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-static {v1, v1, v4, v0, v3}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->setIconPosition$default(IIZILjava/lang/Object;)V

    move-object v0, v3

    :goto_492
    if-eqz v15, :cond_49d

    iget-object v1, v15, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_49d

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_49d
    iput-object v0, v7, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->mRunningTaskFullscreenBounds:Landroid/graphics/Rect;

    new-instance v31, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v23, p5

    move-object v3, v10

    move-object v4, v12

    move-object/from16 v21, v5

    move/from16 v5, v19

    move-object/from16 v32, v6

    move/from16 v6, p1

    move/from16 v7, v18

    move-object/from16 v18, v8

    move-object v8, v13

    move-object/from16 v22, p3

    move-object/from16 v12, p4

    move-object/from16 v24, v9

    move-object/from16 v9, p2

    move-object v10, v14

    move-object/from16 v13, v21

    move-object/from16 v14, v20

    move-object/from16 v15, p6

    move-object/from16 v19, v29

    move-object/from16 v20, v24

    move/from16 v21, v28

    move/from16 v24, v27

    move/from16 v26, v30

    move-object/from16 v27, v32

    invoke-direct/range {v0 .. v27}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;-><init>(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/RectF;ZZZLandroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;IIZLkotlin/jvm/internal/Ref$IntRef;)V

    return-object v31
.end method

.method public finishRecentsControllerToZoom(Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, v0, p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishZoomController(ZLjava/lang/Runnable;ZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;)V

    :cond_12
    return-void
.end method

.method public final getOplusWindowTargetRect()Landroid/graphics/RectF;
    .registers 7

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-interface {v0, v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x41000000  # 8.0f

    div-float v0, v1, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    const/high16 v3, 0x41100000  # 9.0f

    div-float v3, p0, v3

    div-float/2addr v3, v2

    div-float/2addr v1, v2

    const v2, 0x40533333  # 3.3f

    div-float/2addr p0, v2

    new-instance v2, Landroid/graphics/RectF;

    sub-float v4, v1, v0

    sub-float v5, p0, v3

    add-float/2addr v1, v0

    add-float/2addr p0, v3

    invoke-direct {v2, v4, v5, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public final releaseObject()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLifecycleCallbacks:Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_b
    return-void
.end method
