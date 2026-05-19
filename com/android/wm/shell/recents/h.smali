.class public final synthetic Lcom/android/wm/shell/recents/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# instance fields
.field public final synthetic a:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/h;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/recents/h;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Lcom/android/wm/shell/recents/IRecentTasksListener;

    invoke-static {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->a(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    return-void
.end method
