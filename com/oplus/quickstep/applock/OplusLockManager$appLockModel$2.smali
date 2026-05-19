.class final Lcom/oplus/quickstep/applock/OplusLockManager$appLockModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/applock/OplusLockManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/quickstep/applock/IAppLockDataHandler;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusLockManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusLockManager.kt\ncom/oplus/quickstep/applock/OplusLockManager$appLockModel$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,697:1\n1#2:698\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/applock/OplusLockManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/applock/OplusLockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockManager$appLockModel$2;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/quickstep/applock/IAppLockDataHandler;
    .registers 6

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager$appLockModel$2;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    aput-object v2, v0, v1

    new-instance v1, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;

    new-instance v2, Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-direct {v2}, Lcom/oplus/quickstep/applock/AppLockModel;-><init>()V

    const-wide/16 v3, 0x3e8

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/quickstep/utils/SynchronizeInvocationHandler;-><init>(Ljava/lang/Object;J)V

    invoke-static {p0, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    check-cast p0, Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    goto :goto_2b

    :cond_2a
    move-object p0, v1

    :goto_2b
    if-eqz p0, :cond_31

    invoke-interface {p0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->initData()V

    move-object v1, p0

    :cond_31
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$appLockModel$2;->invoke()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    return-object p0
.end method
