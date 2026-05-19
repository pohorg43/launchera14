.class public final Lcom/android/launcher3/util/ActivityTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EXTRA_SCHEDULER_CALLBACK:Ljava/lang/String; = "launcher.scheduler_callback"

.field private static final TAG:Ljava/lang/String; = "ActivityTracker"


# instance fields
.field private mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mInitCallBack:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mLaunchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mLaunchers:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher3/util/ActivityTracker;->mInitCallBack:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private clearInitCallBack()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mInitCallBack:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mInitCallBack:Ljava/lang/ref/WeakReference;

    :cond_a
    return-void
.end method

.method private handleIntent(Lcom/android/launcher3/BaseActivity;Landroid/content/Intent;Z)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Intent;",
            "Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;

    invoke-interface {v3, p1, p3}, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;->init(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/ActivityTracker;->unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    :cond_1e
    move v3, v1

    goto :goto_9

    :cond_20
    if-eqz p2, :cond_54

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "launcher.scheduler_callback"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    instance-of v5, v0, Lcom/android/launcher3/util/ObjectWrapper;

    if-eqz v5, :cond_54

    check-cast v0, Lcom/android/launcher3/util/ObjectWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;

    if-eqz v2, :cond_4d

    invoke-interface {v2, p1, p3}, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;->init(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result p1

    if-nez p1, :cond_4d

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4d
    invoke-direct {p0}, Lcom/android/launcher3/util/ActivityTracker;->clearInitCallBack()V

    invoke-virtual {v0}, Lcom/android/launcher3/util/ObjectWrapper;->clear()V

    return v1

    :cond_54
    iget-object p2, p0, Lcom/android/launcher3/util/ActivityTracker;->mInitCallBack:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_68

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;

    if-eqz p2, :cond_65

    invoke-interface {p2, p1, p3}, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;->init(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result p1

    move v2, p1

    :cond_65
    invoke-direct {p0}, Lcom/android/launcher3/util/ActivityTracker;->clearInitCallBack()V

    :cond_68
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_8e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleIntent(), handled="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasHandle="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "ActivityTracker"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    return v2
.end method

.method private isIntentToToggleBar(Lcom/android/launcher3/BaseActivity;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "back_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    invoke-static {p1, v1}, Lcom/android/common/util/IntentUtils;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "isIntentToToggleBar: state="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    if-eqz p1, :cond_21

    move-object v3, p1

    goto :goto_22

    :cond_21
    move-object v3, v2

    :goto_22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", back_action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2d

    move-object v2, v0

    :cond_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "ActivityTracker"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.launcher.action.WALLPAPER_CATEGORY_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "ToggleBar_layout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 p0, 0x1

    :cond_4c
    return p0
.end method


# virtual methods
.method public getCreatedActivity()Lcom/android/launcher3/BaseActivity;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getFirstCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getFirstCreatedActivity()Lcom/android/launcher3/BaseActivity;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mLaunchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_4f

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/BaseActivity;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BaseActivity;

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseActivity;

    return-object p0

    :cond_4f
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_53
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleCreate(Lcom/android/launcher3/BaseActivity;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mLaunchers:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_3b

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_3b

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ActivityTracker;->isIntentToToggleBar(Lcom/android/launcher3/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "QuickStep"

    const-string v2, "ActivityTracker"

    const-string v3, "handleCreate: duplicate launcher started for pc connect"

    invoke-static {v0, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/util/ActivityTracker;->handleIntent(Lcom/android/launcher3/BaseActivity;Landroid/content/Intent;Z)Z

    move-result p0

    return p0

    :cond_3b
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/util/ActivityTracker;->handleIntent(Lcom/android/launcher3/BaseActivity;Landroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method

.method public handleNewIntent(Lcom/android/launcher3/BaseActivity;Landroid/content/Intent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/util/ActivityTracker;->handleIntent(Lcom/android/launcher3/BaseActivity;Landroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method

.method public onActivityDestroyed(Lcom/android/launcher3/BaseActivity;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mLaunchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_25

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_39

    iget-object p1, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->clear()V

    invoke-direct {p0}, Lcom/android/launcher3/util/ActivityTracker;->clearInitCallBack()V

    :cond_39
    return-void
.end method

.method public registerCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback: activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "ActivityTracker"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;->init(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/ActivityTracker;->unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    goto :goto_3d

    :cond_36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mInitCallBack:Ljava/lang/ref/WeakReference;

    :cond_3d
    :goto_3d
    return-void
.end method

.method public unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "ActivityTracker"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
