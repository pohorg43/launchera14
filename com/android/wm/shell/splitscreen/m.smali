.class public final synthetic Lcom/android/wm/shell/splitscreen/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/app/PendingIntent;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/m;->a:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/m;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/m;->a:Landroid/app/PendingIntent;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/m;->b:I

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->a(Landroid/app/PendingIntent;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    return-object p0
.end method
