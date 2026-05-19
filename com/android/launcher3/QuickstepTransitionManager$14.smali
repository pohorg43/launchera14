.class Lcom/android/launcher3/QuickstepTransitionManager$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getUnlockWindowAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field public final synthetic val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic val$cornerRadius:F

.field public final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$cornerRadius:F

    iput-object p4, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    new-instance p1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2a

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$cornerRadius:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2a
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
