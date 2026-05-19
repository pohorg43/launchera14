.class public final synthetic Lcom/android/launcher3/taskbar/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/w0;->a:Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/w0;->a:Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->c(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;Landroid/view/View;)V

    return-void
.end method
