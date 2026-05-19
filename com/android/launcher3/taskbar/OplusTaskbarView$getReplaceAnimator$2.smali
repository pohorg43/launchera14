.class public final Lcom/android/launcher3/taskbar/OplusTaskbarView$getReplaceAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarView;->getReplaceAnimator(II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$getReplaceAnimator$2;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$getReplaceAnimator$2;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_76

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$getReplaceAnimator$2;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_73

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_73

    :cond_20
    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_73

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_73

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object v2

    invoke-interface {v2}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const-string/jumbo v4, "replaceItems anim end "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onAnimationEnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Taskbar"

    const-string v6, "OplusTaskbarView"

    invoke-static {v5, v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v4, 0x3f800000  # 1.0f

    if-nez v3, :cond_63

    goto :goto_66

    :cond_63
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_66
    if-nez v3, :cond_69

    goto :goto_6c

    :cond_69
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    :goto_6c
    if-nez v3, :cond_6f

    goto :goto_34

    :cond_6f
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_34

    :cond_73
    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_76
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
