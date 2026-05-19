.class public final synthetic Lcom/android/wm/shell/recents/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:[[Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>([[Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/e;->a:[[Landroid/app/ActivityManager$RunningTaskInfo;

    iput p2, p0, Lcom/android/wm/shell/recents/e;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/e;->a:[[Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Lcom/android/wm/shell/recents/e;->b:I

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->g([[Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method
