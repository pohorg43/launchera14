.class public final Lcom/android/wm/shell/sysui/ShellCommandHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellCommandHandler"


# instance fields
.field private final mCommands:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mDumpables:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mDumpables:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mCommands:Ljava/util/TreeMap;

    return-void
.end method

.method private runHelp(Ljava/io/PrintWriter;)Z
    .registers 5

    const-string v0, "Window Manager Shell commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mCommands:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "  "

    invoke-static {v2, v1, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mCommands:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;

    const-string v2, "    "

    invoke-interface {v1, p1, v2}, Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_f

    :cond_2e
    const-string p0, "  help"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      Print this help text."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  <no arguments provided>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Dump all Window Manager Shell internal state"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;",
            "TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mCommands:Ljava/util/TreeMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_INIT_enabled:Z

    if-eqz p0, :cond_28

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p3, 0x21dc719a

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "Adding command class %s for %s"

    invoke-static {p2, p3, v1, p0, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            ">;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mDumpables:Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_INIT_enabled:Z

    if-eqz p0, :cond_29

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, -0x366eab80  # -1190544.0f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Adding dump callback for %s"

    invoke-static {p1, p2, v1, p0, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mDumpables:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mDumpables:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/BiConsumer;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    :cond_27
    return-void
.end method

.method public handleCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 9

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "help"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-direct {p0, p2}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->runHelp(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    :cond_1a
    iget-object v4, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mCommands:Ljava/util/TreeMap;

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    :cond_23
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mCommands:Ljava/util/TreeMap;

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;

    array-length v1, p1

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;->onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    return v0
.end method
