.class public final Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/big/FolderFunctionGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field private tips:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTips()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->tips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object p0
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->tips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_27

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_27
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public final setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->tips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_1f
    return-void
.end method
