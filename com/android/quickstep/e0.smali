.class public final synthetic Lcom/android/quickstep/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/e0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/e0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 5

    iget v0, p0, Lcom/android/quickstep/e0;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/quickstep/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->d(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/quickstep/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/FallbackSwipeHandler;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler;->l1(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
