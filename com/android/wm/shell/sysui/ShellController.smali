.class public Lcom/android/wm/shell/sysui/ShellController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellController"


# instance fields
.field private final mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/wm/shell/sysui/ConfigurationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExternalInterfaceSuppliers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/ExternalInterfaceBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExternalInterfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/wm/shell/common/ExternalInterfaceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

.field private final mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/wm/shell/sysui/KeyguardChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellInit:Lcom/android/wm/shell/sysui/ShellInit;

.field private final mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/wm/shell/sysui/UserChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;-><init>(Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mImpl:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellInit:Lcom/android/wm/shell/sysui/ShellInit;

    iput-object p3, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p4, p0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/quickstep/c1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/wm/shell/sysui/ShellController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/sysui/ShellController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/sysui/ShellController;->onInit()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/sysui/ShellController;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sysui/ShellController;->handleDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/sysui/ShellCommandHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/sysui/ShellController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/sysui/ShellController;->handleInit()V

    return-void
.end method

.method private handleDump(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->dump(Ljava/io/PrintWriter;)V

    const/16 p0, 0x64

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/view/SurfaceControlRegistry;->dump(IZLjava/io/PrintWriter;)V

    return-void
.end method

.method private handleInit()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/SurfaceControlRegistry;->createProcessInstance(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellInit:Lcom/android/wm/shell/sysui/ShellInit;

    invoke-virtual {p0}, Lcom/android/wm/shell/sysui/ShellInit;->init()V

    return-void
.end method

.method private onInit()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/launcher/badge/k;

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/k;-><init>(Lcom/android/wm/shell/sysui/ShellController;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/ExternalInterfaceBinder;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_INIT_enabled:Z

    if-eqz v0, :cond_23

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x6ef24c1a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 p3, 0x1

    aput-object v0, v3, p3

    const-string p3, "Adding external interface from %s with key %s"

    invoke-static {v1, v2, v4, p3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    iget-object p3, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_31

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplier with same key already exists: "

    invoke-static {p2, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUserChangeListener(Lcom/android/wm/shell/sysui/UserChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public asShell()Lcom/android/wm/shell/sysui/ShellInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mImpl:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    return-object p0
.end method

.method public createExternalInterfaces(Landroid/os/Bundle;)V
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    invoke-interface {v2}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :goto_1d
    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    iget-object v3, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_4a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/android/wm/shell/sysui/ShellController;->TAG:Ljava/lang/String;

    const-string v2, "mConfigChangeListeners="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastConfiguration="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mKeyguardChangeListeners="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUserChangeListeners="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c5

    const-string p2, "mExternalInterfaces={"

    invoke-static {v0, p2, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8d

    :cond_bf
    const-string/jumbo p0, "}"

    invoke-static {v0, p0, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_c5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_23

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mLastConfiguration:Landroid/content/res/Configuration;

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    if-eqz p0, :cond_22

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x584e0d5f

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    return-void

    :cond_23
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    if-eqz v4, :cond_3b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x18b5a389

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {v5, v6, v3, v1, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    if-eqz v4, :cond_53

    invoke-static {v0}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x7540877e

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {v5, v6, v3, v1, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_53
    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_5f

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_5d

    goto :goto_5f

    :cond_5d
    move v1, v3

    goto :goto_60

    :cond_5f
    :goto_5f
    move v1, v2

    :goto_60
    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_66

    move v4, v2

    goto :goto_67

    :cond_66
    move v4, v3

    :goto_67
    const/high16 v5, -0x80000000

    and-int/2addr v5, v0

    if-nez v5, :cond_73

    and-int/lit16 v5, v0, 0x200

    if-eqz v5, :cond_71

    goto :goto_73

    :cond_71
    move v5, v3

    goto :goto_74

    :cond_73
    :goto_73
    move v5, v2

    :goto_74
    and-int/lit8 v6, v0, 0x4

    if-nez v6, :cond_7e

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_7d

    goto :goto_7e

    :cond_7d
    move v2, v3

    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_89
    :goto_89
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz v1, :cond_9d

    invoke-interface {v0}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onDensityOrFontScaleChanged()V

    :cond_9d
    if-eqz v4, :cond_a2

    invoke-interface {v0}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onSmallestScreenWidthChanged()V

    :cond_a2
    if-eqz v5, :cond_a7

    invoke-interface {v0}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onThemeChanged()V

    :cond_a7
    if-eqz v2, :cond_89

    invoke-interface {v0}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onLocaleOrLayoutDirectionChanged()V

    goto :goto_89

    :cond_ad
    return-void
.end method

.method public onKeyguardDismissAnimationFinished()V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x2578d56f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sysui/KeyguardChangeListener;

    invoke-interface {v0}, Lcom/android/wm/shell/sysui/KeyguardChangeListener;->onKeyguardDismissAnimationFinished()V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .registers 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x73b5279c

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sysui/KeyguardChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/wm/shell/sysui/KeyguardChangeListener;->onKeyguardVisibilityChanged(ZZZ)V

    goto :goto_2d

    :cond_3d
    return-void
.end method

.method public onUserChanged(ILandroid/content/Context;)V
    .registers 11
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    if-eqz v0, :cond_18

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x4f4a2bf3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sysui/UserChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/sysui/UserChangeListener;->onUserChanged(ILandroid/content/Context;)V

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public onUserProfilesChanged(Ljava/util/List;)V
    .registers 6
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0xb1c5c7c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sysui/UserChangeListener;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/sysui/UserChangeListener;->onUserProfilesChanged(Ljava/util/List;)V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public removeConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeUserChangeListener(Lcom/android/wm/shell/sysui/UserChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
