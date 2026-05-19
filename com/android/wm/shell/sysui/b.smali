.class public final synthetic Lcom/android/wm/shell/sysui/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/sysui/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/b;->b:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iput-object p2, p0, Lcom/android/wm/shell/sysui/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/sysui/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/b;->b:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iput-object p2, p0, Lcom/android/wm/shell/sysui/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/sysui/b;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/sysui/b;->b:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iget-object p0, p0, Lcom/android/wm/shell/sysui/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/PrintWriter;

    invoke-static {v0, p0}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->i(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Ljava/io/PrintWriter;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/wm/shell/sysui/b;->b:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iget-object p0, p0, Lcom/android/wm/shell/sysui/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->h(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
