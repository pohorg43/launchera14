.class public final synthetic Lcom/android/wm/shell/sysui/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/d;->a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/sysui/d;->a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    invoke-static {p0}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->b(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;)V

    return-void
.end method
