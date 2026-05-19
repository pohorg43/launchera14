.class public final synthetic Lcom/android/launcher3/taskbar/t0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarEduController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/t0;->a:Lcom/android/launcher3/taskbar/TaskbarEduController;

    return-void
.end method


# virtual methods
.method public final onSlideInViewClosed()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/t0;->a:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->a(Lcom/android/launcher3/taskbar/TaskbarEduController;)V

    return-void
.end method
