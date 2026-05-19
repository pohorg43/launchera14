.class public final synthetic Lcom/android/wm/shell/recents/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/app/PendingIntent;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Landroid/app/IApplicationThread;

.field public final synthetic e:Landroid/view/IRecentsAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/a;->a:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/wm/shell/recents/a;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/wm/shell/recents/a;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/wm/shell/recents/a;->d:Landroid/app/IApplicationThread;

    iput-object p5, p0, Lcom/android/wm/shell/recents/a;->e:Landroid/view/IRecentsAnimationRunner;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/recents/a;->a:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/wm/shell/recents/a;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/wm/shell/recents/a;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/wm/shell/recents/a;->d:Landroid/app/IApplicationThread;

    iget-object v4, p0, Lcom/android/wm/shell/recents/a;->e:Landroid/view/IRecentsAnimationRunner;

    move-object v5, p1

    check-cast v5, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->f(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method
