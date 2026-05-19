.class public final synthetic Lcom/android/wm/shell/sysui/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ILandroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/e;->a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iput p2, p0, Lcom/android/wm/shell/sysui/e;->b:I

    iput-object p3, p0, Lcom/android/wm/shell/sysui/e;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/sysui/e;->a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iget v1, p0, Lcom/android/wm/shell/sysui/e;->b:I

    iget-object p0, p0, Lcom/android/wm/shell/sysui/e;->c:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->g(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;ILandroid/content/Context;)V

    return-void
.end method
