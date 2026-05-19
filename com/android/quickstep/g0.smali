.class public final synthetic Lcom/android/quickstep/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/g0;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/g0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/g0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->c(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/g0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->c(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/InputEvent;)V

    return-void
.end method
