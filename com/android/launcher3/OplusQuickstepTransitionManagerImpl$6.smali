.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/animation/Animator;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSamePackage(Ljava/lang/String;IZ)Z
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public run(ILjava/util/function/Consumer;)V
    .registers 3
    .param p2  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;->val$animator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    return-void
.end method
