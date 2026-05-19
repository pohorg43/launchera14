.class public Lcom/android/quickstep/OplusAnimatedFloat;
.super Lcom/android/quickstep/AnimatedFloat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;
    }
.end annotation


# instance fields
.field private final mOplusUpdateCallback:Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OplusAnimatedFloat;->mOplusUpdateCallback:Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;

    new-instance p1, Lcom/android/quickstep/h0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/h0;-><init>(Lcom/android/quickstep/OplusAnimatedFloat;)V

    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/OplusAnimatedFloat;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/OplusAnimatedFloat;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    iget v0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/quickstep/AnimatedFloat;->mStartValue:Ljava/lang/Float;

    iget-object v2, p0, Lcom/android/quickstep/AnimatedFloat;->mEndValue:Ljava/lang/Float;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/OplusAnimatedFloat;->notifyUpdateCallback(FLjava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method private notifyUpdateCallback(FLjava/lang/Float;Ljava/lang/Float;)V
    .registers 4
    .param p2  # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/quickstep/OplusAnimatedFloat;->mOplusUpdateCallback:Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-interface {p0, p1, p2, p3}, Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;->onUpdate(FLjava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method
