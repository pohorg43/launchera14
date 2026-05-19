.class public final Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$2$1;
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


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/dock/DockViewController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dock/DockViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$2$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-direct {p0}, Lcom/android/common/util/AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish(Landroid/animation/Animator;Z)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$2$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dock/DockViewController;->getPageOffsetAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result p1

    const/high16 p2, 0x3f800000  # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-nez p1, :cond_25

    const-string p1, "DockViewController"

    const-string v0, "createDockViewStateChangeAnimator onEnter onAnimationFinish, reset page offset alpha"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$2$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getPageOffsetAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_25
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_DOCK_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/common/util/AnimationCallback;->onAnimationStart(Landroid/animation/Animator;)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_DOCK_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$2$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dock/DockViewController;->getPageOffsetAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-nez p1, :cond_2d

    const-string p1, "DockViewController"

    const-string v1, "createDockViewStateChangeAnimator onEnter start, reset page offset alpha"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$2$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getPageOffsetAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_2d
    return-void
.end method
