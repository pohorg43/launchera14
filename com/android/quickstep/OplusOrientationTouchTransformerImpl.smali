.class public final Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;
.super Lcom/android/quickstep/OrientationTouchTransformer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$Companion;,
        Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusOrientationTouchTransformerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusOrientationTouchTransformerImpl.kt\ncom/android/quickstep/OplusOrientationTouchTransformerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,244:1\n1#2:245\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusOrientationTouchTransformerImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mAssistantHeight$delegate:Lh4/f;

.field private final mAssistantWidth$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->Companion:Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;)V
    .registers 5

    const-string/jumbo v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/OrientationTouchTransformer;-><init>(Landroid/content/res/Resources;Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;)V

    new-instance p1, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$mAssistantWidth$2;

    invoke-direct {p1, p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$mAssistantWidth$2;-><init>(Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->mAssistantWidth$delegate:Lh4/f;

    new-instance p1, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$mAssistantHeight$2;

    invoke-direct {p1, p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$mAssistantHeight$2;-><init>(Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->mAssistantHeight$delegate:Lh4/f;

    return-void
.end method

.method public static synthetic enableMultipleRegions$default(Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;ZLcom/android/launcher3/util/DisplayController$Info;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->enableMultipleRegions(ZLcom/android/launcher3/util/DisplayController$Info;Z)V

    return-void
.end method

.method private final getMAssistantHeight()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->mAssistantHeight$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMAssistantWidth()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->mAssistantWidth$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final isTouchInLastRect(FF)Z
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/OrientationRectF;->contains(FF)Z

    move-result p0

    if-nez p0, :cond_14

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1, p2}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->containPoint(FF)Z

    move-result p0

    :cond_14
    return p0
.end method


# virtual methods
.method public final checkSwipeRegions(Landroid/view/MotionEvent;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    iget p1, p1, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v0, v0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    if-eq p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->resetLastTouchRect()V

    :cond_1c
    return-void
.end method

.method public createRegionForDisplay(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/quickstep/OrientationRectF;
    .registers 14

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRegionForDisplay: currentSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget-object v1, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v1, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAssitantValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mIsAssitantValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsOneHandledValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mIsOneHandledValid:Z

    const-string v2, "QuickStep"

    const-string v3, "OplusOrientationTouchTransformerImpl"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_132

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-boolean v4, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mIsAssitantValid:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_70

    invoke-direct {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->getMAssistantHeight()I

    move-result v4

    goto :goto_71

    :cond_70
    move v4, v5

    :goto_71
    invoke-virtual {v1, v4}, Lcom/oplus/quickstep/navigation/NavigationController;->setMAssistantHeight(I)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-boolean v4, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mIsOneHandledValid:Z

    if-eqz v4, :cond_80

    iget v5, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarLargerGesturalHeight:I

    :cond_80
    invoke-virtual {v1, v5}, Lcom/oplus/quickstep/navigation/NavigationController;->setMOneHandModeHeight(I)V

    new-instance v1, Lcom/android/quickstep/OrientationRectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v4, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v4

    iget v11, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/android/quickstep/OrientationRectF;-><init>(FFFFI)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v4}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpGestureWithKeysModeSideBack()Z

    move-result v4

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object v5, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mResources:Landroid/content/res/Resources;

    const-string/jumbo v6, "mResources"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->getGestureAreaSizeInMistouch(Landroid/content/res/Resources;Lcom/android/quickstep/OrientationRectF;)F

    move-result v0

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v0

    iput v5, v1, Landroid/graphics/RectF;->top:F

    if-eqz v4, :cond_c6

    iget v0, v1, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x3

    int-to-float v4, v4

    div-float v5, v0, v4

    iput v5, v1, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v0, v5

    div-float/2addr v0, v4

    iput v0, v1, Landroid/graphics/RectF;->right:F

    :cond_c6
    invoke-virtual {p0, v1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->updateAssistantRegions(Lcom/android/quickstep/OrientationRectF;)V

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mOneHandedModeRegion:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarLargerGesturalHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, v4, v5, v6, p1}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object p1, Lcom/oplus/quickstep/utils/OplusOneHandModeHelper;->oneHandModeRegion:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mOneHandedModeRegion:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createRegionForDisplay: orientationRectF = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mAssistantLeftRegion = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantLeftRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mAssistantRightRegion = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantRightRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mOneHandedModeRegion = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mOneHandedModeRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mNavBarLargerGesturalHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarLargerGesturalHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mAssistantHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->getMAssistantHeight()I

    move-result p0

    invoke-static {p1, p0, v2, v3}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_132
    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateTouchRegion()V

    invoke-super {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->createRegionForDisplay(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/quickstep/OrientationRectF;

    move-result-object p0

    const-string/jumbo p1, "super.createRegionForDisplay(display)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final enableMultipleRegions(ZLcom/android/launcher3/util/DisplayController$Info;Z)V
    .registers 5

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/OrientationTouchTransformer;->enableMultipleRegions(ZLcom/android/launcher3/util/DisplayController$Info;)V

    return-void

    :cond_b
    const/4 p3, 0x0

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p1, v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    move p1, p3

    :goto_17
    iput-boolean p1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mEnableMultipleRegions:Z

    if-eqz p1, :cond_20

    iget p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iput p1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mQuickStepStartingRotation:I

    goto :goto_25

    :cond_20
    iput p3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mQuickStepStartingRotation:I

    :goto_25
    invoke-virtual {p0, p2}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->resetSwipeRegionsForce(Lcom/android/launcher3/util/DisplayController$Info;)V

    return-void
.end method

.method public final getCurrentActiveTouchedRectf()Landroid/graphics/RectF;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    const-string/jumbo v0, "mLastRectTouched"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isInLandspace()Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->getWidth()F

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->getHeight()F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public final isTouchRotationSameAsDisplayRotation()Z
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v0, v0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iget p0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onLastTouchRectChanged()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "onLastTouchRectChanged: mLastRectTouched = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusOrientationTouchTransformerImpl"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    iget v0, v0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :cond_2d
    :goto_2d
    if-nez v1, :cond_35

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_35
    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    iget-object p0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setCurrentActiveTouchedRectf(Landroid/graphics/RectF;)V

    :cond_3c
    return-void
.end method

.method public final resetActiveRotation()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v0, v0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iget v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    if-eq v0, v1, :cond_a

    iput v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    :cond_a
    return-void
.end method

.method public final resetLastTouchRect()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusOrientationTouchTransformerImpl"

    const-string/jumbo v2, "resetLastTouchRect()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    return-void
.end method

.method public final resetSwipeRegionNeeded(Lcom/android/launcher3/util/DisplayController$Info;)V
    .registers 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v0, v0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iget v1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-eq v0, v1, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->resetSwipeRegionsForce(Lcom/android/launcher3/util/DisplayController$Info;)V

    :cond_10
    return-void
.end method

.method public resetSwipeRegions()V
    .registers 4

    const-string/jumbo v0, "resetSwipeRegions: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v1, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    const-string v2, "OplusOrientationTouchTransformerImpl"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->clearTouchRegion()V

    invoke-super {p0}, Lcom/android/quickstep/OrientationTouchTransformer;->resetSwipeRegions()V

    return-void
.end method

.method public resetSwipeRegions(Lcom/android/launcher3/util/DisplayController$Info;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "clearing all regions except rotation: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v1, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", caller= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusOrientationTouchTransformerImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->clearTouchRegion()V

    invoke-super {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->resetSwipeRegions(Lcom/android/launcher3/util/DisplayController$Info;)V

    return-void
.end method

.method public final resetSwipeRegionsForce(Lcom/android/launcher3/util/DisplayController$Info;)V
    .registers 6

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetSwipeRegionsForce(), current rotation is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v1, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const-string v2, "QuickStep"

    const-string v3, "OplusOrientationTouchTransformerImpl"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->clearTouchRegion()V

    new-instance v0, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget-object v1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v2, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Landroid/graphics/Point;I)V

    iput-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->createRegionForDisplay(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/quickstep/OrientationRectF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    const-string/jumbo v1, "mSwipeTouchRegions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public touchInValidSwipeRegions(FF)Z
    .registers 7

    const-string/jumbo v0, "touchInValidSwipeRegions(), x="

    const-string v1, ", y="

    const-string v2, ", rect="

    invoke-static {v0, p1, v1, p2, v2}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/android/quickstep/OrientationRectF;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    const-string v2, "QuickStep"

    const-string v3, "OplusOrientationTouchTransformerImpl"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    if-eqz v0, :cond_25

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->isTouchInLastRect(FF)Z

    move-result p0

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public updateAssistantRegions(Lcom/android/quickstep/OrientationRectF;)V
    .registers 5

    const-string/jumbo v0, "orientationRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p1

    :goto_15
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantLeftRegion:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->getMAssistantHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->getMAssistantWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantRightRegion:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->getMAssistantWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->getMAssistantHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget p0, p1, Landroid/graphics/RectF;->right:F

    iput p0, v0, Landroid/graphics/RectF;->right:F

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
