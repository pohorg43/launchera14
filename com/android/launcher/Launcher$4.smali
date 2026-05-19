.class Lcom/android/launcher/Launcher$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher;->listenHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeKeyLongPressed()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/ILauncherLifecycleObserver;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/ILauncherLifecycleObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-interface {v0, p0}, Lcom/android/launcher/ILauncherLifecycleObserver;->onHomeKeyLongPressed(Lcom/android/launcher/Launcher;)V

    goto :goto_1c

    :cond_14
    const-string p0, "OLauncher"

    const-string/jumbo v0, "onHomeKeyLongPressed -- mLauncherLifecycleObserver is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public onHomeKeyPressed()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "OLauncher"

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "onHomeKeyPressed -- mPaused = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/launcher/Launcher;->access$100(Lcom/android/launcher/Launcher;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/launcher/Launcher;->access$202(Lcom/android/launcher/Launcher;Z)Z

    iget-object v0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/ILauncherLifecycleObserver;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/ILauncherLifecycleObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-interface {v0, v1}, Lcom/android/launcher/ILauncherLifecycleObserver;->onHomeKeyPressed(Lcom/android/launcher/Launcher;)V

    goto :goto_3f

    :cond_39
    const-string/jumbo v0, "onHomeKeyPressed -- mLauncherLifecycleObserver is null"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    iget-object v0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    iget-boolean v1, v0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    if-eqz v1, :cond_48

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->removeLoadingView()V

    :cond_48
    iget-object v0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->setWidgetTouchResizeEnable(Z)V

    iget-object v0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    iget-object v1, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/Launcher$4;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isDismissKeyguardAnimating()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkScrollBigFolderTip(Landroid/view/View;Z)V

    :cond_77
    return-void
.end method
