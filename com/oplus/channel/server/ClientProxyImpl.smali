.class public final Lcom/oplus/channel/server/ClientProxyImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/channel/server/ClientProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/ClientProxyImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 F2\u00020\u0001:\u0001FB+\u0012\u0006\u0010$\u001a\u00020\u000f\u0012\u0006\u0010\'\u001a\u00020&\u0012\u0006\u0010*\u001a\u00020)\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010,¢\u0006\u0004\bD\u0010EJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\"\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J*\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016JP\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0011j\b\u0012\u0004\u0012\u00020\t`\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016JJ\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\t2\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0011j\b\u0012\u0004\u0012\u00020\t`\u00122\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J.\u0010\u001a\u001a\u00020\u00042\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0011j\b\u0012\u0004\u0012\u00020\t`\u00122\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J8\u0010\u001b\u001a\u00020\u00042\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0011j\b\u0012\u0004\u0012\u00020\t`\u00122\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016JJ\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\t2\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0011j\b\u0012\u0004\u0012\u00020\t`\u00122\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00020\u001dH\u0016J\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020\u001dH\u0016J\u0018\u0010\"\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\tH\u0016J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0016\u0010$\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010\'\u001a\u00020&8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\'\u0010(R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010-\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u0010/\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010%R\u001c\u00101\u001a\b\u0012\u0004\u0012\u00020\u0002008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R8\u00104\u001a$\u0012\u0004\u0012\u00020\u000f\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0011j\b\u0012\u0004\u0012\u00020\t`\u0012038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R8\u00106\u001a$\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0011j\b\u0012\u0004\u0012\u00020\t`\u0012\u0012\u0004\u0012\u00020\u000f038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00105R8\u00107\u001a$\u0012\u0004\u0012\u00020\u000f\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0011j\b\u0012\u0004\u0012\u00020\t`\u0012038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00105R\"\u00109\u001a\b\u0012\u0004\u0012\u00020\u000f088\u0002@\u0002X\u0082\u0004¢\u0006\f\n\u0004\b9\u0010:\u0012\u0004\b;\u0010<R\u0016\u0010>\u001a\u00020=8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u001e\u0010B\u001a\n A*\u0004\u0018\u00010@0@8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006G"
    }
    d2 = {
        "Lcom/oplus/channel/server/ClientProxyImpl;",
        "Lcom/oplus/channel/server/ClientProxy;",
        "Lcom/oplus/channel/server/data/Command;",
        "cmd",
        "Lh4/z;",
        "pushCommand",
        "",
        "shouldForceFetch",
        "encodeCommandsIfNeed",
        "",
        "requestData",
        "",
        "businessTag",
        "request",
        "shouldNotify",
        "",
        "requestSeqId",
        "Lkotlin/Function1;",
        "Lcom/oplus/channel/server/Callback;",
        "callback",
        "",
        "timeOut",
        "requestOnce",
        "observeResStr",
        "params",
        "observe",
        "unObserve",
        "stopObserve",
        "replaceObserve",
        "",
        "pullCommand",
        "getCommandList",
        "callbackId",
        "data",
        "runCallback",
        "destroy",
        "businessName",
        "Ljava/lang/String;",
        "Lcom/oplus/channel/server/IClientPuller;",
        "clientPuller",
        "Lcom/oplus/channel/server/IClientPuller;",
        "Lcom/oplus/channel/server/ClientConfig;",
        "clientConfig",
        "Lcom/oplus/channel/server/ClientConfig;",
        "Lcom/oplus/channel/server/ICommandHandler;",
        "commandHandler",
        "Lcom/oplus/channel/server/ICommandHandler;",
        "tag",
        "",
        "commandList",
        "Ljava/util/List;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "observeMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "researchObserveMap",
        "requestOnceCallbackMap",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "commandBlockingQueue",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "getCommandBlockingQueue$annotations",
        "()V",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/util/concurrent/locks/Condition;",
        "kotlin.jvm.PlatformType",
        "condition",
        "Ljava/util/concurrent/locks/Condition;",
        "<init>",
        "(Ljava/lang/String;Lcom/oplus/channel/server/IClientPuller;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;)V",
        "Companion",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/channel/server/ClientProxyImpl$Companion;

.field private static final TIMEOUT_OPERATION:J = 0x2L


# instance fields
.field private final businessName:Ljava/lang/String;

.field private final clientConfig:Lcom/oplus/channel/server/ClientConfig;

.field private final clientPuller:Lcom/oplus/channel/server/IClientPuller;

.field private final commandBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final commandHandler:Lcom/oplus/channel/server/ICommandHandler;

.field private final commandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final observeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private final requestOnceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private final researchObserveMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lh4/z;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/ClientProxyImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/ClientProxyImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/ClientProxyImpl;->Companion:Lcom/oplus/channel/server/ClientProxyImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/channel/server/IClientPuller;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;)V
    .registers 6

    const-string v0, "businessName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientPuller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->businessName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    iput-object p3, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    iput-object p4, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandHandler:Lcom/oplus/channel/server/ICommandHandler;

    const-string p2, ""

    iput-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->researchObserveMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->requestOnceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ClientProxyImpl("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/oplus/channel/server/IClientPuller;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/channel/server/ClientProxyImpl;-><init>(Ljava/lang/String;Lcom/oplus/channel/server/IClientPuller;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/channel/server/ClientProxyImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->requestOnce$lambda-1(Lcom/oplus/channel/server/ClientProxyImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->replaceObserve$lambda-6(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->unObserve$lambda-3(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;[B)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->runCallback$lambda-14$lambda-13(Lkotlin/jvm/functions/Function1;[B)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;[B)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->runCallback$lambda-12$lambda-11(Lkotlin/jvm/functions/Function1;[B)V

    return-void
.end method

.method private final encodeCommandsIfNeed(Z)V
    .registers 4

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/oplus/channel/server/ClientProxyImpl;->pullCommand()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/oplus/channel/server/data/CommandDataManager;->INSTANCE:Lcom/oplus/channel/server/data/CommandDataManager;

    invoke-virtual {v0, p1}, Lcom/oplus/channel/server/data/CommandDataManager;->encodeCommandData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-interface {p0}, Lcom/oplus/channel/server/IClientPuller;->getClientName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, v1}, Lcom/oplus/channel/server/data/CommandDataManager;->cacheCommandData(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    :cond_1d
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->stopObserve$lambda-4(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/oplus/channel/server/data/Command;)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/channel/server/ClientProxyImpl;->pullCommand$lambda-9(Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0
.end method

.method private static synthetic getCommandBlockingQueue$annotations()V
    .registers 0

    return-void
.end method

.method private static final pullCommand$lambda-9(Lcom/oplus/channel/server/data/Command;)Z
    .registers 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/channel/server/data/Command;->getMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/oplus/channel/server/data/Command;->getMethodType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private final pushCommand(Lcom/oplus/channel/server/data/Command;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b7

    xor-int/lit8 v0, v0, 0x1

    const-string v1, ", this="

    if-eqz v0, :cond_50

    :try_start_11
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushCommand: await, commandBlockingQueue.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    iget-object v2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    if-nez v0, :cond_5

    :cond_50
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushCommand: cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/channel/server/data/Command;->getMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_85

    invoke-virtual {p1}, Lcom/oplus/channel/server/data/Command;->getMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7f

    goto :goto_85

    :cond_7f
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/channel/server/data/Command;

    invoke-virtual {v2}, Lcom/oplus/channel/server/data/Command;->getCallbackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/channel/server/data/Command;->getCallbackId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_a8

    :cond_a7
    const/4 v1, 0x0

    :goto_a8
    check-cast v1, Lcom/oplus/channel/server/data/Command;

    if-nez v1, :cond_b1

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catchall {:try_start_11 .. :try_end_b1} :catchall_b7

    :cond_b1
    :goto_b1
    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_b7
    move-exception p1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private static final replaceObserve$lambda-6(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z
    .registers 3

    const-string v0, "$observeResStr"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/channel/server/data/Command;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final requestOnce$lambda-1(Lcom/oplus/channel/server/ClientProxyImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$seqId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v2, "requestOnce, timeout! delete "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->requestOnceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final runCallback$lambda-12$lambda-11(Lkotlin/jvm/functions/Function1;[B)V
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final runCallback$lambda-14$lambda-13(Lkotlin/jvm/functions/Function1;[B)V
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final stopObserve$lambda-4(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/channel/server/data/Command;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final unObserve$lambda-3(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/channel/server/data/Command;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy(Z)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    const-string v1, "destroy, shouldForceFetch="

    const-string v2, ", this="

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1d
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->researchObserveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_3f

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->encodeCommandsIfNeed(Z)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-interface {v0, p1}, Lcom/oplus/channel/server/IClientPuller;->pullClient(Z)Z

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-interface {p0}, Lcom/oplus/channel/server/IClientPuller;->destroy()V

    return-void

    :catchall_3f
    move-exception p1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getCommandList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    return-object p0
.end method

.method public observe(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lh4/z;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "observeResStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_f
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observe: observeResStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", businessTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/channel/server/data/Command;

    invoke-virtual {v2}, Lcom/oplus/channel/server/data/Command;->getCallbackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    check-cast v1, Lcom/oplus/channel/server/data/Command;

    if-nez v1, :cond_65

    new-instance v0, Lcom/oplus/channel/server/data/Command;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p5}, Lcom/oplus/channel/server/data/Command;-><init>(ILjava/lang/String;[BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/oplus/channel/server/ClientProxyImpl;->pushCommand(Lcom/oplus/channel/server/data/Command;)V

    :cond_65
    iget-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->researchObserveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_f .. :try_end_6f} :catchall_7d

    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p4}, Lcom/oplus/channel/server/ClientProxyImpl;->encodeCommandsIfNeed(Z)V

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-interface {p0, p4}, Lcom/oplus/channel/server/IClientPuller;->pullClient(Z)Z

    return-void

    :catchall_7d
    move-exception p1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public pullCommand()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/channel/server/data/Command;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_26
    invoke-static {v1}, Li4/v;->j0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    sget-object v2, Lcom/oplus/channel/server/b;->a:Lcom/oplus/channel/server/b;

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullCommand: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", commandBlockingQueue.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_79

    iget-object v1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandHandler:Lcom/oplus/channel/server/ICommandHandler;

    if-nez p0, :cond_75

    goto :goto_78

    :cond_75
    invoke-interface {p0, v0}, Lcom/oplus/channel/server/ICommandHandler;->handlePullCommand(Ljava/util/List;)V

    :goto_78
    return-object v0

    :catchall_79
    move-exception v0

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public replaceObserve(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lh4/z;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "observeResStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_f
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/channel/server/data/Command;

    invoke-virtual {v2}, Lcom/oplus/channel/server/data/Command;->getCallbackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    check-cast v1, Lcom/oplus/channel/server/data/Command;

    if-eqz v1, :cond_57

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    const-string v1, "replaceObserve, delete old callbackId when replaceObserve, observeResStr: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    new-instance v1, Lcom/android/wm/shell/bubbles/i0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/wm/shell/bubbles/i0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_57

    iget-object v1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->researchObserveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    new-instance v0, Lcom/oplus/channel/server/data/Command;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2, p5}, Lcom/oplus/channel/server/data/Command;-><init>(ILjava/lang/String;[BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/oplus/channel/server/ClientProxyImpl;->pushCommand(Lcom/oplus/channel/server/data/Command;)V

    iget-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->researchObserveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_f .. :try_end_6a} :catchall_78

    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p4}, Lcom/oplus/channel/server/ClientProxyImpl;->encodeCommandsIfNeed(Z)V

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-interface {p0, p4}, Lcom/oplus/channel/server/IClientPuller;->pullClient(Z)Z

    return-void

    :catchall_78
    move-exception p1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public request([BZLjava/lang/Object;)V
    .registers 5

    const-string v0, "requestData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/channel/server/ClientProxyImpl;->request([BZLjava/lang/Object;Z)V

    return-void
.end method

.method public request([BZLjava/lang/Object;Z)V
    .registers 8

    const-string v0, "requestData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request, businessTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", shouldForceFetch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", shouldNotify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/channel/server/data/Command;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2, p1, p3}, Lcom/oplus/channel/server/data/Command;-><init>(ILjava/lang/String;[BLjava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandHandler:Lcom/oplus/channel/server/ICommandHandler;

    if-eqz v1, :cond_50

    iget-object v2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/oplus/channel/server/ICommandHandler;->shouldFilterRequest(Ljava/util/List;Lcom/oplus/channel/server/data/Command;)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_50
    invoke-direct {p0, v0}, Lcom/oplus/channel/server/ClientProxyImpl;->pushCommand(Lcom/oplus/channel/server/data/Command;)V

    iget-object v1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandHandler:Lcom/oplus/channel/server/ICommandHandler;

    if-nez v1, :cond_58

    goto :goto_5d

    :cond_58
    iget-object v2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/oplus/channel/server/ICommandHandler;->handleAddCommand(Ljava/util/List;Lcom/oplus/channel/server/data/Command;)V
    :try_end_5d
    .catchall {:try_start_a .. :try_end_5d} :catchall_7d

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p3, :cond_65

    goto :goto_70

    :cond_65
    sget-object p3, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/oplus/channel/server/statistics/PullDataManager;->bindWidgetCodeAndClientPuller([BLjava/lang/String;)V

    :goto_70
    if-nez p2, :cond_74

    if-eqz p4, :cond_7c

    :cond_74
    invoke-direct {p0, p2}, Lcom/oplus/channel/server/ClientProxyImpl;->encodeCommandsIfNeed(Z)V

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-interface {p0, p2}, Lcom/oplus/channel/server/IClientPuller;->pullClient(Z)Z

    :cond_7c
    return-void

    :catchall_7d
    move-exception p1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public requestOnce(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;JZLjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lh4/z;",
            ">;JZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "requestSeqId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_14
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOnce, businessTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", shouldForceFetch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v1, "default"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    const-string p1, "SEQ_ID_"

    sget-object v1, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    invoke-virtual {v1}, Lcom/oplus/channel/server/ServerChannel;->getSeqInt()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_63
    new-instance p1, Lcom/oplus/channel/server/data/Command;

    const/4 v1, 0x1

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p1, v1, v2, p2, p7}, Lcom/oplus/channel/server/data/Command;-><init>(ILjava/lang/String;[BLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->pushCommand(Lcom/oplus/channel/server/data/Command;)V

    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->requestOnceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-lez p1, :cond_8b

    sget-object p1, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;->getInstance()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/oplus/channel/server/ClientProxyImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p2, p4, p5}, Lcom/oplus/channel/server/utils/WorkHandler;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_8b
    .catchall {:try_start_14 .. :try_end_8b} :catchall_99

    :cond_8b
    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p6}, Lcom/oplus/channel/server/ClientProxyImpl;->encodeCommandsIfNeed(Z)V

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-interface {p0, p6}, Lcom/oplus/channel/server/IClientPuller;->pullClient(Z)Z

    return-void

    :catchall_99
    move-exception p1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public runCallback(Ljava/lang/String;[B)V
    .registers 8

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_f
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    iget-object v2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runCallback, callbackId = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], isOnceCallback = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v2}, Lcom/oplus/channel/server/ClientConfig;->isHost()Z

    move-result v2

    if-nez v2, :cond_53

    sget-object v2, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-virtual {v2, p1}, Lcom/oplus/channel/server/statistics/PullDataManager;->receiveUIDataState(Ljava/lang/String;)V

    :cond_53
    if-nez v1, :cond_85

    if-nez v0, :cond_59

    const/4 v0, 0x0

    goto :goto_67

    :cond_59
    sget-object v1, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    invoke-virtual {v1}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;->getInstance()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/animation/c;

    invoke-direct {v2, v0, p2}, Lcom/android/wm/shell/animation/c;-><init>(Lkotlin/jvm/functions/Function1;[B)V

    invoke-virtual {v1, v2}, Lcom/oplus/channel/server/utils/WorkHandler;->post(Ljava/lang/Runnable;)V

    :goto_67
    if-nez v0, :cond_b9

    iget-object p2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runCallback, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callback is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    :cond_85
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->requestOnceCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runCallback, onceFunction = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_ab

    goto :goto_b9

    :cond_ab
    sget-object v0, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;->getInstance()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lkotlin/jvm/functions/Function1;[B)V

    invoke-virtual {v0, v1}, Lcom/oplus/channel/server/utils/WorkHandler;->post(Ljava/lang/Runnable;)V
    :try_end_b9
    .catchall {:try_start_f .. :try_end_b9} :catchall_bf

    :cond_b9
    :goto_b9
    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_bf
    move-exception p1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public stopObserve(Lkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lh4/z;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->researchObserveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    const-string p2, "stopObserve, error in remove observe, already unObserve this callback?"

    invoke-static {p1, p2}, Lcom/oplus/channel/server/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_7c

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/folder/i;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/folder/i;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v7, Lcom/oplus/channel/server/data/Command;

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/oplus/channel/server/data/Command;-><init>(ILjava/lang/String;[BLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v7}, Lcom/oplus/channel/server/ClientProxyImpl;->pushCommand(Lcom/oplus/channel/server/data/Command;)V

    iget-object p3, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopObserve: observeStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", observeMap = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", commandList = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_21 .. :try_end_6e} :catchall_7c

    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p2}, Lcom/oplus/channel/server/ClientProxyImpl;->encodeCommandsIfNeed(Z)V

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-interface {p0, p2}, Lcom/oplus/channel/server/IClientPuller;->pullClient(Z)Z

    return-void

    :catchall_7c
    move-exception p1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public unObserve(Lkotlin/jvm/functions/Function1;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lh4/z;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->researchObserveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    const-string p2, "unObserve, error in remove observe, already unObserve this callback?"

    invoke-static {p1, p2}, Lcom/oplus/channel/server/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_84

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    new-instance v1, Lcom/oplus/channel/server/a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/oplus/channel/server/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unObserve: observeStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", observeMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->observeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", commandList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_76

    iget-object v0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->commandBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_76
    .catchall {:try_start_21 .. :try_end_76} :catchall_84

    :cond_76
    iget-object p1, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p2}, Lcom/oplus/channel/server/ClientProxyImpl;->encodeCommandsIfNeed(Z)V

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->clientPuller:Lcom/oplus/channel/server/IClientPuller;

    invoke-interface {p0, p2}, Lcom/oplus/channel/server/IClientPuller;->pullClient(Z)Z

    return-void

    :catchall_84
    move-exception p1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientProxyImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
