.class public final Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final contextProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
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
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;->mainExecutorProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;)Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;-><init>(Lg4/a;Lg4/a;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/compatui/CompatUIConfiguration;
    .registers 3

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/compatui/CompatUIConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;->mainExecutorProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;->newInstance(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration_Factory;->get()Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    move-result-object p0

    return-object p0
.end method
