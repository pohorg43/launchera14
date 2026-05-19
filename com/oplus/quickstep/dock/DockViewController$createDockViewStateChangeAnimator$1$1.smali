.class public final Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$1$1;
.super Lcom/android/common/util/AnimationCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockViewController;->createDockViewStateChangeAnimator(ZZLjava/lang/String;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/util/AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish(Landroid/animation/Animator;Z)V
    .registers 3

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->EXIT_DOCK_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/common/util/AnimationCallback;->onAnimationStart(Landroid/animation/Animator;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->EXIT_DOCK_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method
