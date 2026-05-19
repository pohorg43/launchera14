.class public Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppOpenWindowAnimRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppOpenWindowAnimRunner.kt\ncom/android/launcher3/anim/AppOpenWindowAnimRunner\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,430:1\n13309#2,2:431\n13309#2,2:433\n*S KotlinDebug\n*F\n+ 1 AppOpenWindowAnimRunner.kt\ncom/android/launcher3/anim/AppOpenWindowAnimRunner\n*L\n119#1:431,2\n160#1:433,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

.field private static final ICON_TO_WINDOW_THRESHOLD:[Ljava/lang/Float;

.field private static final TAG:Ljava/lang/String; = "AppOpenWindowAnimRunner"


# instance fields
.field private final displayWindowRect:Landroid/graphics/RectF;

.field private endCustomIconRadius:F

.field private hasRestoreTask:Z

.field private iconSurfaceHeight:F

.field private final iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

.field private iconSurfaceWidth:F

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

.field private final mCurrentWindowRect:Landroid/graphics/RectF;

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

.field private sTransactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

.field private final windowRectForCustomIconRadius:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Float;

    const v1, 0x3dcccccd  # 0.1f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x3e99999a  # 0.3f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->ICON_TO_WINDOW_THRESHOLD:[Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;FFLandroid/util/Pair;ILcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;Landroid/graphics/Matrix;Z)V
    .registers 13
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
            "Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;",
            "Landroid/graphics/Matrix;",
            "Z)V"
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

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mCropRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mIconTransPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceHeight:F

    iput v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceWidth:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mCurrentWindowRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->windowRectForCustomIconRadius:Landroid/graphics/RectF;

    iput v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->endCustomIconRadius:F

    new-instance v0, Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->sTransactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    iput-object p1, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p1, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iput-object p3, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput p4, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mStartRadius:F

    iput p5, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mEndRadius:F

    iput-object p6, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iput p7, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mRotation:I

    iput-object p8, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iput-object p9, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowToHomePositionMap:Landroid/graphics/Matrix;

    iput-boolean p10, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->needCustom:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->performAsyncWindowAnimation$lambda$4$lambda$2$lambda$1(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V

    return-void
.end method

.method public static final synthetic access$getICON_TO_WINDOW_THRESHOLD$cp()[Ljava/lang/Float;
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->ICON_TO_WINDOW_THRESHOLD:[Ljava/lang/Float;

    return-object v0
.end method

.method private final getCornerRadiusForNonDefaultTheme(F)F
    .registers 11

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->getWindowAlpha(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v1, -0x40800000  # -1.0f

    if-gtz v0, :cond_2b

    iget v0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->endCustomIconRadius:F

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    if-eqz v0, :cond_18

    goto :goto_2b

    :cond_18
    const/4 v4, 0x0

    sget-object v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->ICON_TO_WINDOW_THRESHOLD:[Ljava/lang/Float;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->endCustomIconRadius:F

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    :cond_2b
    :goto_2b
    return v1
.end method

.method public static final getOpenCropInterpolator(ZZ)Landroid/view/animation/AccelerateInterpolator;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getOpenCropInterpolator(ZZ)Landroid/view/animation/AccelerateInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public static final getOpenWindowCornerRadius(FFF)F
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getOpenWindowCornerRadius(FFF)F

    move-result p0

    return p0
.end method

.method private final getWindowAlpha(F)F
    .registers 10

    sget-object p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->ICON_TO_WINDOW_THRESHOLD:[Ljava/lang/Float;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1d

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_33

    :cond_1d
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    :goto_33
    return p0
.end method

.method private static final performAsyncWindowAnimation$lambda$4$lambda$2$lambda$1(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V
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

    const-string p0, "AppOpenWindowAnimRunner"

    const-string p1, "async open: do not update window as invalid"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    iget p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eqz p0, :cond_4c

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2d

    goto :goto_4c

    :cond_2d
    iget-object p0, p1, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    iget-object p3, p1, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p0, p4, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result p0

    if-nez p0, :cond_75

    iget-object p0, p1, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p5, p0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_75

    :cond_4c
    :goto_4c
    const/4 p0, 0x1

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->getAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FZ)V

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result p0

    if-nez p0, :cond_75

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCrop()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowAlpha()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowCornerRadius()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_75
    :goto_75
    return-void
.end method


# virtual methods
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

    sget-object v9, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    iget-boolean v2, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->needCustom:Z

    const/4 v10, 0x1

    xor-int/2addr v2, v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->isHotSeatIcon()Z

    move-result v3

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getOpenCropInterpolator(ZZ)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v7

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    move/from16 v2, p3

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mCurrentWindowRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    iget v6, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mRotation:I

    invoke-interface {v3, v4, v5, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateScale(Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v2

    iput v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mOffset:F

    iget-object v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mCurrentWindowRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mCurrentWindowRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    mul-float/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    iget v6, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mOffset:F

    invoke-static {v2, v6, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v6, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    iget v7, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mRotation:I

    move/from16 v15, p4

    invoke-interface {v5, v6, v4, v7, v15}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyOffset(Landroid/graphics/PointF;FIZ)V

    iget-object v5, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v6

    check-cast v11, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v12, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mCropRect:Landroid/graphics/Rect;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v6, "mAnimHandler.second"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v14

    iget-object v5, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v16

    iget v6, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mRotation:I

    const/16 v18, 0x1

    move v13, v2

    move v15, v5

    move/from16 v17, v6

    move/from16 v19, p4

    invoke-interface/range {v11 .. v19}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFFIZZ)V

    invoke-direct {v0, v8}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->getWindowAlpha(F)F

    move-result v5

    iget v6, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mStartRadius:F

    iget v7, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mEndRadius:F

    invoke-virtual {v9, v8, v6, v7}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getOpenWindowCornerRadius(FFF)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTransPoint:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, v10}, Lcom/android/systemui/shared/system/AppTransitionParam;->setValid(Z)V

    invoke-virtual {v1, v6}, Lcom/android/systemui/shared/system/AppTransitionParam;->setWindowCornerRadius(F)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/shared/system/AppTransitionParam;->setWindowAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCrop()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/system/AppTransitionParam;->setWindowScale(F)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/AppTransitionParam;->setRealCropProgress(F)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/shared/system/AppTransitionParam;->setCropOffset(F)V

    return-void
.end method

.method public getIconTransitionParam(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLcom/android/systemui/shared/system/AppTransitionParam;ZIZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;
    .registers 26

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    const-string v4, "currentRectF"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "targetRect"

    move-object v5, p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "param"

    move-object/from16 v5, p8

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v4, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v7, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mIconTransPoint:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iput v4, v7, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v7, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v8, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    iget-object v9, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v10

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCropOffset()F

    move-result v11

    iget v12, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mRotation:I

    invoke-interface/range {v6 .. v12}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconSurfaceOffset(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)V

    iget-object v1, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getCrop()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v7

    iget v8, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mRotation:I

    invoke-interface {v1, v4, v6, v7, v8}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconSurfaceRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FI)V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    if-eqz v1, :cond_7a

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v7, "getAppContext()"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/common/util/PlatformLevelUtils;->isHighLevelAnimation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7a

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowAlpha()F

    move-result v1

    sub-float v1, v6, v1

    const v7, 0x3f666666  # 0.9f

    cmpl-float v1, v1, v7

    if-lez v1, :cond_85

    goto :goto_84

    :cond_7a
    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowAlpha()F

    move-result v1

    sub-float v1, v6, v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_85

    :goto_84
    move v4, v6

    :cond_85
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v7, 0x0

    if-eqz p12, :cond_eb

    iget-object v8, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v2

    iget-object v9, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v3

    if-eqz p9, :cond_b1

    invoke-virtual {v1, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v3, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v6, v8

    mul-float/2addr v6, v3

    float-to-int v3, v6

    new-instance v6, Landroid/graphics/Rect;

    float-to-int v2, v2

    invoke-direct {v6, v7, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_af
    move v10, v7

    goto :goto_112

    :cond_b1
    invoke-virtual {v1, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float v6, v2, v9

    iget-object v8, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float v8, v6, v8

    div-float/2addr v8, v6

    mul-float/2addr v8, v2

    float-to-int v6, v8

    rem-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_c7

    add-int/lit8 v6, v6, 0x1

    :cond_c7
    div-int/lit8 v6, v6, 0x2

    :goto_c9
    mul-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    sub-float v8, v2, v8

    mul-float/2addr v8, v9

    iget-object v10, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpl-float v8, v8, v10

    if-lez v8, :cond_dc

    add-int/lit8 v6, v6, 0x1

    goto :goto_c9

    :cond_dc
    int-to-float v8, v6

    mul-float v10, v8, v9

    float-to-int v10, v10

    new-instance v11, Landroid/graphics/Rect;

    sub-float/2addr v2, v8

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v11, v6, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move v8, v9

    move-object v6, v11

    goto :goto_112

    :cond_eb
    iget-object v8, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v3

    iget-object v9, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v2

    if-eqz p9, :cond_ff

    invoke-virtual {v1, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_102

    :cond_ff
    invoke-virtual {v1, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_102
    iget-object v2, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->displayWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v6, v8

    mul-float/2addr v6, v2

    float-to-int v2, v6

    new-instance v6, Landroid/graphics/Rect;

    float-to-int v3, v3

    invoke-direct {v6, v7, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_af

    :goto_112
    iget-object v2, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mIconTransPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    int-to-float v9, v10

    sub-float/2addr v3, v9

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-nez p11, :cond_12a

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowCornerRadius()F

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v2

    :goto_127
    div-float/2addr v2, v8

    mul-float/2addr v2, v0

    goto :goto_143

    :cond_12a
    move/from16 v2, p3

    invoke-direct {p0, v2}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->getCornerRadiusForNonDefaultTheme(F)F

    move-result v2

    const/high16 v0, -0x40800000  # -1.0f

    cmpg-float v0, v2, v0

    if-nez v0, :cond_137

    const/4 v7, 0x1

    :cond_137
    if-nez v7, :cond_13a

    goto :goto_143

    :cond_13a
    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowCornerRadius()F

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getWindowScale()F

    move-result v2

    goto :goto_127

    :goto_143
    new-instance v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    invoke-direct {v0, v6, v1, v4, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;-><init>(Landroid/graphics/Rect;Landroid/graphics/Matrix;FF)V

    return-object v0
.end method

.method public onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V
    .registers 14

    const-string p4, "currentRectF"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "currentIconRectF"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "param"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowToHomePositionMap:Landroid/graphics/Matrix;

    iget-object p4, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mCurrentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->sTransactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->createSurfaceTransaction()Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p2

    iget-object p4, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_22
    if-ge v2, v0, :cond_8d

    aget-object v3, p4, v2

    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_3a

    iget-object v6, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_47

    :cond_3a
    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz v5, :cond_47

    iget-object v6, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Point;->set(II)V

    :cond_47
    :goto_47
    iget v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eqz v3, :cond_68

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4f

    goto :goto_68

    :cond_4f
    iget-object v3, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v3, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_8a

    :cond_68
    :goto_68
    invoke-virtual {p0, p5, p1, p3, v1}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->getAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FZ)V

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

    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_8d
    invoke-virtual {p5}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result p1

    if-nez p1, :cond_99

    iget-object p0, p0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mSurfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    goto :goto_a0

    :cond_99
    const-string p0, "AppOpenWindowAnimRunner"

    const-string p1, "Ignore update as anim interrupted"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a0
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

    iget-object v0, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowToHomePositionMap:Landroid/graphics/Matrix;

    iget-object v1, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mCurrentWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v0, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->sTransactionHelper:Lcom/oplus/quickstep/utils/CreateTransactionHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->createSurfaceTransaction()Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object v12

    iget-boolean v0, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->hasRestoreTask:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3a

    iget-object v0, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v12, v1, v0, v2}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->restoreTaskLayer(Lcom/android/quickstep/util/SurfaceTransaction;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    :cond_3a
    iget-object v10, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAppTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v11, v10

    move v7, v1

    :goto_3e
    const-string v6, "AppOpenWindowAnimRunner"

    if-ge v7, v11, :cond_b0

    aget-object v0, v10, v7

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v1}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_58

    iget-object v2, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_65

    :cond_58
    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz v1, :cond_65

    iget-object v2, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mTmpPos:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->set(II)V

    :cond_65
    :goto_65
    :try_start_65
    new-instance v5, Lcom/android/launcher3/anim/g;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_84

    move-object v1, v5

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object v8, v5

    move-object/from16 v5, p2

    move/from16 p3, v11

    move-object v11, v6

    move/from16 v6, p5

    move/from16 v17, v7

    move-object/from16 v7, v16

    :try_start_79
    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/anim/g;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->updateSurfaceAsync(Ljava/lang/Runnable;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_82

    goto :goto_8e

    :catchall_82
    move-exception v0

    goto :goto_8a

    :catchall_84
    move-exception v0

    move/from16 v17, v7

    move/from16 p3, v11

    move-object v11, v6

    :goto_8a
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_8e
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a9

    const-string/jumbo v1, "open anim error, leash may already release: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v8, p2

    move/from16 v11, p3

    goto :goto_3e

    :cond_b0
    move-object v11, v6

    if-eqz p8, :cond_1a7

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v0

    if-eqz v0, :cond_1a7

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1a7

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_174

    iget-object v1, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    if-eqz v1, :cond_d3

    invoke-interface {v1, v15}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isCurrentIconSurfaceValid(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_d4

    move v1, v2

    goto :goto_da

    :cond_d3
    const/4 v2, 0x1

    :cond_d4
    const/4 v1, 0x0

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    :goto_da
    if-eqz v2, :cond_de

    goto/16 :goto_174

    :cond_de
    iget v2, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceWidth:F

    const/high16 v3, -0x40800000  # -1.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_e8

    move v2, v1

    goto :goto_e9

    :cond_e8
    const/4 v2, 0x0

    :goto_e9
    if-nez v2, :cond_f5

    iget v2, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceHeight:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_f2

    goto :goto_f3

    :cond_f2
    const/4 v1, 0x0

    :goto_f3
    if-eqz v1, :cond_103

    :cond_f5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceWidth:F

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceHeight:F

    :cond_103
    iget v5, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceWidth:F

    iget v6, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceHeight:F

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_118

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getOriginalIconSize()Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    move-result-object v1

    if-eqz v1, :cond_118

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;->getWidth()I

    move-result v1

    goto :goto_11c

    :cond_118
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    :goto_11c
    int-to-float v7, v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_12e

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getOriginalIconSize()Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    move-result-object v1

    if-eqz v1, :cond_12e

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;->getHeight()I

    move-result v1

    goto :goto_132

    :cond_12e
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v1

    :goto_132
    int-to-float v8, v1

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_13e

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSupportIconExtended()Z

    move-result v1

    goto :goto_13f

    :cond_13e
    const/4 v1, 0x0

    :goto_13f
    move v10, v1

    const/16 v16, 0x0

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    if-eqz v1, :cond_14d

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getNeedAdjustCornerRadius()Z

    move-result v1

    goto :goto_14e

    :cond_14d
    const/4 v1, 0x0

    :goto_14e
    move/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v9, p7

    move-object/from16 v18, v11

    move/from16 v11, v16

    move-object/from16 v19, v12

    move/from16 v12, v17

    move/from16 v13, p6

    invoke-virtual/range {v1 .. v13}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->getIconTransitionParam(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLcom/android/systemui/shared/system/AppTransitionParam;ZIZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    move-result-object v1

    iget-object v2, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-object/from16 v3, v19

    if-eqz v2, :cond_171

    invoke-interface {v2, v15, v0, v3, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->trySetIconSurfaceProp(Landroid/view/View;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransaction;Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;)V

    :cond_171
    move-object/from16 v1, v18

    goto :goto_1a9

    :cond_174
    :goto_174
    move-object/from16 v18, v11

    move-object v3, v12

    const-string v1, "async open return: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    if-eqz v0, :cond_199

    invoke-interface {v0, v15}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isCurrentIconSurfaceValid(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_19a

    :cond_199
    const/4 v0, 0x0

    :goto_19a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1aa

    :cond_1a7
    move-object v1, v11

    move-object v3, v12

    :goto_1a9
    const/4 v2, 0x1

    :goto_1aa
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result v0

    if-nez v0, :cond_1bd

    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-boolean v2, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->hasRestoreTask:Z

    goto :goto_1ce

    :cond_1bd
    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-boolean v2, v14, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->hasRestoreTask:Z

    const-string v0, "Ignore window update as anim interrupted"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1ce
    return-void
.end method

.method public setTempRectForCustomIconRadius(FFFFZ)V
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->windowRectForCustomIconRadius:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c1

    iget v1, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceHeight:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    if-nez v1, :cond_c1

    iget-object v1, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->windowRectForCustomIconRadius:Landroid/graphics/RectF;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowToHomePositionMap:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->windowRectForCustomIconRadius:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v1, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "mAnimHandler.first"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;

    iget-object v5, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$DefaultImpls;->calculateScale$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;IILjava/lang/Object;)F

    move-result v1

    sget-object v3, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    sget-object v4, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->ICON_TO_WINDOW_THRESHOLD:[Ljava/lang/Float;

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mStartRadius:F

    iget v7, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mEndRadius:F

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getOpenWindowCornerRadius(FFF)F

    move-result v3

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    if-eqz p5, :cond_70

    const v2, 0x3ee66666  # 0.45f

    goto :goto_72

    :cond_70
    const/high16 v2, 0x3f000000  # 0.5f

    :goto_72
    invoke-direct {v9, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v7

    iget-object v2, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v4, "mAnimHandler.second"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v8

    iget-object v2, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v2, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget v11, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mRotation:I

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v6, v14

    invoke-interface/range {v5 .. v13}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFFIZZ)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget-object v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->windowRectForCustomIconRadius:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mAnimHandler:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v5, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->mRotation:I

    invoke-interface {v4, v2, v14, v1, v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconSurfaceRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FI)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v4, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->iconSurfaceHeight:F

    div-float/2addr v2, v4

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->endCustomIconRadius:F

    :cond_c1
    return-void
.end method
