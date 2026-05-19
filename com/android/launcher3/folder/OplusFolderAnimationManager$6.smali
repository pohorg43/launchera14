.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;
.super Lcom/android/launcher/LauncherAnimatorUpdateListener;
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

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$workspace:Lcom/android/launcher3/Workspace;

    iput-boolean p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$isInWorkspace:Z

    iput p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$workspaceScrollX:I

    invoke-direct {p0}, Lcom/android/launcher/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$workspace:Lcom/android/launcher3/Workspace;

    iget-object p2, p1, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    if-eqz p2, :cond_32

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    goto :goto_1b

    :cond_13
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$workspace:Lcom/android/launcher3/Workspace;

    iget-object p1, p1, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result p1

    :goto_1b
    iget-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v0, p2, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$isInWorkspace:Z

    if-eqz v0, :cond_29

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$workspaceScrollX:I

    sub-int/2addr p0, p1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    invoke-static {p2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setTranslationX(Landroid/view/View;F)Z

    :cond_32
    return-void
.end method
