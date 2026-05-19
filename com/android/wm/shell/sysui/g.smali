.class public final synthetic Lcom/android/wm/shell/sysui/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

.field public final synthetic b:[Z

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/g;->a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iput-object p2, p0, Lcom/android/wm/shell/sysui/g;->b:[Z

    iput-object p3, p0, Lcom/android/wm/shell/sysui/g;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/wm/shell/sysui/g;->d:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/sysui/g;->a:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iget-object v1, p0, Lcom/android/wm/shell/sysui/g;->b:[Z

    iget-object v2, p0, Lcom/android/wm/shell/sysui/g;->c:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/sysui/g;->d:Ljava/io/PrintWriter;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->d(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method
