.class public final Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/touch/TaskWindowSpringScrollController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SpringScroller"
.end annotation


# instance fields
.field private previousXStartValue:Ljava/lang/Float;

.field public final synthetic this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

.field private final wrapperEndListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final y:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "y"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->x:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->wrapperEndListenerMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final addEndListener(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;

    iget-object v1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;-><init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V

    iget-object v1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->x:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->wrapperEndListenerMap:Ljava/util/HashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final cancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->x:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    return-void
.end method

.method public final end()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->x:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    return-void
.end method

.method public final getPreviousXStartValue()Ljava/lang/Float;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->previousXStartValue:Ljava/lang/Float;

    return-object p0
.end method

.method public final getX()Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->x:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public final getY()Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public final isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->x:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

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

.method public final removeEndListener(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->wrapperEndListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->x:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_18
    return-void
.end method

.method public final setPreviousXStartValue(Ljava/lang/Float;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->previousXStartValue:Ljava/lang/Float;

    return-void
.end method
