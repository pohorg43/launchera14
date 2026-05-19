.class public Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# instance fields
.field private final mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-void
.end method

.method private runMoveToSideStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    const-string p0, "Error: task id should be provided as arguments"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_b
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-direct {p2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_27

    new-instance v1, Ljava/lang/Integer;

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_28

    :cond_27
    move p1, v0

    :goto_28
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveToSideStage(II)Z

    return v0
.end method

.method private runRemoveFromSideStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const-string p0, "Error: task id should be provided as arguments"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_b
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->removeFromSideStage(I)Z

    return v0
.end method

.method private runSetSideStagePosition([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const-string p0, "Error: side stage position should be provided as arguments"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_b
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSideStagePosition(I)V

    return v0
.end method


# virtual methods
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

    sparse-switch v4, :sswitch_data_70

    goto :goto_42

    :sswitch_13
    const-string/jumbo v4, "splitConfig"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_42

    :cond_1d
    const/4 v3, 0x3

    goto :goto_42

    :sswitch_1f
    const-string/jumbo v4, "setSideStagePosition"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_42

    :cond_29
    const/4 v3, 0x2

    goto :goto_42

    :sswitch_2b
    const-string/jumbo v4, "removeFromSideStage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_42

    :cond_35
    const/4 v3, 0x1

    goto :goto_42

    :sswitch_37
    const-string/jumbo v4, "moveToSideStage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    packed-switch v3, :pswitch_data_82

    const-string p0, "Invalid command: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :pswitch_58  #0x3
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getInstance()Lcom/oplus/splitscreen/SplitScreenAppConfig;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return v2

    :pswitch_60  #0x2
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->runSetSideStagePosition([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    :pswitch_65  #0x1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->runRemoveFromSideStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    :pswitch_6a  #0x0
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->runMoveToSideStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_70
    .sparse-switch
        -0x56f90e5 -> :sswitch_37
        0x119de939 -> :sswitch_2b
        0x5abe6dee -> :sswitch_1f
        0x5c0f4efc -> :sswitch_13
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6a  #00000000
        :pswitch_65  #00000001
        :pswitch_60  #00000002
        :pswitch_58  #00000003
    .end packed-switch
.end method

.method public printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "moveToSideStage <taskId> <SideStagePosition>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Move a task with given id in split-screen mode."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "removeFromSideStage <taskId>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Remove a task with given id in split-screen mode."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setSideStagePosition <SideStagePosition>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  Sets the position of the side-stage."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
