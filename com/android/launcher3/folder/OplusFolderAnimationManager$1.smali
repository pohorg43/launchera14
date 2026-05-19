.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->initAnimListeners(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field public final synthetic val$traceType:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$traceType:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    iput-object p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v0, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez v0, :cond_11

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->playItemDotAnimation()V

    :cond_11
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez v1, :cond_93

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_93
    move p1, v0

    :goto_94
    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_b0

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_ad

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_ad
    add-int/lit8 p1, p1, 0x1

    goto :goto_94

    :cond_b0
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p1

    if-eqz p1, :cond_cd

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v0, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_cd

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    :cond_cd
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$traceType:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$traceType:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->isOpening()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    :cond_49
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez p1, :cond_7f

    move p1, v0

    :goto_50
    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_7f

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_7c

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7c

    :cond_78
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7c
    :goto_7c
    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    :cond_7f
    return-void
.end method
