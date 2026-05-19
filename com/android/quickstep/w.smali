.class public final synthetic Lcom/android/quickstep/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/w;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/w;

    invoke-direct {v0}, Lcom/android/quickstep/w;-><init>()V

    sput-object v0, Lcom/android/quickstep/w;->a:Lcom/android/quickstep/w;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->e(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method
