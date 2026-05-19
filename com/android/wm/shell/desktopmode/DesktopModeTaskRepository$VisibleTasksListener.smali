.class public interface abstract Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VisibleTasksListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$onVisibilityChanged$jd(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;IZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;->onVisibilityChanged(IZ)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(IZ)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    return-void
.end method
