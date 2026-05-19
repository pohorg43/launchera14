.class public final synthetic Lcom/android/launcher/togglebar/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/graphics/Matrix;

.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:Landroid/graphics/RectF;

.field public final synthetic g:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/togglebar/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/togglebar/a;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/android/launcher/togglebar/a;->g:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput-object p4, p0, Lcom/android/launcher/togglebar/a;->d:Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/android/launcher/togglebar/a;->e:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/launcher/togglebar/a;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/togglebar/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/a;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/android/launcher/togglebar/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/togglebar/a;->d:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/launcher/togglebar/a;->e:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/launcher/togglebar/a;->f:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/android/launcher/togglebar/a;->g:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 14

    iget v0, p0, Lcom/android/launcher/togglebar/a;->a:I

    packed-switch v0, :pswitch_data_32

    goto :goto_1c

    :pswitch_6  #0x0
    iget-object v1, p0, Lcom/android/launcher/togglebar/a;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v0, p0, Lcom/android/launcher/togglebar/a;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    iget-object v3, p0, Lcom/android/launcher/togglebar/a;->d:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/launcher/togglebar/a;->e:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher/togglebar/a;->f:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/launcher/togglebar/a;->g:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v1 .. v9}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->a([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void

    :goto_1c
    iget-object v0, p0, Lcom/android/launcher/togglebar/a;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    iget-object v2, p0, Lcom/android/launcher/togglebar/a;->b:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v3, p0, Lcom/android/launcher/togglebar/a;->g:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v4, p0, Lcom/android/launcher/togglebar/a;->d:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/launcher/togglebar/a;->e:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/launcher/togglebar/a;->f:Landroid/graphics/RectF;

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v1 .. v9}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->b(Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
