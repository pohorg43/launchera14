.class public final synthetic Lcom/oplus/quickstep/gesture/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic b:Lcom/android/quickstep/util/SurfaceTransaction;

.field public final synthetic c:F

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:Landroid/graphics/Matrix;

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransaction;FLandroid/graphics/Rect;Landroid/graphics/Matrix;F)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/u;->a:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/u;->b:Lcom/android/quickstep/util/SurfaceTransaction;

    iput p3, p0, Lcom/oplus/quickstep/gesture/u;->c:F

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/u;->d:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/u;->e:Landroid/graphics/Matrix;

    iput p6, p0, Lcom/oplus/quickstep/gesture/u;->f:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/u;->a:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/u;->b:Lcom/android/quickstep/util/SurfaceTransaction;

    iget v2, p0, Lcom/oplus/quickstep/gesture/u;->c:F

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/u;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/u;->e:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/oplus/quickstep/gesture/u;->f:F

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;->a(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransaction;FLandroid/graphics/Rect;Landroid/graphics/Matrix;F)V

    return-void
.end method
