.class public final Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;
.super Lcom/android/common/util/AnimationCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockViewController;->gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $isEnterAnim:Z

.field public final synthetic $reason:Ljava/lang/String;

.field public final synthetic $toState:Lcom/android/launcher3/states/OPlusBaseState;

.field public final synthetic this$0:Lcom/oplus/quickstep/dock/DockViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/states/OPlusBaseState;Ljava/lang/String;ZLcom/oplus/quickstep/dock/DockViewController;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$toState:Lcom/android/launcher3/states/OPlusBaseState;

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$reason:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$isEnterAnim:Z

    iput-object p4, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-direct {p0}, Lcom/android/common/util/AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish(Landroid/animation/Animator;Z)V
    .registers 5

    const-string v0, "gotoState onAnimationFinish "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$toState:Lcom/android/launcher3/states/OPlusBaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isCancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", reason: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$reason:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isEnter: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$isEnterAnim:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DockViewController"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->access$setStateChangeAnimator$p(Lcom/oplus/quickstep/dock/DockViewController;Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/common/util/AnimationCallback;->onAnimationStart(Landroid/animation/Animator;)V

    const-string v0, "gotoState onAnimationStart "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$toState:Lcom/android/launcher3/states/OPlusBaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$isEnterAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DockViewController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$toState:Lcom/android/launcher3/states/OPlusBaseState;

    invoke-static {p1, v0}, Lcom/oplus/quickstep/dock/DockViewController;->access$setCurrentState$p(Lcom/oplus/quickstep/dock/DockViewController;Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-boolean p1, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->$isEnterAnim:Z

    if-nez p1, :cond_4d

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;->this$0:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getTaskLaunchAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_4d
    return-void
.end method
