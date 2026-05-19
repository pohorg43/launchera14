.class public final synthetic Lcom/android/wm/shell/sysui/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ZZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/f;->a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/sysui/f;->b:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/sysui/f;->c:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/sysui/f;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/sysui/f;->a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iget-boolean v1, p0, Lcom/android/wm/shell/sysui/f;->b:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/sysui/f;->c:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/sysui/f;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->f(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ZZZ)V

    return-void
.end method
