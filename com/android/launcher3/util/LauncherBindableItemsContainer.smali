.class public interface abstract Lcom/android/launcher3/util/LauncherBindableItemsContainer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->lambda$updateWorkspaceItems$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->lambda$updateRestoreItems$1(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateRestoreItems$1(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result p0

    if-eqz p0, :cond_24

    move-object p0, p2

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-virtual {p2}, Landroid/view/View;->isVisibleToUser()Z

    move-result p1

    invoke-interface {p0, v1, p1, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyPromiseState(ZZZ)V

    goto :goto_53

    :cond_24
    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyLoadingState(Z)V

    goto :goto_53

    :cond_2a
    instance-of v0, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_3e

    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_3e

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    check-cast p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    goto :goto_53

    :cond_3e
    instance-of v0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_53

    instance-of p1, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p1, :cond_53

    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/launcher/badge/g;

    invoke-direct {p1, p0}, Lcom/android/launcher/badge/g;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Ljava/util/function/Predicate;)V

    :cond_53
    :goto_53
    return v1
.end method

.method private static synthetic lambda$updateWorkspaceItems$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 7

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    check-cast p0, Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->hasNotCompleted()Z

    move-result p0

    if-eqz p0, :cond_22

    move p0, v2

    goto :goto_23

    :cond_22
    move p0, v1

    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateShortcuts -- to update shortcut: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LauncherBindableItemsContainer"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v0

    if-eq v0, p0, :cond_41

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    invoke-virtual {p2, p1, v2}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_5b

    :cond_46
    instance-of p1, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p1, :cond_5b

    instance-of p1, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p1, :cond_5b

    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/launcher/badge/f;

    invoke-direct {p1, p0}, Lcom/android/launcher/badge/f;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Ljava/util/function/Predicate;)V

    :cond_5b
    :goto_5b
    return v1
.end method


# virtual methods
.method public abstract mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
.end method

.method public updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v0, p1}, Lcom/android/launcher/folder/recommend/c;-><init>(Ljava/util/HashSet;)V

    invoke-interface {p0, v0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    invoke-static {p2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_11
    return-void
.end method

.method public updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lf/h;

    invoke-direct {p1, v0}, Lf/h;-><init>(Ljava/util/HashSet;)V

    invoke-interface {p0, p1}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    invoke-static {p2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_16
    return-void
.end method
