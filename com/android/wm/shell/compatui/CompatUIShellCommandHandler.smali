.class public final Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# annotations
.annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
.end annotation


# instance fields
.field private final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    return-void
.end method

.method private static invokeOrError(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->strToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_d

    const-string p0, "Error: expected true, 1, false, 0."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_d
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static strToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_44

    goto :goto_38

    :sswitch_c
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_38

    :cond_15
    const/4 v1, 0x3

    goto :goto_38

    :sswitch_17
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_38

    :cond_21
    const/4 v1, 0x2

    goto :goto_38

    :sswitch_23
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_38

    :cond_2c
    const/4 v1, 0x1

    goto :goto_38

    :sswitch_2e
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    packed-switch v1, :pswitch_data_56

    const/4 p0, 0x0

    return-object p0

    :pswitch_3d  #0x1, 0x2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_40  #0x0, 0x3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    nop

    :sswitch_data_44
    .sparse-switch
        0x30 -> :sswitch_2e
        0x31 -> :sswitch_23
        0x36758e -> :sswitch_17
        0x5cb1923 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_40  #00000000
        :pswitch_3d  #00000001
        :pswitch_3d  #00000002
        :pswitch_40  #00000003
    .end packed-switch
.end method


# virtual methods
.method public onInit()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    const-string v1, "compatui"

    invoke-virtual {v0, v1, p0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    return-void
.end method

.method public onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 8

    array-length v0, p1

    const-string v1, "Invalid command: "

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_18
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "reachabilityEducationEnabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_52

    const-string/jumbo v3, "restartDialogEnabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_41
    aget-object p1, p1, v4

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/common/util/m;

    invoke-direct {v0, p0}, Lcom/android/common/util/m;-><init>(Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    invoke-static {p1, p2, v0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->invokeOrError(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0

    :cond_52
    aget-object p1, p1, v4

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/g;

    invoke-direct {v0, p0}, Lcom/android/launcher3/g;-><init>(Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    invoke-static {p1, p2, v0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->invokeOrError(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "restartDialogEnabled [0|false|1|true]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Enable/Disable the restart education dialog for Size Compat Mode"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reachabilityEducationEnabled [0|false|1|true]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Enable/Disable the restart education dialog for letterbox reachability"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  Disable the restart education dialog for letterbox reachability"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
