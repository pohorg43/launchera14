.class Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method
