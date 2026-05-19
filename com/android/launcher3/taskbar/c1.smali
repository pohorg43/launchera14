.class public final synthetic Lcom/android/launcher3/taskbar/c1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/c1;->a:Lcom/android/launcher3/taskbar/TaskbarManager;

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/taskbar/c1;->a:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarManager;->a(Lcom/android/launcher3/taskbar/TaskbarManager;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void
.end method
