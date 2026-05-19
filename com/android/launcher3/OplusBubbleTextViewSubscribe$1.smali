.class Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->pressAnimationDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

.field public final synthetic val$isAnimationBreak:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    iput-object p2, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;->val$isAnimationBreak:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "OplusBubbleTextViewSubscribe"

    const-string/jumbo p1, "pressAnimationDown cancel"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$102(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Z)Z

    iget-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {p1, v0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$002(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Z)Z

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const-string v1, "LauncherIconFeedBackAnim"

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pressAnimationDown end: scale value is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {v0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$200(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusBubbleTextViewSubscribe"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pressAnimationDown end: shadow value is is : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {v1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$300(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;->val$isAnimationBreak:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_68

    sget-object p1, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$400(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V

    const-string p0, "In abnormal situations, the dynamic effect of recalling the icon up restores the icon size."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "OplusBubbleTextViewSubscribe"

    const-string/jumbo p1, "pressAnimationDown Repeat"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe$1;->this$0:Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->access$002(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;Z)Z

    const-string p0, "OplusBubbleTextViewSubscribe"

    const-string/jumbo p1, "pressAnimationDown start"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
