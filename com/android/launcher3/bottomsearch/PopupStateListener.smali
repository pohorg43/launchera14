.class public final Lcom/android/launcher3/bottomsearch/PopupStateListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/bottomsearch/PopupStateListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher/ILauncherLifecycleObserver;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/bottomsearch/PopupStateListener$Companion;

.field public static final TAG:Ljava/lang/String; = "BOTTOM.WIDGET - PopupStateListener"


# instance fields
.field private popup:Landroid/widget/PopupWindow;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/bottomsearch/PopupStateListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/bottomsearch/PopupStateListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/bottomsearch/PopupStateListener;->Companion:Lcom/android/launcher3/bottomsearch/PopupStateListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPopup()Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/PopupStateListener;->popup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "BOTTOM.WIDGET - PopupStateListener"

    const-string/jumbo v0, "onPause"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/PopupStateListener;->popup:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_22

    :cond_21
    move-object p1, v0

    :goto_22
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_2f
    invoke-virtual {p0, v0}, Lcom/android/launcher3/bottomsearch/PopupStateListener;->setPopup(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    const-string p1, "BOTTOM.WIDGET - PopupStateListener"

    const-string/jumbo v0, "onStateTransitionStart"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/PopupStateListener;->popup:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    :goto_1c
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/launcher3/bottomsearch/PopupStateListener;->setPopup(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/bottomsearch/PopupStateListener;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public final setPopup(Landroid/widget/PopupWindow;)V
    .registers 3

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_1d
    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/PopupStateListener;->popup:Landroid/widget/PopupWindow;

    return-void
.end method
