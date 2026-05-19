.class public final synthetic Lcom/android/wm/shell/desktopmode/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/a;->a:Ljava/util/List;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->b(Ljava/util/List;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    return p0
.end method
