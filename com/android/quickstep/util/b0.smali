.class public final synthetic Lcom/android/quickstep/util/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/util/b0;

.field public static final synthetic b:Lcom/android/quickstep/util/b0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/util/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/b0;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/util/b0;->a:Lcom/android/quickstep/util/b0;

    new-instance v0, Lcom/android/quickstep/util/b0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/b0;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/util/b0;->b:Lcom/android/quickstep/util/b0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/agent/AppStartAgent;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->a(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method
