.class public final synthetic Lcom/android/quickstep/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/AnimatedFloat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AnimatedFloat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v;->a:Lcom/android/quickstep/AnimatedFloat;

    return-void
.end method


# virtual methods
.method public final onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/v;->a:Lcom/android/quickstep/AnimatedFloat;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->f(Lcom/android/quickstep/AnimatedFloat;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method
