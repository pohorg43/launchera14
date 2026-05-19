.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$subscribeIconRunningTaskChangedListener$1;
.super Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$subscribeIconRunningTaskChangedListener$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onShouldCloseOverlayWindow()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$subscribeIconRunningTaskChangedListener$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$subscribeIconRunningTaskChangedListener$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->hideImmediately()V

    :cond_f
    return-void
.end method
