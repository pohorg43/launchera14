.class public final synthetic Lcom/android/launcher3/testing/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/testing/h;

.field public static final synthetic b:Lcom/android/launcher3/testing/h;

.field public static final synthetic c:Lcom/android/launcher3/testing/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/testing/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/h;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/testing/h;->a:Lcom/android/launcher3/testing/h;

    new-instance v0, Lcom/android/launcher3/testing/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/h;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/testing/h;->b:Lcom/android/launcher3/testing/h;

    new-instance v0, Lcom/android/launcher3/testing/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/h;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/testing/h;->c:Lcom/android/launcher3/testing/h;

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

    invoke-static {}, Lcom/oplus/statistics/agent/PageVisitAgent;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->c(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
