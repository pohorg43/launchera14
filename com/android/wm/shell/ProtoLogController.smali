.class public Lcom/android/wm/shell/ProtoLogController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# instance fields
.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/c1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/wm/shell/ProtoLogController;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/wm/shell/ProtoLogController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    return-void
.end method


# virtual methods
.method public onInit()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    const-string/jumbo v1, "protolog"

    invoke-virtual {v0, v1, p0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    return-void
.end method

.method public onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_126

    goto/16 :goto_6f

    :sswitch_14
    const-string v4, "disable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_6f

    :cond_1d
    const/4 v3, 0x7

    goto :goto_6f

    :sswitch_1f
    const-string/jumbo v4, "start"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_6f

    :cond_29
    const/4 v3, 0x6

    goto :goto_6f

    :sswitch_2b
    const-string/jumbo v4, "stop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_6f

    :cond_35
    const/4 v3, 0x5

    goto :goto_6f

    :sswitch_37
    const-string/jumbo v4, "save-for-bugreport"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_6f

    :cond_41
    const/4 v3, 0x4

    goto :goto_6f

    :sswitch_43
    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_6f

    :cond_4d
    const/4 v3, 0x3

    goto :goto_6f

    :sswitch_4f
    const-string v4, "disable-text"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_6f

    :cond_58
    const/4 v3, 0x2

    goto :goto_6f

    :sswitch_5a
    const-string v4, "enable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    goto :goto_6f

    :cond_63
    const/4 v3, 0x1

    goto :goto_6f

    :sswitch_65
    const-string v4, "enable-text"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v3, 0x0

    :goto_6f
    packed-switch v3, :pswitch_data_148

    const-string v1, "Invalid command: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/ProtoLogController;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v0

    :pswitch_8a  #0x7
    array-length v1, p1

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->stopTextLogging([Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    if-nez p0, :cond_9a

    move v0, v2

    :cond_9a
    return v0

    :pswitch_9b  #0x6
    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p0, p2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    return v2

    :pswitch_a1  #0x5
    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    return v2

    :pswitch_a7  #0x4
    iget-object p1, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    move-result p1

    if-nez p1, :cond_b5

    const-string p0, "Logging to proto is not enabled for WMShell."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_b5
    iget-object p1, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p1, p2, v2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p0, p2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    return v2

    :pswitch_c0  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->getStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_ca  #0x2
    array-length v1, p1

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->stopTextLogging([Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    if-nez p0, :cond_ee

    const-string p0, "Stopping logging on groups: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_ee
    return v0

    :pswitch_ef  #0x1
    array-length v1, p1

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->startTextLogging([Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    if-nez p0, :cond_ff

    move v0, v2

    :cond_ff
    return v0

    :pswitch_100  #0x0
    array-length v1, p1

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->startTextLogging([Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    if-nez p0, :cond_124

    const-string p0, "Starting logging on groups: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_124
    return v0

    nop

    :sswitch_data_126
    .sparse-switch
        -0x57eac4c9 -> :sswitch_65
        -0x4d6ada7d -> :sswitch_5a
        -0x3d842b0e -> :sswitch_4f
        -0x3532300e -> :sswitch_43
        -0x174ab7ac -> :sswitch_37
        0x360802 -> :sswitch_2b
        0x68ac462 -> :sswitch_1f
        0x639e22e8 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_100  #00000000
        :pswitch_ef  #00000001
        :pswitch_ca  #00000002
        :pswitch_c0  #00000003
        :pswitch_a7  #00000004
        :pswitch_a1  #00000005
        :pswitch_9b  #00000006
        :pswitch_8a  #00000007
    .end packed-switch
.end method

.method public printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Get current ProtoLog status."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Start proto logging."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stop"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Stop proto logging and flush to file."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "enable [group...]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Enable proto logging for given groups."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "disable [group...]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Disable proto logging for given groups."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "enable-text [group...]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Enable logcat logging for given groups."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "disable-text [group...]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Disable logcat logging for given groups."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "save-for-bugreport"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  Flush proto logging to file, only if it\'s enabled."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
