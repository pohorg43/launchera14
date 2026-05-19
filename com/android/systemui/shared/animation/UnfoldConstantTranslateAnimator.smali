.class public final Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;,
        Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;,
        Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnfoldConstantTranslateAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnfoldConstantTranslateAnimator.kt\ncom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1855#2,2:98\n1603#2,9:100\n1855#2:109\n1856#2:111\n1612#2:112\n1#3:110\n*S KotlinDebug\n*F\n+ 1 UnfoldConstantTranslateAnimator.kt\ncom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator\n*L\n61#1:98,2\n71#1:100,9\n71#1:109\n71#1:111\n71#1:112\n71#1:110\n*E\n"
    }
.end annotation


# instance fields
.field private final progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

.field private rootView:Landroid/view/ViewGroup;

.field private translationMax:F

.field private final viewsIdToTranslate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
            ">;"
        }
    .end annotation
.end field

.field private viewsToTranslate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
            ">;",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "viewsIdToTranslate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "progressProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsIdToTranslate:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    sget-object p1, Li4/y;->a:Li4/y;

    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsToTranslate:Ljava/util/List;

    return-void
.end method

.method private final registerViewsForAnimation(Landroid/view/ViewGroup;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    invoke-virtual {v1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;->component1()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;->component2()Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;->component3()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_37

    const-string v4, "findViewById<View>(id)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, v3, v1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;)V

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    :goto_38
    if-eqz v4, :cond_9

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3e
    iput-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsToTranslate:Ljava/util/List;

    return-void
.end method

.method private final translateViews(F)V
    .registers 5

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translationMax:F

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsToTranslate:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->component1()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->component2()Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->component3()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_39

    goto :goto_c

    :cond_39
    invoke-virtual {v2}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->getMultiplier()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_c

    :cond_42
    return-void
.end method


# virtual methods
.method public final init(Landroid/view/ViewGroup;F)V
    .registers 4

    const-string/jumbo v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->rootView:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translationMax:F

    iget-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onTransitionFinished()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translateViews(F)V

    return-void
.end method

.method public onTransitionProgress(F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translateViews(F)V

    return-void
.end method

.method public onTransitionStarted()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->rootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    const-string/jumbo v0, "rootView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->viewsIdToTranslate:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->registerViewsForAnimation(Landroid/view/ViewGroup;Ljava/util/Set;)V

    return-void
.end method
