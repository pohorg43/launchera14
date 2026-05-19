.class public final synthetic Lcom/android/quickstep/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;
.implements Lcom/android/quickstep/AbsSwipeUpHandler$Factory;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/f0;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/f0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public newHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/f0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->h(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method public onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/f0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->c(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method
