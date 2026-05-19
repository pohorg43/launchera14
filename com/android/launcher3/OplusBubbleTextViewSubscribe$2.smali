.class Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->pressAnimationUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$500(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->resetPressAnimatorWhenCancelUp(Z)V

    const-string p0, "OplusBubbleTextViewSubscribe"

    const-string/jumbo p1, "pressAnimationUp cancel"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string/jumbo p1, "pressAnimationUp end: scale value is : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {v0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$200(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusBubbleTextViewSubscribe"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pressAnimationUp end: shadow value is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {v1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$300(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$602(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Z)Z

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const-string v1, "LauncherIconFeedBackAnim"

    invoke-virtual {v0, p1, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/16 p1, 0x7d8

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "OplusBubbleTextViewSubscribe"

    const-string/jumbo p1, "pressAnimationUp Repeat"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string/jumbo p1, "pressAnimationUp start: scale value is : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {v0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$200(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusBubbleTextViewSubscribe"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pressAnimationUp start: shadow value is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {v1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$300(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pressAnimationUp start: mShouldApplyCheckState is : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {v1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$500(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$2;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$602(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Z)Z

    return-void
.end method
