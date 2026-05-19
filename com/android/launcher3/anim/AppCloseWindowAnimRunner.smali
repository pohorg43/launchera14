.class public Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppCloseWindowAnimRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppCloseWindowAnimRunner.kt\ncom/android/launcher3/anim/AppCloseWindowAnimRunner\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,491:1\n13309#2,2:492\n13309#2,2:494\n*S KotlinDebug\n*F\n+ 1 AppCloseWindowAnimRunner.kt\ncom/android/launcher3/anim/AppCloseWindowAnimRunner\n*L\n168#1:492,2\n212#1:494,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

.field private static final TAG:Ljava/lang/String; = "AppCloseWindowAnimRunner"

.field private static final WINDOW_TO_ICON_THRESHOLD:[Ljava/lang/Float;

.field private static final WINDOW_TO_ICON_THRESHOLD_CUSTOM:[Ljava/lang/Float;

.field private static final WINDOW_TO_ICON_THRESHOLD_WIDGET:[Ljava/lang/Float;


# instance fields
.field private final currentWindowRect:Landroid/graphics/RectF;

.field private customIconRadiusStartProgress:F

.field private final displayWindowRect:Landroid/graphics/RectF;

.field private hasRestoreTask:Z

.field private iconContainerSurfaceView:Landroid/view/SurfaceView;

.field private iconDisappear:Z

.field private iconSurfaceHeight:F

.field private final iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

.field private iconSurfaceWidth:F

.field private isDirChanged:Z

.field private isWidget:Z

.field private lastDir:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

.field private lastScrollX:I

.field private mAnimHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field private mCropRect:Landroid/graphics/Rect;

.field private mEndRadius:F

.field private mIconTransPoint:Landroid/graphics/PointF;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOffset:F

.field private mRotation:I

.field private mStartRadius:F

.field private mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field private mTmpPos:Landroid/graphics/Point;

.field private mTransPoint:Landroid/graphics/PointF;

.field private mWindowRectF:Landroid/graphics/RectF;

.field private final mWindowToHomePositionMap:Landroid/graphics/Matrix;

.field private needCustom:Z

.field private needReparent:Z

.field private sTransactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

.field private startCustomIconRadius:F


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Float;

    const v2, 0x3ecccccd  # 0.4f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v4, 0x3f4ccccd  # 0.8f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sput-object v1, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->WINDOW_TO_ICON_THRESHOLD:[Ljava/lang/Float;

    new-array v1, v0, [Ljava/lang/Float;

    aput-object v2, v1, v3

    const v6, 0x3f333333  # 0.7f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v1, v5

    sput-object v1, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->WINDOW_TO_ICON_THRESHOLD_CUSTOM:[Ljava/lang/Float;

    new-array v0, v0, [Ljava/lang/Float;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    sput-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->WINDOW_TO_ICON_THRESHOLD_WIDGET:[Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;FFLandroid/util/Pair;ILandroid/graphics/Matrix;Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;ZZLandroid/view/SurfaceView;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Landroid/graphics/RectF;",
            "Lcom/android/quickstep/util/SurfaceTransactionApplier;",
            "FF",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;I",
            "Landroid/graphics/Matrix;",
            "Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;",
            "ZZ",
            "Landroid/view/SurfaceView;",
            ")V"
        }
    .end annotation

    const-string v0, "appTargets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "winRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceApplier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowToHomePositionMap"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mCropRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mIconTransPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->currentWindowRect:Landroid/graphics/RectF;

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceHeight:F

    iput v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceWidth:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_DEFAULT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    iput-object v1, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->lastDir:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    iput v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->startCustomIconRadius:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->needReparent:Z

    new-instance v0, Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->sTransactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    iput-object p1, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p1, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iput-object p3, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput p4, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mStartRadius:F

    iput p5, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mEndRadius:F

    iput-object p6, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iput p7, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mRotation:I

    iput-object p8, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowToHomePositionMap:Landroid/graphics/Matrix;

    iput-object p9, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iput-boolean p10, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->needCustom:Z

    iput-boolean p11, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isWidget:Z

    iput-object p12, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconContainerSurfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->performAsyncWindowAnimation$lambda$4$lambda$2$lambda$1(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V

    return-void
.end method

.method public static final synthetic access$getWINDOW_TO_ICON_THRESHOLD$cp()[Ljava/lang/Float;
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->WINDOW_TO_ICON_THRESHOLD:[Ljava/lang/Float;

    return-object v0
.end method

.method public static final synthetic access$getWINDOW_TO_ICON_THRESHOLD_CUSTOM$cp()[Ljava/lang/Float;
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->WINDOW_TO_ICON_THRESHOLD_CUSTOM:[Ljava/lang/Float;

    return-object v0
.end method

.method public static final synthetic access$getWINDOW_TO_ICON_THRESHOLD_WIDGET$cp()[Ljava/lang/Float;
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->WINDOW_TO_ICON_THRESHOLD_WIDGET:[Ljava/lang/Float;

    return-object v0
.end method

.method public static final getCloseCropInterpolator(ZZZ)Landroid/view/animation/DecelerateInterpolator;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCloseCropInterpolator(ZZZ)Landroid/view/animation/DecelerateInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public static final getCloseWindowCornerRadius(FFF)F
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCloseWindowCornerRadius(FFF)F

    move-result p0

    return p0
.end method

.method private final getCornerRadiusForNonDefaultTheme(FZ)F
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_12

    sget-object p2, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    iget-boolean v3, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isWidget:Z

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWindowAlpha(FZZ)F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1d

    goto :goto_1c

    :cond_12
    sget-object p2, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {p2, p1, v2}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCustomWindowAlpha(FZ)F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1d

    :goto_1c
    move v0, v2

    :cond_1d
    if-eqz v0, :cond_22

    const/high16 p0, -0x40800000  # -1.0f

    goto :goto_30

    :cond_22
    iget v1, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->customIconRadiusStartProgress:F

    const/high16 v2, 0x3f800000  # 1.0f

    iget v3, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->startCustomIconRadius:F

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    :goto_30
    return p0
.end method

.method public static final getCustomWindowAlpha(FZ)F
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCustomWindowAlpha(FZ)F

    move-result p0

    return p0
.end method

.method public static synthetic getIconAlpha$default(Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;FZILjava/lang/Object;)F
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getIconAlpha(FZ)F

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getIconAlpha"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getWindowAlpha(FZZ)F
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWindowAlpha(FZZ)F

    move-result p0

    return p0
.end method

.method private static final performAsyncWindowAnimation$lambda$4$lambda$2$lambda$1(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V
    .registers 7

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$param"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentRectF"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_25

    const-string p0, "AppCloseWindowAnimRunner"

    const-string p1, "async close: do not update window as invalid"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    iget p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_59

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FZ)V

    iget-boolean p0, p1, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconDisappear:Z

    if-eqz p0, :cond_33

    const/4 p0, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowAlpha()F

    move-result p0

    :goto_37
    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result p1

    if-nez p1, :cond_79

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCrop()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowCornerRadius()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_79

    :cond_59
    if-nez p0, :cond_79

    iget-object p0, p1, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    iget-object p3, p1, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p0, p4, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result p0

    if-nez p0, :cond_79

    iget-object p0, p1, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p5, p0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_79
    :goto_79
    return-void
.end method


# virtual methods
.method public endIconSurface()V
    .registers 1

    return-void
.end method

.method public getAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FZ)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p3

    const-string/jumbo v2, "param"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "currentRectF"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    iget-boolean v2, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->needCustom:Z

    const/4 v10, 0x1

    xor-int/2addr v2, v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->isHotSeatIcon()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v3, v4}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCloseCropInterpolator(ZZZ)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v7

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    move/from16 v2, p3

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->currentWindowRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    iget v6, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mRotation:I

    invoke-interface {v3, v4, v5, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateScale(Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v10

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    iput v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mOffset:F

    iget-object v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->currentWindowRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->currentWindowRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v5

    check-cast v11, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v12, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mCropRect:Landroid/graphics/Rect;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v5, "mAnimHandler.second"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v14

    iget-object v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v15

    iget-object v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v16

    iget v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mRotation:I

    const/16 v18, 0x0

    move v13, v2

    move/from16 v17, v4

    move/from16 v19, p4

    invoke-interface/range {v11 .. v19}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFFIZZ)V

    iget-object v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    mul-float/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    iget v6, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mOffset:F

    invoke-static {v2, v5, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v6, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    iget v7, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mRotation:I

    move/from16 v11, p4

    invoke-interface {v5, v6, v4, v7, v11}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyOffset(Landroid/graphics/PointF;FIZ)V

    iget-boolean v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->needCustom:Z

    if-eqz v5, :cond_d1

    invoke-virtual {v9, v8, v10}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCustomWindowAlpha(FZ)F

    move-result v5

    goto :goto_d7

    :cond_d1
    iget-boolean v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isWidget:Z

    invoke-virtual {v9, v8, v10, v5}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWindowAlpha(FZZ)F

    move-result v5

    :goto_d7
    iget v6, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mStartRadius:F

    iget v7, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mEndRadius:F

    invoke-virtual {v9, v8, v6, v7}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCloseWindowCornerRadius(FFF)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v5}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getWorkspaceScrollX(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, v10}, Lcom/android/systemui/shared/system/AppTransitionParam;->setValid(Z)V

    invoke-virtual {v1, v6}, Lcom/android/systemui/shared/system/AppTransitionParam;->setWindowCornerRadius(F)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/shared/system/AppTransitionParam;->setWindowAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCrop()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/system/AppTransitionParam;->setWindowScale(F)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/AppTransitionParam;->setRealCropProgress(F)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/shared/system/AppTransitionParam;->setCropOffset(F)V

    return-void
.end method

.method public final getIconAlpha(FZ)F
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    sget-object p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCustomWindowAlpha(FZ)F

    move-result p0

    goto :goto_12

    :cond_a
    sget-object p2, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    iget-boolean p0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isWidget:Z

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWindowAlpha(FZZ)F

    move-result p0

    :goto_12
    const/high16 p1, 0x3f800000  # 1.0f

    sub-float p0, p1, p0

    const/4 p2, 0x0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move p1, p2

    :goto_1d
    return p1
.end method

.method public getIconTransitionParam(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLcom/android/systemui/shared/system/AppTransitionParam;ZIZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;
    .registers 28

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    const-string v5, "currentRectF"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "targetRect"

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "param"

    move-object/from16 v6, p8

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mIconTransPoint:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iput v5, v8, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v8, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v9, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v11

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCropOffset()F

    move-result v12

    iget v13, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mRotation:I

    invoke-interface/range {v7 .. v13}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconSurfaceOffset(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)V

    iget-object v1, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCrop()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v8

    iget v9, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mRotation:I

    invoke-interface {v1, v5, v7, v8, v9}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconSurfaceRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FI)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getWorkspaceScrollX(F)I

    move-result v5

    iget v7, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->lastScrollX:I

    sub-int/2addr v7, v5

    iget-object v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->lastDir:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    invoke-static {v7, v8}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt;->getScrollDirection(ILcom/android/launcher3/anim/floatingdrawable/ScrollDirection;)Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isDirChanged:Z

    if-nez v8, :cond_74

    iget-object v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->lastDir:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    invoke-static {v8, v7}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt;->isDifferentDirection(Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isDirChanged:Z

    :cond_74
    iget-boolean v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isDirChanged:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_82

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isWorkSpaceFling()Z

    move-result v8

    if-eqz v8, :cond_82

    move v8, v10

    goto :goto_83

    :cond_82
    move v8, v9

    :goto_83
    if-nez v8, :cond_96

    iget-object v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {p0, v11, v8}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isDisappearedWhenPagingTransition(FF)Z

    move-result v8

    if-eqz v8, :cond_94

    goto :goto_96

    :cond_94
    move v8, v9

    goto :goto_97

    :cond_96
    :goto_96
    move v8, v10

    :goto_97
    iput-boolean v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconDisappear:Z

    iget-object v8, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->lastDir:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    sget-object v11, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_DEFAULT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    if-ne v8, v11, :cond_a1

    iput-object v7, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->lastDir:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    :cond_a1
    iput v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->lastScrollX:I

    iget-boolean v5, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->needCustom:Z

    invoke-virtual {p0, v2, v5}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getIconAlpha(FZ)F

    move-result v5

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/high16 v11, 0x3f800000  # 1.0f

    if-nez p12, :cond_ee

    iget-object v1, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v4

    iget-object v12, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float/2addr v12, v3

    iget-object v13, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float/2addr v11, v1

    mul-float/2addr v11, v13

    move/from16 v13, p6

    invoke-static {v11, v13}, Ly4/h;->a(FF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float v11, v3, v11

    iput v9, v8, Landroid/graphics/Rect;->left:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    sub-float/2addr v3, v11

    float-to-int v3, v3

    iput v3, v8, Landroid/graphics/Rect;->right:I

    float-to-int v3, v4

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    if-eqz p9, :cond_e8

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_eb

    :cond_e8
    invoke-virtual {v7, v12, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_eb
    move v12, v9

    goto/16 :goto_163

    :cond_ee
    iget-object v12, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float/2addr v12, v3

    iget-object v13, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v13, v4

    if-eqz p9, :cond_12d

    invoke-virtual {v7, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v13, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v11, v12

    mul-float/2addr v11, v13

    move/from16 v13, p7

    invoke-static {v11, v13}, Ly4/h;->a(FF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float v11, v4, v11

    sget-object v13, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    iget-boolean v14, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isWidget:Z

    invoke-virtual {v13, v2, v10, v14}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWindowAlpha(FZZ)F

    move-result v13

    cmpg-float v1, v13, v1

    if-gtz v1, :cond_123

    move/from16 v1, p10

    int-to-float v1, v1

    add-float/2addr v11, v1

    :cond_123
    iget v1, v8, Landroid/graphics/Rect;->top:I

    float-to-int v3, v3

    sub-float/2addr v4, v11

    float-to-int v4, v4

    invoke-virtual {v8, v9, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move v1, v12

    goto :goto_eb

    :cond_12d
    invoke-virtual {v7, v13, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float v1, v3, v13

    iget-object v11, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float v11, v1, v11

    div-float/2addr v11, v1

    mul-float/2addr v11, v3

    float-to-int v1, v11

    rem-int/lit8 v11, v1, 0x2

    if-eqz v11, :cond_143

    add-int/lit8 v1, v1, 0x1

    :cond_143
    div-int/lit8 v1, v1, 0x2

    :goto_145
    mul-int/lit8 v11, v1, 0x2

    int-to-float v11, v11

    sub-float v11, v3, v11

    mul-float/2addr v11, v13

    iget-object v12, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_158

    add-int/lit8 v1, v1, 0x1

    goto :goto_145

    :cond_158
    int-to-float v11, v1

    mul-float v12, v11, v13

    float-to-int v12, v12

    sub-float/2addr v3, v11

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {v8, v1, v9, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move v1, v13

    :goto_163
    iget-boolean v3, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->needCustom:Z

    if-eqz v3, :cond_16e

    sget-object v3, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {v3, v2, v10}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getCustomWindowAlpha(FZ)F

    move-result v3

    goto :goto_176

    :cond_16e
    sget-object v3, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    iget-boolean v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->isWidget:Z

    invoke-virtual {v3, v2, v10, v4}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWindowAlpha(FZZ)F

    move-result v3

    :goto_176
    iget-object v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mIconTransPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v3}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getWorkspaceScrollX(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    int-to-float v3, v12

    sub-float/2addr v4, v3

    iget-object v3, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mIconTransPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-nez p11, :cond_196

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowCornerRadius()F

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v2

    :goto_193
    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    goto :goto_1bf

    :cond_196
    iget-boolean v3, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->needCustom:Z

    xor-int/2addr v3, v10

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getCornerRadiusForNonDefaultTheme(FZ)F

    move-result v3

    const/high16 v4, -0x40800000  # -1.0f

    cmpg-float v4, v3, v4

    if-nez v4, :cond_1a4

    move v9, v10

    :cond_1a4
    if-nez v9, :cond_1a8

    move v2, v3

    goto :goto_1bf

    :cond_1a8
    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowCornerRadius()F

    move-result v3

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v4

    div-float/2addr v4, v1

    mul-float/2addr v4, v3

    iput v4, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->startCustomIconRadius:F

    iput v2, v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->customIconRadiusStartProgress:F

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowCornerRadius()F

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v2

    goto :goto_193

    :goto_1bf
    new-instance v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    invoke-direct {v0, v8, v7, v5, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;-><init>(Landroid/graphics/Rect;Landroid/graphics/Matrix;FF)V

    return-object v0
.end method

.method public final getWindowOffset()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mOffset:F

    return p0
.end method

.method public getWorkspaceScrollX(F)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isDisappearedWhenPagingTransition(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isWorkSpaceFling()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V
    .registers 14

    const-string p4, "currentRectF"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "currentIconRectF"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "param"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->sTransactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->createSurfaceTransaction()Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p2

    iget-object p4, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowToHomePositionMap:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->currentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p4, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p4, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_22
    if-ge v2, v0, :cond_8c

    aget-object v3, p4, v2

    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_3a

    iget-object v6, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_47

    :cond_3a
    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz v5, :cond_47

    iget-object v6, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Point;->set(II)V

    :cond_47
    :goto_47
    iget v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6f

    invoke-virtual {p0, p5, p1, p3, v1}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FZ)V

    invoke-virtual {p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    invoke-virtual {p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCrop()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    invoke-virtual {p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowAlpha()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    invoke-virtual {p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowCornerRadius()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_89

    :cond_6f
    if-nez v3, :cond_89

    iget-object v3, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v3, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_89
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_8c
    invoke-virtual {p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result p1

    if-nez p1, :cond_98

    iget-object p0, p0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    goto :goto_9f

    :cond_98
    const-string p0, "AppCloseWindowAnimRunner"

    const-string p1, "Ignore update as anim interrupted"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9f
    return-void
.end method

.method public performAsyncWindowAnimation(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V
    .registers 30

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v8, p2

    const-string v0, "currentRectF"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentIconRectF"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetRect"

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconDisappear:Z

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->endIconSurface()V

    :cond_29
    iget-object v0, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->sTransactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->createSurfaceTransaction()Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object v12

    iget-boolean v0, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->hasRestoreTask:Z

    const/4 v1, 0x1

    if-nez v0, :cond_39

    iget-object v0, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v12, v1, v0, v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->restoreTaskLayer(Lcom/android/quickstep/util/SurfaceTransaction;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    :cond_39
    iget-object v0, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mWindowToHomePositionMap:Landroid/graphics/Matrix;

    iget-object v1, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->currentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v10, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v11, v10

    const/4 v0, 0x0

    move v7, v0

    :goto_45
    const-string v6, "AppCloseWindowAnimRunner"

    if-ge v7, v11, :cond_b2

    aget-object v0, v10, v7

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v1}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5f

    iget-object v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_6c

    :cond_5f
    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz v1, :cond_6c

    iget-object v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->set(II)V

    :cond_6c
    :goto_6c
    :try_start_6c
    new-instance v5, Lcom/android/launcher3/anim/g;
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_89

    move-object v1, v5

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object v8, v5

    move-object/from16 v5, p2

    move-object v13, v6

    move/from16 v6, p5

    move/from16 v17, v7

    move-object/from16 v7, v16

    :try_start_7e
    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/anim/g;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->updateSurfaceAsync(Ljava/lang/Runnable;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_87

    goto :goto_91

    :catchall_87
    move-exception v0

    goto :goto_8d

    :catchall_89
    move-exception v0

    move-object v13, v6

    move/from16 v17, v7

    :goto_8d
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_91
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_ab

    const-string v1, "close anim error, leash may already release: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v8, p2

    move-object/from16 v13, p7

    goto :goto_45

    :cond_b2
    move-object v13, v6

    if-eqz p8, :cond_1ce

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v0

    if-eqz v0, :cond_1ce

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1ce

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_19b

    iget-object v1, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    if-eqz v1, :cond_d5

    invoke-interface {v1, v15}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isCurrentIconSurfaceValid(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_d6

    move v1, v2

    goto :goto_dc

    :cond_d5
    const/4 v2, 0x1

    :cond_d6
    const/4 v1, 0x0

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    :goto_dc
    if-eqz v2, :cond_e0

    goto/16 :goto_19b

    :cond_e0
    iget v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceWidth:F

    const/high16 v3, -0x40800000  # -1.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_ea

    move v2, v1

    goto :goto_eb

    :cond_ea
    const/4 v2, 0x0

    :goto_eb
    if-nez v2, :cond_f7

    iget v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceHeight:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_f4

    goto :goto_f5

    :cond_f4
    const/4 v1, 0x0

    :goto_f5
    if-eqz v1, :cond_105

    :cond_f7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceWidth:F

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceHeight:F

    :cond_105
    iget v5, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceWidth:F

    iget v6, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceHeight:F

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_11a

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getOriginalIconSize()Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    move-result-object v1

    if-eqz v1, :cond_11a

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;->getWidth()I

    move-result v1

    goto :goto_11e

    :cond_11a
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    :goto_11e
    int-to-float v7, v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_130

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getOriginalIconSize()Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    move-result-object v1

    if-eqz v1, :cond_130

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;->getHeight()I

    move-result v1

    goto :goto_134

    :cond_130
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v1

    :goto_134
    int-to-float v8, v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_140

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSupportIconExtended()Z

    move-result v1

    goto :goto_141

    :cond_140
    const/4 v1, 0x0

    :goto_141
    move v10, v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_14d

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getCropOffset()I

    move-result v1

    goto :goto_14e

    :cond_14d
    const/4 v1, 0x0

    :goto_14e
    move v11, v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_15a

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getNeedAdjustCornerRadius()Z

    move-result v1

    goto :goto_15b

    :cond_15a
    const/4 v1, 0x0

    :goto_15b
    move/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v9, p7

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v19, v13

    move/from16 v13, p6

    invoke-virtual/range {v1 .. v13}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->getIconTransitionParam(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLcom/android/systemui/shared/system/AppTransitionParam;ZIZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    move-result-object v1

    iget-boolean v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->needReparent:Z

    if-eqz v2, :cond_18f

    invoke-virtual {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_18f

    iget-object v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    if-eqz v2, :cond_18c

    iget-object v3, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconContainerSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v2, v15, v3}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->reparentIconSurface(Landroid/view/View;Landroid/view/SurfaceView;)V

    :cond_18c
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->needReparent:Z

    :cond_18f
    iget-object v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-object/from16 v3, v18

    if-eqz v2, :cond_198

    invoke-interface {v2, v15, v0, v3, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->trySetIconSurfaceProp(Landroid/view/View;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransaction;Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;)V

    :cond_198
    move-object/from16 v1, v19

    goto :goto_1d0

    :cond_19b
    :goto_19b
    move-object v3, v12

    move-object/from16 v19, v13

    const-string v1, "async close return: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    if-eqz v0, :cond_1c0

    invoke-interface {v0, v15}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isCurrentIconSurfaceValid(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1c1

    :cond_1c0
    const/4 v0, 0x0

    :goto_1c1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d1

    :cond_1ce
    move-object v3, v12

    move-object v1, v13

    :goto_1d0
    const/4 v2, 0x1

    :goto_1d1
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result v0

    if-nez v0, :cond_1e4

    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-boolean v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->hasRestoreTask:Z

    goto :goto_1f5

    :cond_1e4
    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-boolean v2, v14, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->hasRestoreTask:Z

    const-string v0, "Ignore window update as anim interrupted"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f5
    return-void
.end method

.method public setTempRectForCustomIconRadius(FFFFZ)V
    .registers 6

    return-void
.end method
