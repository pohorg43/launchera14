.class final Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGroupCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupCardView.kt\ncom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,1263:1\n31#2:1264\n94#2,14:1265\n*S KotlinDebug\n*F\n+ 1 GroupCardView.kt\ncom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2\n*L\n353#1:1264\n353#1:1265,14\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.groupcard.GroupCardView$playSmartCardAnimator$2"
    f = "GroupCardView.kt"
    l = {
        0x140
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $newView:Landroid/view/View;

.field public final synthetic $oldView:Landroid/view/View;

.field public I$0:I

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/card/groupcard/GroupCardView;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->invokeSuspend$lambda$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->invokeSuspend$lambda$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    if-nez p0, :cond_3

    goto :goto_16

    :cond_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_16
    return-void
.end method

.method private static final invokeSuspend$lambda$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    if-nez p0, :cond_3

    goto :goto_16

    :cond_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_16
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;

    iget-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;-><init>(Landroid/view/View;Landroid/view/View;Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->label:I

    const-string v2, "GroupCardView"

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v3, :cond_15

    iget v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->I$0:I

    :try_start_d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    goto/16 :goto_a2

    :catch_12
    move-exception p0

    goto/16 :goto_a4

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "playSmartCardAnimator: no need anim for newView = oldView"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_44
    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_71

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iget-object v5, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    const-string v6, "it.dragLayer"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_5e

    goto :goto_62

    :cond_5e
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_62
    invoke-virtual {v4}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_71

    invoke-static {v4, p1, v5, v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$delayWhenFloatingElementShowing(Lcom/android/launcher3/card/groupcard/GroupCardView;Lcom/android/launcher3/dragndrop/DragLayer;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_71

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_71
    const-string/jumbo p1, "playSmartCardAnimator: newView："

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oldView = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz p1, :cond_ad

    :try_start_94
    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iput p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->I$0:I

    iput v3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->label:I

    invoke-static {v1, p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$awaitRefreshAnimOnLongPressEnd(Lcom/android/launcher3/card/groupcard/GroupCardView;Ll4/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9e} :catch_12

    if-ne v1, v0, :cond_a1

    return-object v0

    :cond_a1
    move v0, p1

    :goto_a2
    move p1, v0

    goto :goto_ad

    :goto_a4
    const-string/jumbo p1, "playSmartCardAnimator, awaitRefreshAnimOnLongPressEnd "

    invoke-static {p1, p0, v2}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_ad
    :goto_ad
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz p1, :cond_b7

    goto :goto_b8

    :cond_b7
    const/4 v3, 0x0

    :goto_b8
    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    invoke-static {v1, v3, p1, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$playSwitchStateAnimIfNeeded(Lcom/android/launcher3/card/groupcard/GroupCardView;ZLandroid/view/View;Landroid/animation/AnimatorSet;)V

    const/4 p1, 0x2

    new-array v1, p1, [F

    fill-array-data v1, :array_174

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    new-instance v3, Lcom/android/launcher3/card/groupcard/d;

    invoke-direct {v3, v2}, Lcom/android/launcher3/card/groupcard/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getSmartCardAnimDuration(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/view/View;Landroid/view/View;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "getSmartCardAnimDuration(oldView, newView)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz v1, :cond_f6

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_fb

    :cond_f6
    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_fb
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    if-eqz v3, :cond_14d

    new-array p1, p1, [F

    fill-array-data p1, :array_17c

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    new-instance v4, Lcom/android/launcher3/card/groupcard/c;

    invoke-direct {v4, v3}, Lcom/android/launcher3/card/groupcard/c;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iget-object v3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    invoke-static {p1, v3, v4}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getSmartCardAnimDuration(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/view/View;Landroid/view/View;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz p1, :cond_13a

    sget-object p1, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_13f

    :cond_13a
    sget-object p1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_13f
    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->this$0:Lcom/android/launcher3/card/groupcard/GroupCardView;

    iget-object v2, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$oldView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    new-instance v4, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2$invokeSuspend$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_14d
    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->$newView:Landroid/view/View;

    instance-of p1, p0, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz p1, :cond_156

    check-cast p0, Lcom/android/launcher3/card/DefaultCardView;

    goto :goto_157

    :cond_156
    const/4 p0, 0x0

    :goto_157
    if-nez p0, :cond_15a

    goto :goto_15d

    :cond_15a
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_15d
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_171

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_171
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :array_174
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_17c
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method
