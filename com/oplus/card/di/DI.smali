.class public final Lcom/oplus/card/di/DI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DI.kt\ncom/oplus/card/di/DI\n+ 2 GlobalDI.kt\ncom/oplus/card/di/GlobalDI\n*L\n1#1,70:1\n72#2,8:71\n72#2,8:79\n72#2,8:87\n72#2,8:95\n72#2,8:103\n72#2,8:111\n*S KotlinDebug\n*F\n+ 1 DI.kt\ncom/oplus/card/di/DI\n*L\n42#1:71,8\n44#1:79,8\n45#1:87,8\n49#1:95,8\n50#1:103,8\n62#1:111,8\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/card/di/DI;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/di/DI;

    invoke-direct {v0}, Lcom/oplus/card/di/DI;-><init>()V

    sput-object v0, Lcom/oplus/card/di/DI;->INSTANCE:Lcom/oplus/card/di/DI;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final load()V
    .registers 11

    const-class p0, Lcom/oplus/card/pantanal/application/IPantanalCardService;

    const-class v0, Lcom/oplus/card/manager/domain/ICardManager;

    const-class v1, Lcom/oplus/card/manager/domain/ICardIdRepository;

    const-class v2, Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    const-class v3, Lcom/oplus/card/config/domain/ICardTypeRepository;

    sget-object v4, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    sget-object v5, Lcom/oplus/card/di/DI$load$1;->INSTANCE:Lcom/oplus/card/di/DI$load$1;

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    const-class v7, Landroid/content/Context;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Object of the same class type are injected"

    if-nez v6, :cond_109

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    const-class v8, Landroid/content/Context;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v8

    new-instance v9, Lcom/oplus/card/di/DI$load$$inlined$single$1;

    invoke-direct {v9, v5}, Lcom/oplus/card/di/DI$load$$inlined$single$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v9}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v5

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/oplus/card/di/DI$load$2;->INSTANCE:Lcom/oplus/card/di/DI$load$2;

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_103

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    new-instance v8, Lcom/oplus/card/di/DI$load$$inlined$single$2;

    invoke-direct {v8, v5}, Lcom/oplus/card/di/DI$load$$inlined$single$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v8}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v5

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/oplus/card/di/DI$load$3;->INSTANCE:Lcom/oplus/card/di/DI$load$3;

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_fd

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    new-instance v6, Lcom/oplus/card/di/DI$load$$inlined$single$3;

    invoke-direct {v6, v3}, Lcom/oplus/card/di/DI$load$$inlined$single$3;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v6}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/oplus/card/di/DI$load$4;->INSTANCE:Lcom/oplus/card/di/DI$load$4;

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_f7

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    new-instance v5, Lcom/oplus/card/di/DI$load$$inlined$single$4;

    invoke-direct {v5, v2}, Lcom/oplus/card/di/DI$load$$inlined$single$4;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v5}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/oplus/card/di/DI$load$5;->INSTANCE:Lcom/oplus/card/di/DI$load$5;

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f1

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    new-instance v3, Lcom/oplus/card/di/DI$load$$inlined$single$5;

    invoke-direct {v3, v1}, Lcom/oplus/card/di/DI$load$$inlined$single$5;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v3}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oplus/card/di/DI$load$6;->INSTANCE:Lcom/oplus/card/di/DI$load$6;

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_eb

    invoke-virtual {v4}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    new-instance v2, Lcom/oplus/card/di/DI$load$$inlined$single$6;

    invoke-direct {v2, v0}, Lcom/oplus/card/di/DI$load$$inlined$single$6;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_eb
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fd
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_103
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_109
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unload()V
    .registers 1

    sget-object p0, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {p0}, Lcom/oplus/card/di/GlobalDI;->destroy()V

    return-void
.end method
