.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getBackgroundAndIndicatorAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$isInWorkspace:Z

.field public final synthetic val$workspace:Lcom/android/launcher3/Workspace;

.field public final synthetic val$workspaceScrollX:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/Workspace;ZI)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspace:Lcom/android/launcher3/Workspace;

    iput-boolean p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$isInWorkspace:Z

    iput p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspaceScrollX:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->clearFolderTransition()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    goto :goto_1d

    :cond_15
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspace:Lcom/android/launcher3/Workspace;

    iget-object p1, p1, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result p1

    :goto_1d
    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$isInWorkspace:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspaceScrollX:I

    sub-int/2addr v0, p1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setTranslationX(Landroid/view/View;F)Z

    :cond_30
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->clearFolderTransition()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/view/View;F)Z

    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$isInWorkspace:Z

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v0, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez v0, :cond_49

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-nez p1, :cond_49

    new-instance p1, Lcom/android/launcher3/folder/FolderTransition;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/folder/FolderTransition;-><init>(Lcom/android/launcher3/folder/OplusFolder;I)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->setFolderTransition(Lcom/android/launcher3/folder/FolderTransition;)V

    :cond_49
    return-void
.end method
