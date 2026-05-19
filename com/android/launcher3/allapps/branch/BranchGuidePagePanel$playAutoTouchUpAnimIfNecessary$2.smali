.class public final Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$playAutoTouchUpAnimIfNecessary$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->playAutoTouchUpAnimIfNecessary(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$playAutoTouchUpAnimIfNecessary$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "BranchGuidePagePanel"

    const-string/jumbo p1, "onAnimationCancel"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onAnimationEnd mAutoAnimEndValue:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$playAutoTouchUpAnimIfNecessary$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->access$getMAutoAnimEndValue$p(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BranchGuidePagePanel"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$playAutoTouchUpAnimIfNecessary$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->access$getMAutoAnimEndValue$p(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    move p1, v0

    :goto_32
    if-eqz p1, :cond_39

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$playAutoTouchUpAnimIfNecessary$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_39
    return-void
.end method
