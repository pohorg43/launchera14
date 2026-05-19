.class public final synthetic Lcom/android/launcher3/taskbar/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/d1;->a:Lcom/android/launcher3/taskbar/TaskbarManager;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/d1;->a:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->b(Lcom/android/launcher3/taskbar/TaskbarManager;Z)V

    return-void
.end method
