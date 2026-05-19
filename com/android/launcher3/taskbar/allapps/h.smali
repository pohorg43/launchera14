.class public final synthetic Lcom/android/launcher3/taskbar/allapps/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/h;->a:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    return-void
.end method


# virtual methods
.method public final onSlideInViewClosed()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/h;->a:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->a(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V

    return-void
.end method
