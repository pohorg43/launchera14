.class Lcom/android/launcher3/folder/Folder$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setIsOpenForRename(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->onFolderOpenAnimCancelPoint()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder$4;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendFolderOpenedEventToTest(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->setFocusOnFirstChild()V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->folderAnimEndExitPoint()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    invoke-static {}, Lcom/android/common/util/FolerUtils;->notifyORMSAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/folder/IFolderExt;->doUIFirst(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p0}, Lcom/android/launcher3/folder/IFolderExt;->doFolderOpenAnimStart()V

    return-void
.end method
