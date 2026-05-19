.class Lcom/android/launcher3/QuickstepTransitionManager$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimatorsForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field public final synthetic val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
