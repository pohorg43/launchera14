.class public final synthetic Lcom/android/wm/shell/compatui/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

.field public final synthetic b:Landroid/app/TaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;Landroid/app/TaskInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/c0;->a:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/c0;->b:Landroid/app/TaskInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/c0;->a:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/c0;->b:Landroid/app/TaskInfo;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->g(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;Landroid/app/TaskInfo;Ljava/lang/Boolean;)V

    return-void
.end method
