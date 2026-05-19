.class public final Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->addEndListener(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $listener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

.field private count:I

.field private final maxCount:I

.field public final synthetic this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

.field public final synthetic this$1:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

.field private xCancel:Z

.field private xValue:F

.field private xVelocity:F

.field private yCancel:Z

.field private yValue:F

.field private yVelocity:F


# direct methods
.method public constructor <init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V
    .registers 4

    iput-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    iput-object p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->this$1:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    iput-object p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->$listener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->maxCount:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->count:I

    return p0
.end method

.method public final getMaxCount()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->maxCount:I

    return p0
.end method

.method public final getXCancel()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xCancel:Z

    return p0
.end method

.method public final getXValue()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xValue:F

    return p0
.end method

.method public final getXVelocity()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xVelocity:F

    return p0
.end method

.method public final getYCancel()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yCancel:Z

    return p0
.end method

.method public final getYValue()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yValue:F

    return p0
.end method

.method public final getYVelocity()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yVelocity:F

    return p0
.end method

.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;ZFF)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    invoke-static {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->access$getSpringScroller$p(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;)Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getX()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-boolean p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xCancel:Z

    iput p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xValue:F

    iput p4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xVelocity:F

    goto :goto_2d

    :cond_17
    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->this$0:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    invoke-static {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->access$getSpringScroller$p(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;)Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->getY()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iput-boolean p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yCancel:Z

    iput p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yValue:F

    iput p4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yVelocity:F

    :cond_2d
    :goto_2d
    if-eqz p1, :cond_32

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_32
    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->this$1:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->isRunning()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->count:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->count:I

    iget p3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->maxCount:I

    if-ge p2, p3, :cond_46

    if-eqz p1, :cond_60

    :cond_46
    iget-object v0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->$listener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

    iget-object v1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->this$1:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    iget-boolean v2, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xCancel:Z

    iget v3, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xValue:F

    iget v4, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xVelocity:F

    iget-boolean v5, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yCancel:Z

    iget v6, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yValue:F

    iget v7, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yVelocity:F

    invoke-interface/range {v0 .. v7}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;->onAnimationEnd(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;ZFFZFF)V

    iget-object p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->this$1:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    iget-object p0, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->$listener:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->removeEndListener(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScrollEndListener;)V

    :cond_60
    return-void
.end method

.method public final setCount(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->count:I

    return-void
.end method

.method public final setXCancel(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xCancel:Z

    return-void
.end method

.method public final setXValue(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xValue:F

    return-void
.end method

.method public final setXVelocity(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->xVelocity:F

    return-void
.end method

.method public final setYCancel(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yCancel:Z

    return-void
.end method

.method public final setYValue(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yValue:F

    return-void
.end method

.method public final setYVelocity(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller$addEndListener$wrapper$1;->yVelocity:F

    return-void
.end method
