.class public final synthetic Lcom/android/wm/shell/splitscreen/k2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/k2;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/k2;->a:Landroid/os/IBinder;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->i(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method
