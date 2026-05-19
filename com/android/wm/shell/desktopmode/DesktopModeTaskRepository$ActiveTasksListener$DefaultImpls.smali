.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onActiveTasksChanged(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;->access$onActiveTasksChanged$jd(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;I)V

    return-void
.end method
