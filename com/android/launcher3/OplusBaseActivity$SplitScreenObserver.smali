.class public final Lcom/android/launcher3/OplusBaseActivity$SplitScreenObserver;
.super Lcom/oplus/app/IOplusSplitScreenObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/OplusBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitScreenObserver"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/OplusBaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusBaseActivity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/app/IOplusSplitScreenObserver$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusBaseActivity$SplitScreenObserver;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "splitScreenMinimizedChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    if-eqz p2, :cond_6d

    const-string p1, "isMinimized"

    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/OplusBaseActivity$SplitScreenObserver;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/OplusBaseActivity;

    :cond_1e
    if-nez v1, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v1, p1}, Lcom/android/launcher3/OplusBaseActivity;->setInMinimize(Z)V

    :goto_24
    iget-object p0, p0, Lcom/android/launcher3/OplusBaseActivity$SplitScreenObserver;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusBaseActivity;

    if-eqz p0, :cond_6d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBaseActivity;->onSplitMinimizeModeChanged(Z)V

    goto :goto_6d

    :cond_34
    const-string/jumbo v0, "splitScreenModeChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    if-eqz p2, :cond_6d

    const-string p1, "isInSplitScreenMode"

    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sget-object p2, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->INSTANCE:Lcom/oplus/quickstep/multiwindow/MultiWindowManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreen:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/android/launcher3/OplusBaseActivity$SplitScreenObserver;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_58

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/OplusBaseActivity;

    :cond_58
    if-nez v1, :cond_5b

    goto :goto_5e

    :cond_5b
    invoke-virtual {v1, p1}, Lcom/android/launcher3/OplusBaseActivity;->setInSplitScreenMode(Z)V

    :goto_5e
    iget-object p0, p0, Lcom/android/launcher3/OplusBaseActivity$SplitScreenObserver;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusBaseActivity;

    if-eqz p0, :cond_6d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBaseActivity;->onSplitModeChanged(Z)V

    :cond_6d
    :goto_6d
    return-void
.end method
