.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPendingCardTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PendingCardTransformer.kt\ncom/android/launcher3/popup/pendingcard/PendingCardTransformer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
    }
.end annotation


# static fields
.field private static final CARD_MASK_APHAL_POINT:F = 0.9f

.field private static final CARD_SCALE_POINT:F = 0.95f

.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;

.field private static final DAMPING_COEFFICIENT_ABOUT_SLIDE:F = 0.3f

.field private static final FOUR_SPAN_CARD_MIN_SCALE:F = 0.8f

.field private static final PRESS_AND_SLIDE_SCALE_TRANSITION_FACTOR:F = 0.05f

.field private static final TAG:Ljava/lang/String; = "PendingCardTransformer"


# instance fields
.field private final cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private mInitScale:F

.field private mInitTargetView:Landroid/view/View;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 4

    const-string v0, "cardViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    sget-object p1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitScale:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->overScrollRecover$lambda$6$lambda$5(Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private static final overScrollRecover$lambda$6$lambda$5(Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->changeOverSlideState(Z)V

    return-void
.end method

.method private final scaleCardByPosition(Landroid/view/View;F)V
    .registers 9

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f733333  # 0.95f

    cmpl-float v0, v1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-lez v0, :cond_16

    const v0, 0x3f86bca2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, v0

    goto :goto_17

    :cond_16
    move p2, v1

    :goto_17
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitTargetView:Landroid/view/View;

    if-eqz v0, :cond_73

    :try_start_1b
    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    if-ne v0, v2, :cond_73

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitScale:F
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_2b} :catch_58

    const/4 v2, 0x1

    int-to-float v3, v2

    sub-float/2addr v3, v0

    const v4, 0x3d4ccccd  # 0.05f

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    :try_start_33
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_40

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_53
    iput v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitScale:F
    :try_end_55
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_55} :catch_56

    goto :goto_72

    :catch_56
    move-exception v1

    goto :goto_5c

    :catch_58
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PendingCardTransformer"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    move v1, v0

    :cond_73
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    const p2, 0x3f4ccccd  # 0.8f

    sub-float/2addr v1, p2

    mul-float/2addr v1, p0

    add-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final updateCardMaskAlphaByPosition(Landroid/view/View;F)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3f666666  # 0.9f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_14

    const p0, 0x3f86bca2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p0

    goto :goto_16

    :cond_14
    const/high16 p2, 0x3f800000  # 1.0f

    :goto_16
    instance-of p0, p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    if-eqz p0, :cond_1d

    check-cast p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    if-eqz p1, :cond_26

    const/4 p0, 0x1

    int-to-float p0, p0

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->setMaskAlpha(F)V

    :cond_26
    return-void
.end method


# virtual methods
.method public final getCardViewContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-object p0
.end method

.method public final getRecyclerView()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    return-object p0
.end method

.method public final overScrollRecover()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCurOverSlideView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x43480000  # 200.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v0, Lcom/android/launcher/v;

    invoke-direct {v0, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;)V

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_2d
    return-void
.end method

.method public final setInitialScale(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitScale:F

    return-void
.end method

.method public final transformPage(Landroid/view/View;F)V
    .registers 13

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v0, :cond_19

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_19
    cmpg-float v0, p2, v1

    if-gez v0, :cond_2a

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2a

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->updateCardMaskAlphaByPosition(Landroid/view/View;F)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->scaleCardByPosition(Landroid/view/View;F)V

    goto :goto_81

    :cond_2a
    cmpl-float v0, p2, v1

    if-lez v0, :cond_81

    cmpg-float v0, p2, v3

    if-gez v0, :cond_81

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->updateCardMaskAlphaByPosition(Landroid/view/View;F)V

    instance-of v0, p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    goto :goto_3f

    :cond_3e
    move-object v0, v1

    :goto_3f
    if-nez v0, :cond_42

    return-void

    :cond_42
    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getMType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4a

    return-void

    :cond_4a
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->scaleCardByPosition(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMFirstVisibleView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5c

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMCompletelyVisibleView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_5c
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->calculateStartAndEndValues(I)V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    const/4 v0, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateClipPath$default(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;FZILjava/lang/Object;)[F

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMPopupContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->reMarginShortCut$default(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;[FZZILjava/lang/Object;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public final viewIsOverSlide(F)V
    .registers 4

    const v0, 0x3e99999a  # 0.3f

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCurOverSlideView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1e
    return-void
.end method
