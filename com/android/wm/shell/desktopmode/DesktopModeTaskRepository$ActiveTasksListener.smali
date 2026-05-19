.class public interface abstract Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActiveTasksListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$onActiveTasksChanged$jd(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;->onActiveTasksChanged(I)V

    return-void
.end method


# virtual methods
.method public onActiveTasksChanged(I)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    return-void
.end method
