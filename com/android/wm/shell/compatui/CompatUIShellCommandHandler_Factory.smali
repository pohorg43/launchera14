.class public final Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final compatUIConfigurationProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final shellCommandHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;->shellCommandHandlerProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;->compatUIConfigurationProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;)Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            ">;)",
            "Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;-><init>(Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;
    .registers 3

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;-><init>(Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;->shellCommandHandlerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;->compatUIConfigurationProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-static {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;->newInstance(Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler_Factory;->get()Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    move-result-object p0

    return-object p0
.end method
